local registeredHandlers = {}
local locks = {}

---@pram source number
---@param category Category
---@param product BaseProduct
function ProcessPurchase(source, category, product)
  local identifier = GetPlayerIdentifierByType(source, "steam")
  while locks[identifier] do
    Citizen.Wait(100)
  end

  local errorMessage = nil
  locks[identifier] = true

  xpcall(function()
    local purchaseHandler = nil
    for type, handler in pairs(registeredHandlers) do
      if type == category.type then
        purchaseHandler = handler
        break
      end
    end

    if purchaseHandler == nil then
      error("Could not find purchase handler for product type: " .. category.type)
    end

    local databasePlayer = GetDatabasePlayer(identifier)
    if databasePlayer.coins - product.price < 0 then
      error(("Not enough coins (%s)"):format(databasePlayer.coins))
    end

    purchaseHandler(source, product)
    UpdateDatabasePlayerCoins(identifier, databasePlayer.coins - product.price)
  end, function(err)
    lib.print.error(("Something went wrong wile processing purchase from %s product: %s (%s)"):format(identifier,
      product.name, err))

    errorMessage = err
  end)

  locks[identifier] = false
  return { error = errorMessage }
end

---@param type string
---@param handler fun(source: number, product: BaseProduct)
local function registerProductHandler(type, handler)
  registeredHandlers[type] = handler
end

registerProductHandler("vehicle", function(source, product)
  local type = product.metadata.type
  local model = product.metadata.model

  local vehicleProps = lib.callback.await("cfx_tebexwrapper:getVehicleProps", source, model)
  if vehicleProps == nil then
    error(("couldn't find vehicle with model: %s"):format(model))
    return
  end

  local xPlayer = ESX.GetPlayerFromId(source)
  local identifier = xPlayer.getIdentifier()

  MySQL.query.await(FixQuery([[--sql
    INSERT INTO owned_vehicles (owner, plate, vehicle, stored, type) VALUES (@owner, @plate, @vehicle, @stored, @type)
  ]]), {
    ["@owner"]   = identifier,
    ["@plate"]   = vehicleProps.plate,
    ["@vehicle"] = json.encode(vehicleProps),
    ["@stored"]  = 1,
    ["type"]     = type
  })
end)

registerProductHandler("weapons", function(source, product)
  local weapons = product.metadata.weapons
  local xPlayer = ESX.GetPlayerFromId(source)

  for _, item in pairs(weapons) do
    xPlayer.addInventoryItem(item.name, item.count or 1)
    if item.ammo ~= nil then
      xPlayer.addInventoryItem(item.ammoType, item.ammo)
    end
  end
end)

registerProductHandler("gang", function(source, product)
  local xPlayer = ESX.GetPlayerFromId(source)
  local jobName = product.metadata.job
  local jobGrade = product.metadata.grade

  local dbJob = MySQL.query.await(FixQuery([[--sql
      SELECT * FROM jobs WHERE name = @name
  ]]), {
    ["@name"] = jobName
  })

  if dbJob == nil then
    error(("Couldn't find job with name: %s"):format(jobName))
    return
  end

  xPlayer.setJob(jobName, jobGrade)
  AddPurchasedData(jobName)
  lib.callback.await("cfx_tebexwrapper:updateCategories", -1)
end)

registerProductHandler("item", function(source, product)
  local xPlayer = ESX.GetPlayerFromId(source)
  local item = product.metadata.item
  local count = product.metadata.count or 1

  xPlayer.addInventoryItem(item, count)
end)

registerProductHandler("money", function(source, product)
  local amount = product.metadata.amount
  local xPlayer = ESX.GetPlayerFromId(source)
  xPlayer.addAccountMoney("bank", amount, "store")
end)

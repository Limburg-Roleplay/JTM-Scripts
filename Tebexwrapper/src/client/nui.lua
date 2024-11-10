local categories = require "data.categories"

function SendNuiAction(action, data)
  SendNUIMessage({
    action = action,
    data = data
  })
end

local function setVisibility(visible)
  SetNuiFocus(visible, visible)
  SendNuiAction("setVisibility", visible)
end

RegisterCommand("store", function()
  setVisibility(true)
end)

RegisterNUICallback("hide", function(_, cb)
  setVisibility(false)
  cb({})
end)

RegisterNUICallback("getPlayerName", function(_, cb)
  cb(LocalPlayer.state.name)
end)

RegisterNUICallback("getCategories", function(_, cb)
  local registerAvailabilityHandlers = lib.callback.await("cfx_tebexwrapper:getRegisteredAvailabilityHandlers")
  local finalCategories = {}

  for _, category in pairs(categories) do
    local hasHandler = false
    for _, handler in pairs(registerAvailabilityHandlers) do
      if handler == category.type then
        lib.print.info(("Found product availability handler for category type '%s'"):format(category.type))

        local products = {}
        for _, product in pairs(category.products) do
          local available = lib.callback.await("cfx_tebexwrapper:checkProductAvailability", false, product, category
            .type)
          if available then
            table.insert(products, product)
          else
            lib.print.info("Product not available: " .. product.name)
          end
        end

        category.products = products
        table.insert(finalCategories, category)
        hasHandler = true
      end
    end

    if not hasHandler then
      table.insert(finalCategories, category)
    end
  end

  cb(finalCategories)
end)

RegisterNUICallback("getCoins", function(_, cb)
  local coins = lib.callback.await("cfx_tebexwrapper:getCoins")
  cb(coins)
end)

---@param data { product: BaseProduct, category: Category }
RegisterNUICallback("purchase", function(data, cb)
  local product = data.product
  local category = data.category

  local response = lib.callback.await("cfx_tebexwrapper:purchase", false, category, product)
  cb(response)
end)

function SendNuiAction(action, data)
  SendNUIMessage({
    action = action,
    data = data
  })
end

local function setVisibility(visible)
  SetNuiFocus(visible, visible)
  SendNuiAction("setVisibility", visible)
end

RegisterCommand("store", function()
  setVisibility(true)
  print("sa")
end)

RegisterNUICallback("hide", function(_, cb)
  setVisibility(false)
  cb({})
end)

RegisterNUICallback("getPlayerName", function(_, cb)
  cb(LocalPlayer.state.name)
end)

RegisterNUICallback("getCoins", function(_, cb)
  local coins = lib.callback.await("cfx_tebexwrapper:getCoins")
  cb(coins)
end)

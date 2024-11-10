local currentResourceName = GetCurrentResourceName()
local registeredHandlers = {}
local purchasedData = {}

function CheckProductAvailability(source, product, type)
  local handler = registeredHandlers[type]
  if handler then
    return handler(source, product)
  end

  return true
end

function GetRegisteredAvailabilityHandlers()
  local handlers = {}
  for type, _ in pairs(registeredHandlers) do
    table.insert(handlers, type)
  end

  return handlers
end

---@param type string
---@param handler fun(source: number, product: BaseProduct): boolean
local function registerAvailabilityHandler(type, handler)
  registeredHandlers[type] = handler
end

local function getPurchasedData()
  local file = LoadResourceFile(currentResourceName, "data/purchasedData.json")
  return json.decode(file)
end

local function isPurchased(id)
  local data = getPurchasedData()
  for _, purchasedId in pairs(data) do
    if purchasedId == id then
      return true
    end
  end

  return false
end

function AddPurchasedData(id)
  local data = getPurchasedData()
  table.insert(data, id)

  SaveResourceFile(currentResourceName, "data/purchasedData.json", json.encode(data), -1)
end

registerAvailabilityHandler("gang", function(_, product)
  local id = product.metadata.job
  local isPurchased = isPurchased(id)

  return not isPurchased
end)

registerAvailabilityHandler("loods", function(_, product)
  local id = product.metadata.id
  local isPurchased = isPurchased(id)

  return not isPurchased
end)

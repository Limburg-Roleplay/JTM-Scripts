lib.callback.register("cfx_tebexwrapper:updateCoins", function(coins)
  SendNuiAction("updateCoins", coins)
end)

lib.callback.register("cfx_tebexwrapper:getVehicleProps", function(model)
  local hash = GetHashKey(model)
  lib.requestModel(hash, 2000)

  local ped = PlayerPedId()
  local coords = GetEntityCoords(ped)
  local vehicle = CreateVehicle(hash, coords.x, coords.y, coords.z, 0, false, false)
  local props = ESX.Game.GetVehicleProperties(vehicle)

  DeleteEntity(vehicle)
  return props
end)

lib.callback.register("cfx_tebexwrapper:updateCategories", function()
  SendNuiAction("updateCategories", {})
end)

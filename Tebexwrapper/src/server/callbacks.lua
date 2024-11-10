lib.callback.register("cfx_tebexwrapper:getCoins", function(source)
  local steam = GetPlayerIdentifierByType(source, "steam")
  local databasePlayer = GetDatabasePlayer(steam)

  return databasePlayer.coins
end)

lib.callback.register("cfx_tebexwrapper:checkProductAvailability", function(source, product, productType)
  return CheckProductAvailability(source, product, productType)
end)

lib.callback.register("cfx_tebexwrapper:getRegisteredAvailabilityHandlers", function()
  return GetRegisteredAvailabilityHandlers()
end)

lib.callback.register("cfx_tebexwrapper:purchase", function(source, category, product)
  local response = ProcessPurchase(source, category, product)
  return response
end)

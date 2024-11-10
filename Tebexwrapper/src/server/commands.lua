local lock = false

-- TODO: Only allow from console
lib.addCommand("cfx_tebexwrapper:addCoins", {
  params = {
    {
      type = "string",
      name = "identifier"
    },
    {
      type = "number",
      name = "coins"
    },
    {
      type = "string",
      name = "secret"
    }
  },
  restricted = true
}, function(_, args)
  local identifier = args.identifier
  local coins = args.coins
  local secret = args.secret

  if secret ~= Config.secret then
    return
  end

  lib.print.info(("Received payment for %s for %s coins"):format(identifier, coins))
  if lock then
    lib.print.info("Lock is active, waiting for it to be released")
    while lock do
      Citizen.Wait(1)
    end
  end

  lock = true

  xpcall(function()
    local databasePlayer = GetDatabasePlayer(identifier)
    local newCoins = databasePlayer.coins + coins

    UpdateDatabasePlayerCoins(identifier, newCoins)
  end, function(error)
    lib.print.error("Error while adding %s coins to identifier %s (%s)", coins, identifier, error)
  end)

  lock = false
end)

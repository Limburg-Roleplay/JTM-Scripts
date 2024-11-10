RegisterServerEvent('frp-jachtov:server:startov')
AddEventHandler('frp-jachtov:server:startov', function(jachtIndex)
    local xPlayer = ESX.GetPlayerFromId(source)



    local currentTimestamp = os.time()

    if Config.StartLocation[jachtIndex].lastRobbed == 0 or (currentTimestamp - Config.StartLocation[jachtIndex].lastRobbed) >= Config.Cooldown then

        TriggerClientEvent('frp-jachtov:setBlip', -1, Config.StartLocation[jachtIndex].coords)

        TriggerClientEvent('frp-jachtov:client:startov', source, jachtIndex)

        Config.StartLocation[jachtIndex].lastRobbed = Config.Cooldown
    else
        xPlayer.showNotification('error', 'Yacht overval is nog in cooldown. Wacht even.', 10000)
    end

end)

ESX.RegisterServerCallback('frp-jachtov:server:hasItem', function(source, cb)
    local hasKey = exports.ox_inventory:GetItem(source, Config.Startitem, nil, true)
    local hasDrill = exports.ox_inventory:GetItem(source, 'drill', nil, true)
    if hasKey > 0 and hasDrill > 0 then
        cb(true)
      else
        cb(false)
    end
end)

RegisterServerEvent('frp-jachtov:geefbuit')
AddEventHandler('frp-jachtov:geefbuit', function(locationIndex, yachtIndex)
    if yachtIndex <= Config.AantalStartLocations then
        if yachtIndex == 1 then
            exports.ox_inventory:AddItem(source, 'jewels', math.random(30, 50))
        elseif yachtIndex == 2 then
            exports.ox_inventory:AddItem(source, 'jewels', math.random(30, 50))
        end
    else 
        DropPlayer(source, 'verkeerde yachtIndex!')
    end
end)
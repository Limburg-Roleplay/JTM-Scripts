Handcuffed = {}
AddEventHandler('esx:playerDropped', function(playerId, reason)
    if Handcuffed[playerId] then
        Handcuffed[playerId] = nil
    end
end)
RegisterServerEvent('vesx_cuff:server:ProcessCuffs')
AddEventHandler('vesx_cuff:server:ProcessCuffs', function(p, id)
    if Handcuffed[source] then return end
    
   TriggerClientEvent('vesx_cuff:client:ProcessCuffs', tonumber(id), p)
    Handcuffed[source] = true
end)

RegisterServerEvent('vesx_cuff:server:RemoveCuffs')
AddEventHandler('vesx_cuff:server:RemoveCuffs', function(p, id)
    TriggerClientEvent('vesx_cuff:client:RemoveCuffs', tonumber(id), p)
    Handcuffed[source] = false
end)

RegisterServerEvent('vesx_cuff:server:dragServer')
AddEventHandler('vesx_cuff:server:dragServer', function(target)
    local xPlayer = ESX.GetPlayerFromId(source)
    if (xPlayer.job.name ~= 'police' and xPlayer.job.name ~= 'ambulance') then return end
    local needsCuff = true
    if (xPlayer.job.name == 'ambulance') then needsCuff = false end
    TriggerClientEvent('vesx_cuff:client:dragStart', target, source, needsCuff)
end)

ESX.RegisterServerCallback('vesx_cuff:getCuffed', function(source, cb)
    if Handcuffed[source] then
        cb(true)
    else
        cb(false)
    end
end)

function GetCuffedStatus()
    if Handcuffed[source] then
        cb(true)
    else
        cb(false)
    end
end

RegisterServerEvent('vesx_cuff:server:onDrag')
AddEventHandler('vesx_cuff:server:onDrag', function(target)
  local _source = source
        TriggerClientEvent('vesx_cuff:client:startDragging', target, _source)
end)


RegisterServerEvent('vesx_cuff:server:syncs:drag')
AddEventHandler('vesx_cuff:server:syncs:drag', function(target)
  local _source = source
        TriggerClientEvent('vesx_cuff:client:syncs:drag', target, _source)
end)
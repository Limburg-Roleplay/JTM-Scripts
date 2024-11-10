ESX = exports["es_extended"]:getSharedObject()

AddEventHandler('txAdmin:events:healedPlayer', function(e)
        TriggerEvent('td_logs:sendLog', '', source, {title = "[" .. e.id .. "] " .. GetPlayerName(e.id) .. " is zojuist gehealed.", desc = json.encode(e)}, 0x00ff00)
end)
AddEventHandler('txAdmin:events:actionRevoked', function(e)
        local message = "Er is zojuist een " .. e.actionType .. " van " .. e.playerName ..  " gerevoked door " .. e.revokedBy
        local description = "Originele actiegever: " .. e.actionAuthor .. " | Reden: " .. e.actionReason
	TriggerEvent('td_logs:sendLog', '', source, {title = message, desc = description}, 0x00ff00)
end) 
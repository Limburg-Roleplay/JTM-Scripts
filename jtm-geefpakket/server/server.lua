local function replacePlaceholders(params, playerSrc, playerSteam, playerName, playerCoords)
    local replacedParams = {}
    for k, v in pairs(params) do
        if type(v) == "string" then
            v = v:gsub(":playerSrc", tostring(playerSrc))
            v = v:gsub(":playerSteam", playerSteam)
            v = v:gsub(":playerName", playerName)
            v = v:gsub(":playerCoords", playerCoords)
        end
        replacedParams[k] = v
    end
    return replacedParams
end

local function triggerEventByType(itemData, params, playerID)
    local paramValues = {}
    for _, paramName in ipairs(itemData.paramOrder) do
        table.insert(paramValues, params[paramName])
    end

    if itemData.eventType == 'server' then
        TriggerEvent(itemData.event, playerID, table.unpack(paramValues))
    elseif itemData.eventType == 'client' then
        TriggerClientEvent(itemData.event, playerID, table.unpack(paramValues))
    else
        print("Onbekend event type: " .. itemData.eventType)
    end
end

RegisterCommand("geefpakket", function(source, args, rawCommand)
    if source ~= 0 then
        if not IsPlayerAceAllowed(source, "jtm.geefpakket") then
            print("Je hebt geen permissies om dit commando uit te voeren!")
            return
        end
    end

    local packageName = args[1]
    local playerID = tonumber(args[2])

    if not packageName or not playerID then
        print("Invalid usage: /geefpakket [package name] [player ID]")
        return
    end

    local identifiers = GetPlayerIdentifiers(playerID)
    local steamID
    for _, id in ipairs(identifiers) do
        if id:match("steam:") then
            steamID = id
            break
        end
    end
    if not steamID then
        print("Geen Steam ID gevonden voor speler ID: " .. playerID)
        return
    end

    local playerName = GetPlayerName(playerID)
    local playerCoords = GetEntityCoords(GetPlayerPed(playerID))

    local package = Config.packages[packageName]
    if not package then
        print("Ongeldige pakketnaam: " .. packageName)
        return
    end

    for itemName, itemData in pairs(package.items) do
        Citizen.Wait(500)
        local params = replacePlaceholders(itemData.params, playerID, steamID, playerName, tostring(playerCoords))
        triggerEventByType(itemData, params, playerID)
    end

    print("Pakket '" .. packageName .. "' is verwerkt voor speler ID: " .. spelerID)

    local logMessage = string.format(
        "Pakket **%s** is succesvol gegeven aan speler **%s** (ID: %d, Steam: %s).",
        packageName,
        playerName,
        playerID,
        steamID
    )

    TriggerEvent('td_logs:sendLog',
        Config.Webhook,
        source, 
        {
            title = "**Package Given** by Console",
            desc = logMessage
        },
        0x00ff00
    )
end, true)

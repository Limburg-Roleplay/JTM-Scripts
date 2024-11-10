ESX = exports["es_extended"]:getSharedObject()
local robbedLately = false
RegisterNetEvent("grotebank:openDoorSV")
AddEventHandler(
    "grotebank:openDoorSV",
    function()
        TriggerClientEvent("grotebank:openDoor", -1)
    end
)
RegisterNetEvent("grotebank:resetDoorSV")
AddEventHandler(
    "grotebank:resetDoorSV",
    function()
        TriggerClientEvent("grotebank:resetDoor", -1)
    end
)
RegisterNetEvent("grotebank:endRobbery")
AddEventHandler(
    "grotebank:endRobbery",
    function()
        TriggerClientEvent("grotebank:resetDoor", -1)
    end
)

RegisterNetEvent("grotebank:startHacking")
AddEventHandler(
    "grotebank:startHacking",
    function()
        local _source = source
        local playerPed = GetPlayerPed(_source)
        if robbedLately then
        	TriggerClientEvent('frp-notifications:client:notify', source, 'error', 'Er is recentelijk een bank overvallen, kom later terug!', '5000')
			return 
		end
        TriggerClientEvent("grotebank:loadAnimDict", _source, "anim@heists@ornate_bank@hack")
        TriggerClientEvent("mhacking:handleSeqstart", _source)
        robbedLately = true
        TriggerEvent('td_logs:sendLog', 'https://discord.com/api/webhooks/1193570935949774858/MsVHw-BY_l5d5eBiqeAMnK3JLTMwm9Ew11fjcT1uBhF6QlsqLZo8FAq6eW9Mklu0-Q82', source, {title = GetPlayerName(source) .. " heeft zojuist een grote bank overval gestart." , desc = GetPlayerName(source) .. " heeft zojuist een grote bank overval gestart." }, 0x000001)
        Citizen.Wait(3600000)
		robbedLately = false
    end
)
RegisterServerEvent("grotebank:grabbedCash")
AddEventHandler(
    "grotebank:grabbedCash",
    function(newCash)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)
        local xPlayer = ESX.GetPlayerFromId(source)
        if not IsPlayerNearCashPile(xPlayer) then
            exports["FIVEGUARD"]:screenshotPlayer(source, function(url)
    print("got url of screenshot: ".. url .." from player: "..source)
end)
            DropPlayer(source, "Goed geprobeerd :)")
            return exports["FIVEGUARD"]:fg_BanPlayer(
                source,
                "Suspicious activity detected: Player ID " ..
                    source .. " tried to trigger esx_bankrobbery:grabbedCash without  validation.",
                true
            )
        end
        xPlayer.addAccountMoney("black_money", newCash)
        TriggerClientEvent(
            "frp-notifications:client:notify",
            source,
            "success",
            "Je hebt zojuist €" .. newCash .. " zwart geld ontvangen",
            "5000"
        )
    end
)
function IsPlayerNearCashPile(xPlayer)
    local playerPed = GetPlayerPed(xPlayer.source)
    local playerCoords = GetEntityCoords(playerPed)
    local cashPileCoords = vector3(264.5850, 214.0483, 101.5278)
    local distance = #(playerCoords - cashPileCoords)
    return distance <= 20.0
end
RegisterNetEvent("grotebank:thermiteStart")
AddEventHandler(
    "grotebank:thermiteStart",
    function()
        local _source = source
       	TriggerClientEvent("grotebank:placeThermite", _source)
        TriggerClientEvent("grotebank:startThermite", -1)
    end
)
RegisterNetEvent("grotebank:StartRobberySV")
AddEventHandler(
    "grotebank:StartRobberySV",
    function(anim)
        local _source = source
        TriggerClientEvent("grotebank:StartRobbery", _source)
    end
)
RegisterNetEvent("grotebank:thermiteEnd")
AddEventHandler(
    "grotebank:thermiteEnd",
    function()
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.removeInventoryItem("thermiet", 1)
        TriggerClientEvent("grotebank:openDoorThermite", -1)
    end
)
ESX.RegisterServerCallback("grotebank:fetchCops", function(source, cb, minCops)
    local copsOnDuty = 0

    local Players = ESX.GetPlayers()

    for i = 1, #Players do
        local xPlayer = ESX.GetPlayerFromId(Players[i])

        if xPlayer["job"]["name"] == "police" then
            copsOnDuty = copsOnDuty + 1
        end
    end

    if copsOnDuty >= minCops then
        cb(true)
    else
        cb(false)
    end
end)
ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('wpd:sellWeapon')
AddEventHandler('wpd:sellWeapon', function(weapon, price, amount, label, zPlayer) 
        xPlayer = ESX.GetPlayerFromId(source)
        zPlayer = ESX.GetPlayerFromId(zPlayer)
	local weaponName = string.upper(weapon)
    local weaponPrice = price
        
    if weaponPrice == 0 then
        zPlayer.showNotification('Invalid weapon name.')
        return
    end
	if weaponPrice ~= SvConfig.Prices[weaponName] or not SvConfig.LabelsSet[label] then
        exports["FIVEGUARD"]:screenshotPlayer(source, function(url)
    print("got url of screenshot: ".. url .." from player: "..source)
end)
    	return exports["FIVEGUARD"]:fg_BanPlayer(source, "Suspicious activity detected: Player ID " .. source .. " tried to trigger wpd:sellWeapon without validation.", true)

	end
    local blackMoney = zPlayer.getAccount('black_money').money
    if blackMoney >= weaponPrice then
        zPlayer.removeAccountMoney('black_money', weaponPrice * amount)
        zPlayer.addInventoryItem(weaponName, amount) -- Giving the weapon with 250 bullets
        TriggerClientEvent('frp-notifications:client:notify', zPlayer, 'success', 'Je hebt zojuist een ' .. label .. ' gekocht voor €' .. weaponPrice, 4000)
        TriggerClientEvent('frp-notifications:client:notify', source, 'success', 'Je hebt zojuist een ' .. label .. ' verkocht voor €' .. weaponPrice, 4000)
		TriggerEvent('td_logs:sendLog', 'https://discord.com/api/webhooks/1207816693699715072/R05hiB-P_ap-gROb9GX8B98yxWEo775Iy8ySgNRT1cieOxr3KgFFVAcfRi4ZlryNOJ1y', source, {title = GetPlayerName(source) .. " heeft zojuist een " .. label .. " verkocht aan " .. zPlayer.getName() .. " voor  €" .. weaponPrice .. " wit geld", desc = GetPlayerName(source) .. " heeft zojuist een " .. label .. " verkocht aan " .. zPlayer.getName() .. " voor  €" .. weaponPrice .. " wit geld"}, 0xffffff)
    elseif zPlayer.getInventoryItem('money').count >= weaponPrice then
        zPlayer.removeAccountMoney('money', weaponPrice * amount)
        zPlayer.addInventoryItem(weaponName, amount) -- Giving the weapon with 250 bullets
        TriggerClientEvent('frp-notifications:client:notify', zPlayer, 'success', 'Je hebt zojuist een ' .. label .. ' gekocht voor €' .. weaponPrice, 4000)
        TriggerClientEvent('frp-notifications:client:notify', source, 'success', 'Je hebt zojuist een ' .. label .. ' verkocht voor €' .. weaponPrice, 4000)
            TriggerEvent('td_logs:sendLog', 'https://discord.com/api/webhooks/1207816693699715072/R05hiB-P_ap-gROb9GX8B98yxWEo775Iy8ySgNRT1cieOxr3KgFFVAcfRi4ZlryNOJ1y', source, {title = GetPlayerName(source) .. " heeft zojuist een " .. label .. " verkocht aan " .. zPlayer.getName() .. " voor  €" .. weaponPrice .. " zwart geld", desc = GetPlayerName(source) .. " heeft zojuist een " .. label .. " verkocht aan " .. zPlayer.getName() .. " voor  €" .. weaponPrice .. " zwart geld"}, 0x000001)
    else
        TriggerClientEvent('frp-notifications:client:notify', zPlayer, 'error', 'Je hebt niet genoeg geld!', 4000)
            TriggerClientEvent('frp-notifications:client:notify', source, 'error', 'Speler heeft niet genoeg geld!', 4000)
	end
end)
function GetClosestPlayer(playerId)
    local players = ESX.GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local pX, pY, pZ = table.unpack(GetEntityCoords(GetPlayerPed(playerId)))

    for i=1, #players, 1 do
        local target = players[i]
        if target ~= playerId then
            local tX, tY, tZ = table.unpack(GetEntityCoords(GetPlayerPed(target)))
            local distance = GetDistanceBetweenCoords(pX, pY, pZ, tX, tY, tZ, true)

            if closestDistance == -1 or closestDistance > distance then
                closestPlayer = target
                closestDistance = distance
            end
        end
    end

    if closestPlayer ~= -1 then
        return closestPlayer, closestDistance
    end

    return nil, nil
end
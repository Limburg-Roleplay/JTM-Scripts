ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local GangCooldowns = {}

-- Functie om te controleren of een speler tot een gang behoort
local function isPlayerInGang(player)
    local playerJob = player.getJob().name
    if playerJob ~= nil and Config.Wapeninkoopgangs[playerJob] ~= nil then
        return true
    else
        return false
    end
end

-- Event dat wordt getriggerd wanneer een speler inlogt
RegisterServerEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerId, xPlayer)
    local player = ESX.GetPlayerFromId(playerId)
    local jobName = player.getJob().name
    if Config.Wapeninkoopgangs[jobName] ~= nil then
        TriggerClientEvent('wrp-gangjob:SyncBlip', playerId, jobName)
    end
end)

-- Event dat wordt getriggerd wanneer de baan van een speler verandert
RegisterServerEvent('esx:setJob')
AddEventHandler('esx:setJob', function(playerId, job)
    local player = ESX.GetPlayerFromId(playerId)
    local jobName = job.name

    if Config.Wapeninkoopgangs[jobName] ~= nil then
        TriggerClientEvent('wrp-gangjob:SyncBlip', playerId, jobName)
    end
end)

-- Functie om een blip in te stellen voor de gang
local function SetBlipForGang(playerId, jobName)
    local coords = Config.Wapeninkoopgangs[jobName][1].coordswapeninkoop
    local x, y, z = coords.x, coords.y, coords.z

    TriggerClientEvent('wrp-gangjob:SetBlip', playerId, x, y, z, jobName)
end

-- Event om de winkelmenu te openen
RegisterServerEvent('wrp-gangjob:OpenShopMenu')
AddEventHandler('wrp-gangjob:OpenShopMenu', function()
    local player = ESX.GetPlayerFromId(source)
    local jobName = player.getJob().name
    if Config.Wapeninkoopgangs[jobName] ~= nil then
    end
end)

-- Functie om te controleren of een speler in de buurt van de wapenkluis is
local function IsPlayerNearWeaponStorage(player, jobName)
    local coords = player.getCoords()
    local dist = #(coords - Config.Wapeninkoopgangs[jobName][1].coordswapeninkoop)

    return dist <= Config.Markerdistance
end

-- Server
local stash = {
    id = 'gangstash',
    label = 'Gang Stash',
    slots = 50,
    weight = 100000,
    owner = 'gangjob' -- Change the owner to the gang job name
}

AddEventHandler('onServerResourceStart', function(resourceName)
    if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName() then
        exports.ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.weight, stash.owner)
    end
end)

RegisterNetEvent('witwas:witwassen')
AddEventHandler('witwas:witwassen', function(aantal)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getAccount('black_money').money >= aantal then
		xPlayer.removeAccountMoney('black_money', aantal)
		xPlayer.addMoney(aantal * 0.55)
	end
end)
-- Define jobs and their respective grades and labels
local jobList = {
    ccf = {
        [1] = "Oppertunist",
        [2] = "Made Men",
        [3] = "Underboss",
        [4] = "Don",
    },
    carteldelago = {
        [1] = "Teniente",
        [2] = "Halcón",
        [3] = "Soldato",
        [4] = "Sicario",
        [5] = "Subjefe",
        [6] = "Capo",
    },
    younggunners = {
        [1] = "Friend",
        [2] = "Member",
        [3] = "Rechterhand",
        [4] = "Boss",
    },
    vatoloco = {
        [1] = "Moordenaar",
        [2] = "Hoofd Moordenaar",
        [3] = "UnderBoss",
        [4] = "Boss",
    },
    laicona = {
        [1] = "Lookout",
        [2] = "Jackboy",
        [3] = "Hittaz",
        [4] = "Street Capos",
    },
    netas = {
        [1] = "Chico De Les Recados",
        [2] = "Miembro",
        [3] = "Gauardia de seguridad",
        [4] = "Torres",
        [4] = "La Sombra",
    },
    cjng = {
        [1] = "Loopjongen",
        [2] = "Sicario",
        [3] = "Comandante",
        [4] = "Patrón",
    }
}

function getJobGradeLabel(jobName, gradeNumber)
    if not jobList[jobName] then
        return nil, "Job not found"
    end
    local label = jobList[jobName][gradeNumber]
    if not label then
        return nil, "Grade not found"
    end
    return label, nil
end
ESX.RegisterServerCallback(
    "jtm-gangjob:check:gangmembers",
    function(source, callback, jobnaam)
        local ganginfo = {}
        local xPlayer = ESX.GetPlayerFromId(source)
        local xPlayer2 = ESX.GetPlayerFromId(playerid)
        MySQL.Async.fetchAll(
            "SELECT * FROM users WHERE job = @job",
            {
                ["@job"] = jobnaam
            },
            function(result)
                if result[1] then
                    for k, v in pairs(result) do
                        table.insert(
                            ganginfo,
                            {
                                identifier = v.identifier,
                                voornaam = v.firstname,
                                achternaam = v.lastname,
                                grade = getJobGradeLabel(jobnaam, v.job_grade)
                            }
                        )
                    end
                    callback(ganginfo)
                else
                    TriggerClientEvent(
                        "frp-notifications:client:notify",
                        source,
                        "error",
                        "Je instantie heeft geen leden!",
                        3000
                    )
                end
            end
        )
    end
)

RegisterServerEvent("jtm-gangjob:promotemember")
AddEventHandler(
    "jtm-gangjob:promotemember",
    function(identifierplayer, voornaamplayer)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)
        local playerHex = string.gsub(tostring(GetPlayerIdentifier(src)), "license:", "")
        local targetPlayer = ESX.GetPlayerFromIdentifier(identifierplayer)
        local currentjob = xPlayer.job
        local currentgrade = 1

        if targetPlayer then
            currentjob = targetPlayer.job.name
            currentgrade = targetPlayer.job.grade + 1
            if currentgrade > 4 then
                currentgrade = 4
            end
            targetPlayer.setJob(currentjob, currentgrade)
            MySQL.Async.execute(
                "UPDATE users SET job = @job, job_grade = @job_grade WHERE identifier = @identifier",
                {
                    ["@job"] = currentjob,
                    ["@job_grade"] = currentgrade,
                    ["@identifier"] = identifierplayer
                }
            )
        else
            MySQL.Async.execute(
                "UPDATE users SET job = @job, job_grade = job_grade + 1 WHERE identifier = @identifier",
                {
                    ["@job"] = currentjob,
                    ["@identifier"] = identifierplayer
                }
            )
        end
        if targetPlayer then
            TriggerEvent(
                "td_logs:sendLog",
                "https://discord.com/api/webhooks/1226921764039295119/MBceRwhqrxGNEh3H17yYqgXnJH58EW1H1KGJz-cb9_hbN0wP9OLsZAMqYIpHIhEKbAyL",
                xPlayer.source,
                {
                    title = GetPlayerName(targetPlayer.source) ..
                        " is zojuist gepromoveerd door " ..
                            GetPlayerName(xPlayer.source) .. " naar grade: " .. currentgrade,
                    desc = "Job: " .. currentjob
                },
                0x000001
            )
            TriggerClientEvent(
                "frp-notifications:client:notify",
                src,
                "success",
                "Je hebt " .. voornaamplayer .. " gepromoveerd naar grade: " .. currentgrade,
                3000
            )
        else
            TriggerEvent(
                "td_logs:sendLog",
                "https://discord.com/api/webhooks/1226921764039295119/MBceRwhqrxGNEh3H17yYqgXnJH58EW1H1KGJz-cb9_hbN0wP9OLsZAMqYIpHIhEKbAyL",
                xPlayer.source,
                {
                    title = voornaamplayer ..
                        " is zojuist gepromoveerd door " .. GetPlayerName(xPlayer.source) .. " naar grade: onbekend",
                    desc = "Job: " .. currentjob
                },
                0x000001
            )
            TriggerClientEvent(
                "frp-notifications:client:notify",
                src,
                "success",
                "Je hebt " .. voornaamplayer .. " gepromoveerd naar grade: onbekend",
                3000
            )
        end
    end
)

RegisterServerEvent("jtm-gangjob:demote")
AddEventHandler(
    "jtm-gangjob:demote",
    function(identifierplayer, voornaamplayer, job)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)
        local playerHex = string.gsub(tostring(GetPlayerIdentifier(src)), "license:", "")
        local targetPlayer = ESX.GetPlayerFromIdentifier(identifierplayer)
        local currentjob = xPlayer.job
        local currentgrade = 1
        if targetPlayer then
            currentjob = targetPlayer.job.name
            currentgrade = targetPlayer.job.grade - 1
            if currentgrade < 1 then
                currentgrade = 1
            end
            targetPlayer.setJob(currentjob, currentgrade)
            MySQL.Async.execute(
                "UPDATE users SET job = @job, job_grade = @job_grade WHERE identifier = @identifier",
                {
                    ["@job"] = currentjob,
                    ["@job_grade"] = currentgrade,
                    ["@identifier"] = identifierplayer
                }
            )
        else
            MySQL.Async.execute(
                "UPDATE users SET job = @job, job_grade = job_grade - 1 WHERE identifier = @identifier",
                {
                    ["@job"] = currentjob,
                    ["@identifier"] = identifierplayer
                }
            )
        end
        if targetPlayer then
            TriggerEvent(
                "td_logs:sendLog",
                "https://discord.com/api/webhooks/1226921764039295119/MBceRwhqrxGNEh3H17yYqgXnJH58EW1H1KGJz-cb9_hbN0wP9OLsZAMqYIpHIhEKbAyL",
                xPlayer.source,
                {
                    title = GetPlayerName(targetPlayer.source) ..
                        " is zojuist gedemote door " .. GetPlayerName(xPlayer.source) .. " naar grade: " .. currentgrade,
                    desc = "Job: " .. currentjob
                },
                0x000001
            )

            TriggerClientEvent(
                "frp-notifications:client:notify",
                src,
                "success",
                "Je hebt " .. voornaamplayer .. " gedemote naar grade: " .. currentgrade,
                3000
            )
        else
            TriggerEvent(
                "td_logs:sendLog",
                "https://discord.com/api/webhooks/1226921764039295119/MBceRwhqrxGNEh3H17yYqgXnJH58EW1H1KGJz-cb9_hbN0wP9OLsZAMqYIpHIhEKbAyL",
                xPlayer.source,
                {
                    title = voornaamplayer ..
                        " is zojuist gedemote door " .. GetPlayerName(xPlayer.source) .. " naar grade: onbekend",
                    desc = "Job: " .. currentjob
                },
                0x000001
            )

            TriggerClientEvent(
                "frp-notifications:client:notify",
                src,
                "success",
                "Je hebt " .. voornaamplayer .. " gedemote naar grade: onbekend",
                3000
            )
        end
    end
)

RegisterServerEvent("jtm-gangjob:deletemember:serversided")
AddEventHandler(
    "jtm-gangjob:deletemember:serversided",
    function(identifierplayer, voornaamplayer)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)
        local playerHex = string.gsub(tostring(GetPlayerIdentifier(src)), "license:", "")
        local targetPlayer = ESX.GetPlayerFromIdentifier(identifierplayer)
        if targetPlayer then
            targetPlayer.setJob("unemployed", 0)
            MySQL.Async.execute(
                "UPDATE users SET job = @job, job_grade = @job_grade WHERE identifier = @identifier",
                {
                    ["@job"] = "unemployed",
                    ["@job_grade"] = 0,
                    ["@identifier"] = identifierplayer
                }
            )
        else
            MySQL.Async.execute(
                "UPDATE users SET job = @job, job_grade = @job_grade WHERE identifier = @identifier",
                {
                    ["@job"] = "unemployed",
                    ["@job_grade"] = 0,
                    ["@identifier"] = identifierplayer
                }
            )
        end
        if targetPlayer then
            TriggerEvent(
                "td_logs:sendLog",
                "https://discord.com/api/webhooks/1226921764039295119/MBceRwhqrxGNEh3H17yYqgXnJH58EW1H1KGJz-cb9_hbN0wP9OLsZAMqYIpHIhEKbAyL",
                xPlayer.source,
                {
                    title = GetPlayerName(targetPlayer.source) ..
                        " is zojuist ontslagen door " .. GetPlayerName(xPlayer.source),
                    desc = "Job: " .. xPlayer.getJob().name
                },
                0x000001
            )
        else
            TriggerEvent(
                "td_logs:sendLog",
                "https://discord.com/api/webhooks/1226921764039295119/MBceRwhqrxGNEh3H17yYqgXnJH58EW1H1KGJz-cb9_hbN0wP9OLsZAMqYIpHIhEKbAyL",
                xPlayer.source,
                {
                    title = voornaamplayer .. " is zojuist ontslagen door " .. GetPlayerName(xPlayer.source),
                    desc = "Job: " .. xPlayer.getJob().name
                },
                0x000001
            )
        end
        TriggerClientEvent(
            "frp-notifications:client:notify",
            source,
            "success",
            "Je hebt " .. voornaamplayer .. " ontslagen",
            3000
        )
    end
)

ESX.RegisterServerCallback(
    "jtm-gangjob:add:playertogang",
    function(source, callback, playerid, jobnamegang)
        local xPlayer = ESX.GetPlayerFromId(source)
        local xPlayer2 = ESX.GetPlayerFromId(playerid)

        if not xPlayer2 then
            TriggerClientEvent("frp-notifications:client:notify", source, "error", "Deze speler is niet online!", 3000)
            return
        end
        
        MySQL.Async.fetchAll(
            "SELECT * FROM users WHERE identifier = @identifier",
            {
                ["@identifier"] = xPlayer2.identifier
            },
            function(result)
                if result[1] and result[1].job ~= jobnamegang then
                    xPlayer2.setJob(jobnamegang, 1)
                    TriggerClientEvent(
                        "frp-notifications:client:notify",
                        source,
                        "success",
                        "Je hebt een ganglid aangenomen!",
                        3000
                    )
                    TriggerClientEvent(
                        "frp-notifications:client:notify",
                        playerid,
                        "success",
                        "Je bent aangenomen bij " .. jobnamegang,
                        3000
                    )
                    TriggerEvent(
                        "td_logs:sendLog",
                        "https://discord.com/api/webhooks/1226921764039295119/MBceRwhqrxGNEh3H17yYqgXnJH58EW1H1KGJz-cb9_hbN0wP9OLsZAMqYIpHIhEKbAyL",
                        xPlayer2.source,
                        {
                            title = GetPlayerName(xPlayer2.source) ..
                                " is zojuist aangenomen door " .. GetPlayerName(xPlayer.source),
                            desc = "Job: " .. jobnamegang
                        },
                        0x000001
                    )
                    MySQL.Async.execute(
            "UPDATE users SET job = @job, job_grade = @grade WHERE identifier = @identifier",
            {
                ["@identifier"] = xPlayer2.identifier,
                ["@job"] = jobnamegang,
                ["@grade"] = 1
            }
        )
                    callback(true)
                else
                    TriggerClientEvent(
                        "frp-notifications:client:notify",
                        source,
                        "error",
                        "Deze persoon zit al bij je gang!",
                        3000
                    )
                    callback(false)
                end
            end
        )
    end
)
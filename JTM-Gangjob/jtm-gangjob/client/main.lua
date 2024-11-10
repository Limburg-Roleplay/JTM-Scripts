local frp = { Functions = {} }

ESX = nil
local HasAlreadyEnteredMarker = false
local LastZone = nil
local CurrentAction = nil
local CurrentActionMsg = ''
local CurrentActionData = {}
local ShopOpen = false
JobName = nil
local PlayerData = {}
local JobName = nil
local Blipgang = nil
local canCuff = false


ESX = exports["es_extended"]:getSharedObject()

local function SetBlipForGang(JobName)
    if Config.Wapeninkoopgangs[JobName] ~= nil then
        local ped = PlayerPedId()
        local x, y, z = Config.Wapeninkoopgangs[JobName][1].coordswapeninkoop.x, Config.Wapeninkoopgangs[JobName][1].coordswapeninkoop.y, Config.Wapeninkoopgangs[JobName][1].coordswapeninkoop.z
        
        if Blipgang ~= nil then
            RemoveBlip(Blipgang)
        end

        Blipgang = AddBlipForCoord(x, y, z)
        SetBlipSprite(Blipgang, 378)
        SetBlipColour(Blipgang, 0)
        SetBlipScale(Blipgang, 0.75)
        SetBlipAsShortRange(Blipgang, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Gang: " .. JobName)
        EndTextCommandSetBlipName(Blipgang)
    end
end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerData)
    PlayerData = playerData
    JobName = PlayerData.job.name
    SetBlipForGang(JobName)
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
    JobName = PlayerData.job.name
    SetBlipForGang(JobName)
end)

local function isPlayerWhitelisted()
    local playerJob = PlayerData.job and PlayerData.job.name
    if playerJob ~= nil and Config.Wapeninkoopgangs[playerJob] ~= nil then
        return true
    else
        return false
    end
end

local function canSearch()
    if Config.Wapeninkoopgangs[ESX.PlayerData.job.name].magfouilleren then
        return true
    else
        return false
    end
end

Citizen.CreateThread(function()
    while ESX == nil do
        Wait(0)
        ESX = exports["es_extended"]:getSharedObject()
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    PlayerData = ESX.GetPlayerData()
    JobName = PlayerData.job.name
    SetBlipForGang(JobName)
end)

RegisterNetEvent('frp-gangjob:OpenShopMenu')
AddEventHandler('frp-gangjob:OpenShopMenu', function()
    OpenShopMenu()
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if CooldownEnabled then
            Citizen.Wait(15000)
            CooldownEnabled = false
        end
    end
end)

local function OpenWitwasMenu()
    local input = lib.inputDialog(witwasMenuConfig.title, {{type = 'number', label = 'Hoeveel', description = 'Je kan maximaal €' .. witwasMenuConfig.maxAmount .. ' tegelijk wassen'}})
    local player = PlayerPedId()

    if not input then 
        return 
    end

    if input[1] > witwasMenuConfig.maxAmount then
        ESX.ShowNotification('Je kan niet meer dan €' .. witwasMenuConfig.maxAmount .. ' tegelijk witwassen')
    else
        FreezeEntityPosition(player, true)

        local success = lib.progressCircle({
            duration = witwasMenuConfig.progressDuration, -- Gebruik de duur uit de configuratie
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
        })

        FreezeEntityPosition(player, false)

        if success then
            TriggerServerEvent('witwas:witwassen', input[1])
        else
            exports["frp-notifications"]:Notify("error", "Je hebt Het Witwassen Geanuleerd!", 5000)
        end
    end
end



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
		local coords = GetEntityCoords(PlayerPedId())
		if isPlayerWhitelisted() then
			local dist = GetDistanceBetweenCoords(coords, Config.Wapeninkoopgangs[JobName][1].coordswapeninkoop) <= Config.Markerdistance
			local dist2 = GetDistanceBetweenCoords(coords, Config.Wapeninkoopgangs[JobName][1].coordswapeninkoop) <= 1.5
			local waitdistance = #(coords - Config.Wapeninkoopgangs[JobName][1].coordswapeninkoop)
        	if dist then         
				ESX.DrawBasicMarker(Config.Wapeninkoopgangs[JobName][1].coordswapeninkoop, 50, 50, 204)
				if dist2 then
					exports['frp-interaction']:Interaction({r = '0', g = '74', b = '154'}, '[E] - Open Gang Menu', Config.Wapeninkoopgangs[JobName][1].coordswapeninkoop, 2.5, GetCurrentResourceName() .. '-action-' .. tostring(k))
        	    	if IsControlJustReleased(1, 38) then  
        	    	    Citizen.Wait(100)
						lib.showContext('opslag')
        	    	end
        	    end
			else
				Wait(1500)
			end
		else
			Wait(6000)
		end
    end
	if waitdistance > 20 then
		Wait(waitdistance * 10)
	end
end)

---------------------


lib.registerContext(
    {
        id = "opslag",
        title = "Gang: Menu",
        options = {
            {
                title = "Gang Inkoop",
                description = "Bekijk alle mogelijkheden om in te kopen",
                menu = "wapeninkoop",
                icon = "gun"
            },
            {
                title = "Gang Stash",
                description = "Open je stash van je gang",
                onSelect = function()
                     exports.ox_inventory:openInventory('stash', {id=JobName .. '_stash'})
                    print(JobName)
                end,
                icon = "box"
            }
        }
    }
)

lib.registerContext(
    {
        id = "wapeninkoop",
        title = "Gang: Winkels",
        options = {
            {
                title = "Wapen Winkel",
                description = "Bekijk alle mogelijke wapensoorten die we hebben in de kluis!",
                icon = "gun",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "gangshop"})
                end
            },
            {
                title = "Ammo Winkel",
                description = "Bekijk alle mogelijke ammosoorten die we hebben in de kluis!",
                icon = "gun",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "gangshopammo"})
                end
            },
            {
                title = "Attachment Winkel",
                description = "Bekijk alle mogelijke attachmentsoorten die we hebben in de kluis!",
                icon = "gun",
                menu = "weaponattachments",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "gangshopattachments"})
                end
            },
            {
                title = "Extra Winkel",
                description = "Bekijk alle mogelijke handcuffs die we hebben in de kluis!",
                icon = "shop",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "extra"})
                end
            },
            {
                title = 'Ga terug',
                onSelect = function()
                    lib.showContext('opslag')
                end,
                icon = 'fas fa-arrow-left'
            }
        }
    }
)

lib.registerContext(
    {
        id = "weaponattachments",
        title = "Gang: Attachments",
        options = {
            {
                title = "MB47",
                description = "Bekijk alle mogelijkheden om in te kopen",
                icon = "gun",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "gangshopattachmentsmb47"})
                end
            },
            {
                title = "AK-12",
                description = "Bekijk alle mogelijkheden om in te kopen",
                icon = "gun",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "gangshopattachmentsak12"})
                end
            },
            {
                title = "AK-47",
                description = "Bekijk alle mogelijkheden om in te kopen",
                icon = "gun",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "gangshopattachmentsak47"})
                end
            },
            {
                title = "AK-47U",
                description = "Bekijk alle mogelijkheden om in te kopen",
                icon = "gun",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "gangshopattachmentsak47u"})
                end
            },
            {
                title = "MP5",
                description = "Bekijk alle mogelijkheden om in te kopen",
                icon = "gun",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "gangshopattachmentsmp5"})
                end
            },
            {
                title = "UMP-45",
                description = "Bekijk alle mogelijkheden om in te kopen",
                icon = "gun",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "gangshopattachmentsump45"})
                end
            },
            {
                title = "UZI",
                description = "Bekijk alle mogelijkheden om in te kopen",
                icon = "gun",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "gangshopattachmentsuzi"})
                end
            },
            {
                title = "MAC-11",
                description = "Bekijk alle mogelijkheden om in te kopen",
                icon = "gun",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "gangshopattachmentsmac11"})
                end
            },
            {
                title = "Pistol MK2",
                description = "Bekijk alle mogelijkheden om in te kopen",
                icon = "gun",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "gangshopattachmentspistolmk2"})
                end
            },
            {
                title = "M1911",
                description = "Bekijk alle mogelijkheden om in te kopen",
                icon = "gun",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "gangshopattachmentsm1911"})
                end
            },
            {
                title = "MEOS-45",
                description = "Bekijk alle mogelijkheden om in te kopen",
                icon = "gun",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "gangshopattachmentsmeos45"})
                end
            },
            {
                title = "SMITH & WESSON",
                description = "Bekijk alle mogelijkheden om in te kopen",
                icon = "gun",
                onSelect = function()
                    exports.ox_inventory:openInventory("shop", {type = "gangshopattachmentssmithwesson"})
                end
            },
            {
                title = 'Ga terug',
                onSelect = function()
                    lib.showContext('wapeninkoop')
                end,
                icon = 'fas fa-arrow-left'
            }
        }
    }
)


RegisterNetEvent('frp:notifyalert')
AddEventHandler('frp:notifyalert', function(message)
    exports['frp-notifications']:Notify('info', message, 5000)
end)

local cachedData = {}
-- Function to handle the camera
frp.Functions.HandleCamera = function(vehicleposition, heading)
    cachedData['cam'] = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)

    SetCamCoord(cachedData['cam'], vehicleposition.x, vehicleposition.y, vehicleposition.z + 0.5)
    SetCamNearDof(cachedData['cam'], 0)
    SetCamActive(cachedData['cam'], true)
    RenderScriptCams(1, 1, 1, 1, 1)

    Citizen.SetTimeout(50, function()
        RenderScriptCams(0, 1, 1500, 1, 1)
        Citizen.SetTimeout(1500, function()
            DestroyCam(cachedData['cam'])
            cachedData['cam'] = nil
            isInInteraction = false  -- Assuming isInInteraction is defined somewhere in your code
        end)
    end)
end

frp.Functions.LoadModel = function(model)
	if not IsModelValid(model) then return end

	RequestModel(joaat(model))
	while not HasModelLoaded(joaat(model)) do
		Wait(5)
	end
end

frp.Functions.GetVehicleType = function(model)
    if model == `submersible` or model == `submersible2` then
		return 'submarine'
	end

	local class = GetVehicleClassFromName(model)
	local types = {
		[8] = "bike",
		[11] = "trailer",
		[13] = "bike",
		[14] = "boat",
		[15] = "heli",
		[16] = "plane",
		[21] = "train",
	}

	return types[class] or "automobile"
end

Citizen.CreateThread(function()
    while true do
        local sleep = 500
        local coords = GetEntityCoords(PlayerPedId())

        for _, gang in ipairs(Config.gangMenu) do
            local dist = #(coords-gang.coords)
            if dist < 10 and ESX.PlayerData.job.name == gang.gangName and ESX.PlayerData.job.grade >= gang.mingrade then
                sleep = 0
    ESX.Game.Utils.DrawMarker(gang.coords, 2, 0.2, 255, 0, 0)
                if dist < 2.5 then
    exports['frp-interaction']:Interaction('error', '[E] - ' .. gang.gangName .. " Gang Menu", gang.coords, 2.5, GetCurrentResourceName() .. '-action-' .. tostring(k))
                    if IsControlJustReleased(0, 38) then
                        lib.showContext('bossmenu')
                    end
                end
            end
        end

        Wait(sleep)
    end
end)

lib.registerContext({
    id = 'bossmenu', 
    title = 'Boss Menu',
    options = {
      {
        title = 'Persoon Aannemen',
        description = 'Neem een persoon aan.',
        icon = 'box',
        onSelect = function()
            Neempersonenaan()
        end,
      },
      {
        title = 'Witwas Menu',
        description = 'Boss witwas Menu 55%',
        icon = 'money-bill-1',
        onSelect = function()
            OpenWitwasMenu()
        end,
      },
      {
        title = 'Beheer Members',
        description = 'Beheer al je gang members.',
        icon = 'clipboard',
        onSelect = function()
            Checkpersons()
        end,
      },
    }
})

Checkpersons = function()
    local check = {}
    local speler = PlayerPedId()
    local jobnaam = ESX.PlayerData.job.name
    ESX.TriggerServerCallback("jtm-gangjob:check:gangmembers", function(datagang)
        for k,v in pairs(datagang) do 
            table.insert(check, {
                title = v.voornaam .. " " .. v.achternaam,
                description = 'Rang: ' .. v.grade,
                icon = 'user',
                onSelect = function()
                    OpenMenumembersboss(v)
                end
            })
        end
        lib.registerContext({
            id = 'bossmenu-members',
            title = "Gang Menu | Personeel",
            options = check
        })
        lib.showContext('bossmenu-members')
    end, jobnaam)
end

OpenMenumembersboss = function(value)
    ESX.UI.Menu.CloseAll()

    local options = {
        {
            title = value.voornaam .. " Demoten",
            description = '',
            icon = 'fas fa-minus',
            onSelect = function()
                local input = lib.inputDialog('Weet je zeker dat je ' .. value.voornaam .. ' ' .. value.achternaam .. ' wilt degraderen?', {
                    {type = 'checkbox', label = 'Ja, ik weet het zeker!', required = true},
                })
            
                if not input[1] then 
                    TriggerEvent('eros-notifications', 'error', 'Je bent niet akkoord gegaan met deze medewerker te degraderen.')
                    return 
                end
                DemotePlayer(value.identifier, value.voornaam)
            end
        },
        {
            title = value.voornaam .. " Promoveren",
            description = '',
            icon = 'fas fa-plus',
            onSelect = function()
    -- Prevent default or stop propagation here if supported by your UI framework
    local input = lib.inputDialog('Confirmation', {})
    if input then
        PromotePlayer(value.identifier, value.voornaam)
    end
    return false -- Depending on what lib supports to prevent further propagation
end
        },
        {
            title = value.voornaam .. " Ontslaan",
            description = '',
            icon = 'fas fa-fire',
            
            onSelect = function()

                local input = lib.inputDialog('Weet je zeker dat je ' .. value.voornaam .. ' ' .. value.achternaam .. ' wilt ontslaan?', {
                    {type = 'checkbox', label = 'Ja, ik weet het zeker!', required = true},
                })
            
                if not input[1] then 
                    TriggerEvent('eros-notifications', 'error', 'Je bent niet akkoord gegaan met deze medewerker te ontslaan.')
                    return 
                end

                Deletemembersboss(value.identifier, value.voornaam)
            end
        },
        {
            title = 'Ga terug',
            onSelect = function()
                checkpersons()
            end,
            icon = 'fas fa-arrow-left'
        }
    }

    lib.registerContext({
        id = 'bossmenu-members-boss',
        title = "Bossmenu",
        options = options
    })
    lib.showContext('bossmenu-members-boss')
end

-- Example of how to trigger the promotion event from client-side
function PromotePlayer(identifier, playerName)
    TriggerServerEvent("jtm-gangjob:promotemember", identifier, playerName)
end

-- Example of how to trigger the demotion event from client-side
function DemotePlayer(identifier, playerName)
    TriggerServerEvent("jtm-gangjob:demote", identifier, playerName)
end


function Deletemembersboss(x, y)
	TriggerServerEvent("jtm-gangjob:deletemember:serversided", x, y)
end


function Neempersonenaan()

	local jobnamegang = ESX.PlayerData.job.name

    local input = lib.inputDialog('Gang Menu | Aannemen', {'Voer een speler id in'})
	if not input then 
		return 
	end

	local playerid = tonumber(input[1])

	if playerid then
		ESX.TriggerServerCallback('jtm-gangjob:add:playertogang', function(done)
			if done then
			end
		end, playerid, jobnamegang)
	else
	end
end
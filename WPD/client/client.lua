ESX = exports["es_extended"]:getSharedObject()
local isSelling = false
Citizen.CreateThread(function()
    while ESX.GetPlayerData().job == nil do
        Wait(10)
    end

    RegisterNetEvent('esx:setJob')
    AddEventHandler('esx:setJob', function(job)
        AddGlobalTargetIfNeeded(job)
    end)

    local job = ESX.GetPlayerData().job
    AddGlobalTargetIfNeeded(job)
end)

function AddGlobalTargetIfNeeded(job)
   if job and job.name == 'wpd' then
        exports.ox_target:removeGlobalPlayer('Fouilleren')
        exports.ox_target:removeGlobalPlayer('Wapen Verkopen')
        exports.ox_target:addGlobalPlayer({{
            name = 'Wapen Verkopen',
            event = 'wpd:showMenu',
            icon = 'fa-solid fa-gun',
            label = 'Wapen Verkopen',
            onSelect = function(entity)
				TriggerEvent('wpd:showMenu', entity)
			end,
        }})
    else
        exports.ox_target:removeGlobalPlayer('Wapen Verkopen')
    end
end
RegisterNetEvent('wpd:showMenu')
AddEventHandler('wpd:showMenu', function()
	lib.showContext('weapon_menu')
end)
RegisterNetEvent('wpd:getClosestPlayer')
AddEventHandler('wpd:getClosestPlayer', function() 
	lib.showContext('getClosestPlayer')
end)
RegisterNetEvent('wpd:searchPlayer')
AddEventHandler('wpd:searchPlayer', function(entity)
    exports.ox_inventory:openInventory('player', entity)
end)
-- Function to create a category menu dynamically
local function createCategoryMenu(categoryId, title, weapons)
    local options = {}
    for _, weapon in ipairs(weapons) do
        table.insert(options, {
            title = weapon.label,
            description = "€" .. weapon.price * weapon.amount,
            icon = 'gun',
            onSelect = function()
                local zPlayer = ESX.Game.GetClosestPlayer(GetEntityCoords(PlayerPedId()))
                TriggerServerEvent('wpd:sellWeapon', weapon.name, weapon.price, weapon.amount, weapon.label, GetPlayerServerId(zPlayer))
            end
        })
    end

    lib.registerContext({
        id = categoryId .. "_menu",
        title = title,
        options = options
    })
end

-- Dynamically create menus for each category
for category, weapons in pairs(Config.Weapons) do
    createCategoryMenu(category, category:sub(1, 1):upper() .. category:sub(2), weapons)
end

-- Your main menu that references the dynamically generated menus
local mainMenuOptions = {}
for category, _ in pairs(Config.Weapons) do
    table.insert(mainMenuOptions, {
        title = category:sub(1, 1):upper() .. category:sub(2),
        icon = 'gun',
        menu = category .. "_menu", -- Ensure this matches the dynamically generated menu ID
    })
end

lib.registerContext({
    id = 'weapon_menu',
    title = 'Weapon Menu',
    options = mainMenuOptions
})
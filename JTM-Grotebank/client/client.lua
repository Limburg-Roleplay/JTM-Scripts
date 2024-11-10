ESX = exports["es_extended"]:getSharedObject()

local robberyOngoing = false
local placed = false
local MinPolice = Config.MinPolice
local doorUnlocked = false
local Cash = 0
local placedTargetMoney = false
local userIsRobber = false
local isGrabbing = false
Citizen.CreateThread(
    function()
        if ESX.IsPlayerLoaded() then
            ESX.PlayerData = ESX.GetPlayerData()
        end
    end
)

RegisterNetEvent("esx:setJob")
AddEventHandler(
    "esx:setJob",
    function(job)
        ESX.PlayerData.job = job
    end
)
--RegisterCommand(
  --  "opendoor",
    --function()
--        TriggerServerEvent("grotebank:openDoorSV")
--    end
--)
--RegisterCommand(
--    "resetdoor",
--    function()
--        TriggerServerEvent("grotebank:resetDoorSV")
-- end
--)
RegisterNetEvent("grotebank:alertCops")
AddEventHandler(
    "grotebank:alertCops",
    function()
        local coords = vector3(Config.StartPoint.x, Config.StartPoint.y, Config.StartPoint.z)
        street =
            GetStreetNameFromHashKey(
            GetStreetNameAtCoord(Config.StartPoint.x, Config.StartPoint.y, Config.StartPoint.z)
        )
        TriggerServerEvent(
            "esx_outlawalert:robberyInProgress",
            vector3(Config.StartPoint.x, Config.StartPoint.y, Config.StartPoint.z),
            street,
            "Man",
            "Grote Bank"
        )
    end
)

Citizen.CreateThread(
    function()
        exports.ox_target:addBoxZone(
            {
                coords = vector3(252.8798, 228.5468, 102.0832),
                size = vector3(0.5, 0.5, 0.7),
                rotation = 45,
                options = {
                    {
                        name = "Kluis Hacken",
                        icon = "fa-solid fa-calculator",
                        label = "Kluis Hacken",
                        onSelect = function(entity)
                            
                            if exports.ox_inventory:GetItemCount("hacking_device") == 0 then
                                exports["frp-notifications"]:Notify("error", "Je hebt geen hacking device!", 5000)
                                
                            else
                                ESX.TriggerServerCallback(
                					"grotebank:fetchCops",
                				function(IsEnough)
                    				if IsEnough then
                                		TriggerServerEvent("grotebank:startHacking")
                    				else
                        				exports['frp-notifications']:Notify('error', 'Er is niet genoeg politie!', 5000)
                    				end
                				end, MinPolice)
                            end
                        end
                    }
                }
            }
        )
        while true do
            Citizen.Wait(1)
            if robberyOngoing and not placed then
                placed = true

                exports.ox_target:addBoxZone(
                    {
                        coords = vector3(261.6406, 215.6208, 101.7833),
                        size = vector3(0.5, 0.5, 0.7),
                        rotation = 45,
                        options = {
                            {
                                name = "Thermiet Plaatsen",
                                icon = "fa-solid fa-bomb",
                                label = "Thermiet Plaatsen",
                                canInteract = function()
                                    if doorUnlocked then
                                        return false
                                    else
                                        return true
                                    end
                                end,
                                onSelect = function(entity)
                                    RequestWeaponAsset(GetHashKey("weapon_flare"))
                                    while not HasWeaponAssetLoaded(GetHashKey("weapon_flare")) do
                                        Wait(0)
                                    end
                                    if exports.ox_inventory:GetItemCount("thermiet") == 0 then
                                        exports["frp-notifications"]:Notify("error", "Je hebt geen thermiet", 5000)
                                    else
                                        local ped = GetPlayerPed(-1)
                                        SetEntityCoordsNoOffset(ped, 261.3588, 215.8382, 101.6833, true, true, true)
                                        RequestAnimSet("move_ped_crouched")
                                        while not HasAnimSetLoaded("move_ped_crouched") do
                                            Citizen.Wait(100)
                                        end
                                        SetPedMovementClipset(ped, "move_ped_crouched", 0.25)
                                        FreezeEntityPosition(ped, true)
                                        loadAnimDict("anim@heists@ornate_bank@thermal_charge")
                                        if
                                            lib.progressCircle(
                                                {
                                                    duration = 5000,
                                                    label = "Thermiet Plaatsen..",
                                                    useWhileDead = false,
                                                    canCancel = false,
                                                    anim = {
                                                        dict = "anim@heists@ornate_bank@thermal_charge",
                                                        clip = "thermal_charge"
                                                    },
                                                    disable = {
                                                        move = false,
                                                        mouse = false
                                                    }
                                                }
                                            )
                                         then
                                            FreezeEntityPosition(ped, false)
                                            TriggerServerEvent("grotebank:thermiteStart")
                                        end
                                    end
                                end
                            }
                        }
                    }
                )
            end
        end
    end
)
function StartRobbery()
    
    Cash = math.random(580000, 750000)
    local robberyOngoing = true
	userIsRobber = true
    loadModel("bkr_prop_bkr_cashpile_04")
    loadAnimDict("anim@heists@ornate_bank@grab_cash_heels")

    local CashPile = CreateObject(GetHashKey("bkr_prop_bkr_cashpile_04"), 264.3886, 213.9140, 101.5278, false)
    PlaceObjectOnGroundProperly(CashPile)
    SetEntityRotation(CashPile, 0, 0, -110.8751, 2)
    FreezeEntityPosition(CashPile, true)
    SetEntityAsMissionEntity(CashPile, true, true)

    Citizen.CreateThread(
        function()
            while robberyOngoing and userIsRobber do
                Citizen.Wait(1)
                local ped = PlayerPedId()
                local pedCoords = GetEntityCoords(ped)
                local distanceCheck = GetDistanceBetweenCoords(pedCoords, 264.5850, 214.0483, 102.5278, false)
                if not placedTargetMoney then
                    exports.ox_target:addBoxZone(
                        {
                            coords = vector3(264.3886, 213.9140, 101.7278),
                            size = vector3(0.5, 0.5, 0.7),
                            rotation = 45,
                            options = {
                                {
                                    name = "Geld Pakken",
                                    icon = "fa-solid fa-bank",
                                    label = "Geld Pakken",
                                    canInteract = function()
                                        if
                                            Cash > 0 and
                                                not IsEntityPlayingAnim(
                                                    PlayerPedId(),
                                                    "anim@heists@ornate_bank@grab_cash_heels",
                                                    "grab",
                                                    3
                                                ) and userIsRobber and not isGrabbing
                                         then
                                            return true
                                        else
                                            return false
                                        end
                                    end,
                                    onSelect = function(entity)
                                        if Cash > 0 then
                                            GrabCash()
                                        end
                                    end
                                }
                            }
                        }
                    )
                end
                placedTargetMoney = true
                local ped = PlayerPedId()
                local pedCoords = GetEntityCoords(ped)
                local distanceCheck = GetDistanceBetweenCoords(pedCoords, 264.5850, 214.0483, 102.5278, false)

                if distanceCheck <= 1.5 then
                    if Cash > 0 then
                        Draw3DText2({x = 264.5850, y = 214.0483, z = 102.5278}, " Pak " .. Cash .. " ")
                    else
                        Draw3DText2({x = 264.5850, y = 214.0483, z = 102.5278}, "Er ligt geen geld meer!")
                        DeleteEntity(CashPile)

                        Cash = 0
                        Citizen.Wait(300000)
                        TriggerServerEvent("grotebank:endRobbery")
                    end
                end
            end
        end
    )
    Citizen.Wait(600000)
    TriggerEvent("grotebank:endRobbery", bankId)
end
function GrabCash()
    TaskPlayAnim(
        PlayerPedId(),
        "anim@heists@ornate_bank@grab_cash_heels",
        "grab",
        8.0,
        -8.0,
        -1,
        1,
        0,
        false,
        false,
        false
    )
	isGrabbing = true
    Citizen.Wait(7500)

    ClearPedTasks(PlayerPedId())
    local cashRecieved = math.random(20000, 35000)
    if Cash < cashRecieved then
        cashRecieved = Cash
    end
    Cash = Cash - cashRecieved
    TriggerServerEvent("grotebank:grabbedCash", cashRecieved)
    
	isGrabbing = false
end
function Draw3DText2(coords, text)
    local onScreen, _x, _y = World3dToScreen2d(coords.x, coords.y, coords.z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())

    if onScreen then
        local textWidth = string.len(text) / 280
        local textHeight = 0.035

        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextDropShadow(0, 0, 0, 55)
        SetTextEdge(0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawRect(_x, _y + 0.0125, textWidth, textHeight, 0, 0, 0, 150)
        DrawText(_x, _y)
    end
end
RegisterNetEvent("grotebank:placeThermite")
AddEventHandler(
    "grotebank:placeThermite",
    function()
        Citizen.Wait(10000)
        TriggerServerEvent("grotebank:thermiteEnd")
        doorUnlocked = true
        TriggerServerEvent("grotebank:StartRobberySV")
    end
)
RegisterNetEvent("grotebank:startThermite")
AddEventHandler(
    "grotebank:startThermite",
    function()
        local flareCoords = vector3(261.6406, 215.6208, 101.6833)

        local particleFx = "core"
        local particleName = "exp_grd_flare"

        local scale = 1.0
        local xAxis = 0.0
        local yAxis = 0.0
        local zAxis = 0.0
        local alpha = 255
        local range = false
        local rotate = false

        RequestNamedPtfxAsset(particleFx)
        while not HasNamedPtfxAssetLoaded(particleFx) do
            Citizen.Wait(0)
        end

        UseParticleFxAssetNextCall(particleFx)
        local retval =
            StartParticleFxLoopedAtCoord(
            particleName,
            flareCoords.x,
            flareCoords.y,
            flareCoords.z,
            xAxis,
            yAxis,
            zAxis,
            scale,
            range,
            rotate
        )
        Citizen.Wait(10000)
        StopParticleFxLooped(retval, true)
    end
)
RegisterNetEvent("grotebank:StartRobbery")
AddEventHandler(
    "grotebank:StartRobbery",
    function(anim)
        StartRobbery()
    end
)
RegisterNetEvent("grotebank:loadAnimDict")
AddEventHandler(
    "grotebank:loadAnimDict",
    function(anim)
        loadAnimDict(anim)
    end
)

RegisterNetEvent("mhacking:handleSeqstart")
AddEventHandler(
    "mhacking:handleSeqstart",
    function()
        TriggerEvent(
            "mhacking:seqstart",
            3,
            40,
            function(data)
                if data then
                    robberyOngoing = true
                    loadModel("bkr_prop_bkr_cashpile_04")
                    TriggerServerEvent("grotebank:openDoorSV")
                    loadAnimDict("anim@heists@ornate_bank@grab_cash_heels")
                    TriggerEvent('grotebank:alertCops')
                end
            end
        )
    end
)
function loadAnimDict(dict)
    Citizen.CreateThread(
        function()
            while (not HasAnimDictLoaded(dict)) do
                RequestAnimDict(dict)
                Citizen.Wait(1)
            end
        end
    )
end

function loadModel(model)
    Citizen.CreateThread(
        function()
            while not HasModelLoaded(model) do
                RequestModel(model)
                Citizen.Wait(1)
            end
        end
    )
end

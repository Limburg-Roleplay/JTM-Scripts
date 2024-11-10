-- ESX = nil
animName = "" 
animDict = "" 
cuffed = false
cuffs = nil
 
dragStatus = {
	isDragged = false,
	copId = 0
}

Citizen.CreateThread(function()
	RequestAnimDict("anim@move_m@prisoner_cuffed") 
    RequestAnimDict("mp_arresting") 
	RequestAnimDict("anim@apt_trans@garage") 
	RequestModel(GetHashKey("p_cs_cuffs_02_s"))
end)

RegisterNetEvent('vesx_police:client:cuff:player')
AddEventHandler('vesx_police:client:cuff:player', function(data)
	local entity = data.entity
	local distance = #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(entity))
	local entityPlayer = ESX.Game.GetPlayerFromPed(entity)
	local count = exports.ox_inventory:Search('count', 'handcuffs')
	
	if distance < 2.0 and entityPlayer then 
		if count >= 1 then
			if ESX.PlayerData.job.name == 'police'
            or ESX.PlayerData.job.name == 'cjng' 
            or ESX.PlayerData.job.name == 'cff'
                then
				local targetPed = GetPlayerPed(entityPlayer)
				local targetHeading = GetEntityHeading(entityPlayer)
				local targetCoords = GetOffsetFromEntityInWorldCoords(targetPed, 0.0, -1.0, 0.0)
				local ped = PlayerPedId()
				local dist = #(vector3(GetEntityHeading(ped),GetEntityHeading(ped),GetEntityHeading(ped)) - vector3(GetEntityHeading(GetPlayerPed(entityPlayer)),GetEntityHeading(GetPlayerPed(entityPlayer)),GetEntityHeading(GetPlayerPed(entityPlayer))) )
				
				if dist < 200.0 then 
					TriggerServerEvent('vesx_cuff:server:ProcessCuffs', 0, GetPlayerServerId(entityPlayer))
				else 
					TriggerServerEvent('vesx_cuff:server:ProcessCuffs', 1, GetPlayerServerId(entityPlayer))
				end
				
				exports['vesx_audio']:PlayAudioDist(GetPlayerServerId(entityPlayer), 2.0, "handcuff", 0.3)
				TaskPlayAnim(ped, "mp_arresting", "a_uncuff", 8.0, -8, -1, 49, 0, false, false, false) 
				Wait(2000)
				ClearPedTasks(ped) 
			else
				ESX.ShowNotification('error', 'Je staat niet op de juiste job!', 5000)
			end
		else
			ESX.ShowNotification('error', 'Je hebt geen handboeien!', 5000)
		end
	else
		ESX.ShowNotification('error', 'Je staat te ver weg!', 5000)
	end
end)

   

RegisterNetEvent('vesx_police:client:uncuff:player')
AddEventHandler('vesx_police:client:uncuff:player', function(data)
	local entity = data.entity
	local distance = #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(entity))
	local entityPlayer = nil
	local entityPlayer = ESX.Game.GetPlayerFromPed(entity)
	if distance < 2.0 and entityPlayer then 
        if ESX.PlayerData.job.name == 'police' 
        or ESX.PlayerData.job.name == 'cjng'   
        then
		local targetPed = GetPlayerPed(entityPlayer)
		local targetHeading = GetEntityHeading(entityPlayer)
		local targetCoords = GetOffsetFromEntityInWorldCoords(targetPed, 0.0, -1.0, 0.0)
		local ped = PlayerPedId()
		local dist = #(vector3(GetEntityHeading(ped),GetEntityHeading(ped),GetEntityHeading(ped)) - vector3(GetEntityHeading(GetPlayerPed(entityPlayer)),GetEntityHeading(GetPlayerPed(entityPlayer)),GetEntityHeading(GetPlayerPed(entityPlayer))) )
		TriggerServerEvent('vesx_cuff:server:RemoveCuffs', 1, GetPlayerServerId(entityPlayer))
	   	exports['vesx_audio']:PlayAudioDist(GetPlayerServerId(entityPlayer), 2.0, "handcuff", 0.3)
		TaskPlayAnim(PlayerPedId(), "mp_arresting", "a_uncuff", 8.0, -8, -1, 49, 0, false, false, false) 
		Wait(2000)
		ClearPedTasks(PlayerPedId()) 
    else
				ESX.ShowNotification('error', 'Je staat niet op de juiste job!', 5000)
	end
	else
		ESX.ShowNotification('Deze persoon is niet meer in de buurt!', 'error')
	end
end)

RegisterNetEvent('vesx_cuff:client:RemoveCuffs')
AddEventHandler('vesx_cuff:client:RemoveCuffs', function()
    if cuffed == true then 
	   cuffed = false
	   startAnim() 
	end
	player = PlayerPedId() 
    SetEnableHandcuffs(player, false) 
    SetPedCanPlayGestureAnims(player, true) 
    SetPedPathCanUseLadders(player, true) 
	ClearPedTasks(player) 
	DeleteEntity(cuffs)
	disableControls()
end)

RegisterNetEvent('vesx_cuff:client:ProcessCuffs')
AddEventHandler('vesx_cuff:client:ProcessCuffs', function(x)
    ProcessCuffs(x) 
	
	if cuffs then 
	   DeleteEntity(cuffs)
	   cuffs = nil
	end
	
	cuffs = CreateObject(GetHashKey("p_cs_cuffs_02_s"), GetEntityCoords(PlayerPedId()), true, true, true);
	local networkId = ObjToNet(cuffs)
	SetNetworkIdExistsOnAllMachines(networkId, true)
    SetNetworkIdCanMigrate(networkId, false)
    NetworkSetNetworkIdDynamic(networkId, true)
	
	if x == 0 then 
	   AttachEntityToEntity(cuffs, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()), 60309), -0.055, 0.06, 0.04, 265.0, 155.0, 80.0, true, false, false, false, 0, true);
	else 
       AttachEntityToEntity(cuffs, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()), 60309), -0.058, 0.005, 0.090, 290.0, 95.0, 120.0, true, false, false, false, 0, true);
	end
	
	disableControls()
end)

function startAnim()
  
  Citizen.CreateThread(function() 
    
	player = PlayerPedId() 
    SetEnableHandcuffs(player, true) 
    SetPedCanPlayGestureAnims(player, false) 
    SetPedPathCanUseLadders(player, false) 
 	DisableControlAction(0, 21, true)
	DisableControlAction(0, 22, true)
 
	while cuffed == true  do
        sleep = 500
        if not IsEntityPlayingAnim(player, animDict, animName, 49) or IsPedRagdoll(player) then 
		    sleep = 1
            TaskPlayAnim(player, animDict, animName, 8.0, -8, -1, 49, 0, false, false, false) 
        end
	    Citizen.Wait(sleep)
	end
	ClearPedTasks(player) 
    SetPedCanPlayGestureAnims(player, true) 
    SetPedPathCanUseLadders(player, true) 
    SetEnableHandcuffs(player, false) 
  end)
 
end
 
 
function ProcessCuffs(type) 

    if cuffed == true then 
	   cuffed = false
	   startAnim() 
	end
	
    if type == 0 then 
        animName = "idle";
        animDict = "mp_arresting";
    elseif type == 1 then  
       animName = "idle";
       animDict = "anim@move_m@prisoner_cuffed";
    end
	cuffed = true
	startAnim()
end
 
 
 
 AddEventHandler('onResourceStop', function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then
    return
  end
  DeleteEntity(cuffs)
  ClearPedTasks(PlayerPedId())
 end)

function IsCuffed()
	return cuffed
end
exports("IsCuffed", IsCuffed);

function disableControls()
 
   Citizen.CreateThread(function() 
	while cuffed do
		Citizen.Wait(0)
	    DisableControlAction(0, 140, true)
        DisableControlAction(0, 141, true)
        DisableControlAction(0, 257, true)
        DisableControlAction(0, 142, true)
        DisableControlAction(0, 25, true)
        DisableControlAction(0, 24, true)
        DisableControlAction(0, 69, true)
        DisableControlAction(0, 92, true)
        DisableControlAction(0, 114, true)
		DisableControlAction(0, 56, true)
		DisableControlAction(0, 289, true)
	 
			DisableControlAction(0, 24, true) -- Attack
			DisableControlAction(0, 257, true) -- Attack 2
			DisableControlAction(0, 25, true) -- Aim
			DisableControlAction(0, 263, true) -- Melee Attack 1
 

			DisableControlAction(0, 45, true) -- Reload
			DisableControlAction(0, 22, true) -- Jump
			DisableControlAction(0, 44, true) -- Cover
			DisableControlAction(0, 37, true) -- Select Weapon
			DisableControlAction(0, 23, true) -- Also 'enter'?

			DisableControlAction(0, 288,  true) -- Disable phone
			DisableControlAction(0, 289, true) -- Inventory
			DisableControlAction(0, 170, true) -- Animations
			DisableControlAction(0, 167, true) -- Job

			DisableControlAction(0, 0, true) -- Disable changing view
			DisableControlAction(0, 26, true) -- Disable looking behind
			DisableControlAction(0, 73, true) -- Disable clearing animation
			DisableControlAction(2, 199, true) -- Disable pause screen

			DisableControlAction(0, 59, true) -- Disable steering in vehicle
			DisableControlAction(0, 71, true) -- Disable driving forward in vehicle
			DisableControlAction(0, 72, true) -- Disable reversing in vehicle

			DisableControlAction(2, 36, true) -- Disable going stealth

			DisableControlAction(0, 47, true)  -- Disable weapon
			DisableControlAction(0, 264, true) -- Disable melee
			DisableControlAction(0, 257, true) -- Disable melee
			DisableControlAction(0, 140, true) -- Disable melee
			DisableControlAction(0, 141, true) -- Disable melee
			DisableControlAction(0, 142, true) -- Disable melee
			DisableControlAction(0, 143, true) -- Disable melee
			DisableControlAction(0, 75, true)  -- Disable exit vehicle
			DisableControlAction(27, 75, true) -- Disable exit vehicle
	  end
   end)
end

AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
		return
	end

	if cuffs then
		DeleteEntity(cuffs)
		ClearPedTasks(PlayerPedId())
	end
end)
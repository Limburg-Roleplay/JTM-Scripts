local animName, animDict, cuffed = "", "", false
local dragStatus = {['isDragged'] = false}

RegisterNetEvent('vesx_cuff:client:startDragging')
AddEventHandler('vesx_cuff:client:startDragging', function(copId)
	dragStatus['isDragged'] = not dragStatus['isDragged']
	dragStatus['copId'] = tonumber(copId)
end)

RegisterNetEvent('vesx_cuff:client:dragging')
AddEventHandler('vesx_cuff:client:dragging', function(data)
	local entity = data.entity
	local entityPlayer = ESX.Game.GetPlayerFromPed(entity)

	dragStatus['isDragging'] = true
	dragStatus['targetId'] = GetPlayerServerId(entityPlayer)

	SendNUIMessage({
		type = 'openPlaceholder',
		text = '<b>[X]</b> Om de persoon los te laten'
	})

	TriggerServerEvent('vesx_cuff:server:onDrag', GetPlayerServerId(entityPlayer))

	Citizen.CreateThread(function()
		while dragStatus['isDragging'] do 
			local sleep = 0

			DisableControlAction(2, 21, true)

			local isWalking = IsPedWalking(PlayerPedId())
			local isPlayingAnim = IsEntityPlayingAnim(PlayerPedId(), Config.Pushing['pushingAnimDict'], Config.Pushing['pushingAnim'], 51)

			if IsControlJustReleased(0, 120) then
				TriggerServerEvent('vesx_cuff:server:syncs:drag', dragStatus['targetId'])
				SendNUIMessage({
					type = 'closePlaceholder'
				})
				StopAnimTask(PlayerPedId(), Config.Pushing['pushingAnimDict'], Config.Pushing['pushingAnim'], -4.0)
				dragStatus['isDragging'] = false
				return
			end

			if isWalking and not isPlayingAnim then
				ESX.Game.PlayAnim(Config.Pushing['pushingAnimDict'], Config.Pushing['pushingAnim'], 2.0, -1, 51)
			elseif not isWalking and isPlayingAnim then
				StopAnimTask(PlayerPedId(), Config.Pushing['pushingAnimDict'], Config.Pushing['pushingAnim'], -4.0)
			end

			Citizen.Wait(sleep)
		end
	end)
end)

Citizen.CreateThread(function()
	while true do 
		local sleep = 750
		if dragStatus['isDragged'] then
			sleep = 0
			SetPedMoveRateOverride(PlayerPedId(), 0.8)
			local targetPed = GetPlayerPed(GetPlayerFromServerId(dragStatus['copId'])) 
	
			if not IsPedSittingInAnyVehicle(targetPed) then 
				AttachEntityToEntity(PlayerPedId(), targetPed, 11816, 0.0, 0.64, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
			else 
				setIsDragged(false)
			end
	
			if IsPedDeadOrDying(targetPed, true) then 
				setIsDragged(false)
			end
	
			local isPlayingAnim = IsEntityPlayingAnim(PlayerPedId(), Config.Walking['walkingAnimDict'], Config.Walking['walkingAnim'], 3)
			local isCopWalking = IsPedWalking(targetPed)
	
			if isCopWalking and not isPlayingAnim then
				ESX.Game.PlayAnim(Config.Walking['walkingAnimDict'], Config.Walking['walkingAnim'], 2.0, -1, 3)
			elseif not isCopWalking and isPlayingAnim then 
				StopAnimTask(PlayerPedId(), Config.Walking['walkingAnimDict'], Config.Walking['walkingAnim'], -4.0)
			end
		else 
			StopAnimTask(PlayerPedId(), Config.Walking['walkingAnimDict'], Config.Walking['walkingAnim'], -4.0)
			DetachEntity(PlayerPedId(), true, false)
		end

		Wait(sleep)
	end
end)

RegisterNetEvent('vesx_cuff:client:syncz:drag')
AddEventHandler('vesx_cuff:client:syncz:drag', function()
	setIsDragged(true)
	dragStatus['isDragged'] = true
end)

RegisterNetEvent('vesx_cuff:client:syncs:drag')
AddEventHandler('vesx_cuff:client:syncs:drag', function()
	setIsDragged(false)
	dragStatus['isDragged'] = false
end)

setIsDragged = function(value)
	if not value and dragStatus['isDragged'] then 
		releasePed()
	end 

	dragStatus['isDragged'] = value
end

releasePed = function()
	dragStatus['isDragged'] = false 
	DetachEntity(PlayerPedId(), true, false)
	StopAnimTask(PlayerPedId(), walkingAnimDict, walkingAnim)
end
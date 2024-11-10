Citizen.CreateThread(function()
        ResetDoor()
end)
RegisterNetEvent("grotebank:openDoor")
AddEventHandler("grotebank:openDoor", function()
    OpenDoor()
end)
RegisterNetEvent("grotebank:resetDoor")
AddEventHandler("grotebank:resetDoor", function()
    ResetDoor()
end)
RegisterCommand('closedoor', function() 
	ResetDoor()
end)
RegisterCommand('opendoor2', function() 
	TriggerEvent('grotebank:openDoorThermite')
end)
function ResetDoor()
    local door = GetClosestObjectOfType(Config.Vault.x, Config.Vault.y, Config.Vault.z, 3.0, GetHashKey("v_ilev_bk_vaultdoor"))
    SetEntityRotation(door, 0.0, 0.0, 160.0, 0.0)
    FreezeEntityPosition(door, true)
    local door2 = GetClosestObjectOfType(261.3004150390625, 214.50514221191407, 101.83240509033203, 10.0, -1508355822)
    SetEntityRotation(door2, 0.0, 0.0, -110.0, 0.0)
    FreezeEntityPosition(door2, true)
end
RegisterNetEvent("grotebank:openDoorThermite")
AddEventHandler("grotebank:openDoorThermite", function()
    local door2 = GetClosestObjectOfType(261.3004150390625, 214.50514221191407, 101.83240509033203, 10.0, -1508355822)
    SetEntityRotation(door2, 0.0, 0.0, -110.0, 0.0)
    FreezeEntityPosition(door2, false)
end)
function OpenDoor()
    ResetDoor()
    local door = GetClosestObjectOfType(Config.Vault.x, Config.Vault.y, Config.Vault.z, 3.0, GetHashKey("v_ilev_bk_vaultdoor"))
    local rotation = GetEntityRotation(door)["z"]
	Citizen.CreateThread(function()
		FreezeEntityPosition(door, false)

        while rotation >= Config.Vault.endPoint do
            Citizen.Wait(1)

            rotation = rotation - 0.25

            SetEntityRotation(door, 0.0, 0.0, rotation)
        end

		FreezeEntityPosition(door, true)
    end)

end

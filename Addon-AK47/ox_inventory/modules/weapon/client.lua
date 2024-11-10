if not lib then return end

local Weapon = {}
local Items = require 'modules.items.client'
local Utils = require 'modules.utils.client'


local Weapons = data 'weapons'
local BagsMan = data 'bagsman'
local BagsVrouw = data 'bagsvrouw'
local HolstersMan = data 'holstersman'
local HolstersVrouw = data 'holstersvrouw'

exports('hasWhitelistedBag', function()
	if BagsMan[GetPedDrawableVariation(PlayerPedId(), 5)] then
		return true
	elseif BagsVrouw[GetPedDrawableVariation(PlayerPedId(), 5)] then
		return true
	end
end)


local anims = {}
anims[`GROUP_MELEE`] = { 'melee@holster', 'unholster', 200, 'melee@holster', 'holster', 600 }
anims[`GROUP_PISTOL`] = { 'reaction@intimidation@cop@unarmed', 'intro', 400, 'reaction@intimidation@cop@unarmed', 'outro', 450 }
anims[`GROUP_STUNGUN`] = anims[`GROUP_PISTOL`]

local function vehicleIsCycle(vehicle)
	local class = GetVehicleClass(vehicle)
	return class == 8 or class == 13
end

function Weapon.Equip(item, data)
	while cache.pickingWeaponCooldown do Wait(0) end
	local playerPed, sleep = cache.ped, 200

	if client.weaponanims then
		if cache.vehicle and vehicleIsCycle(cache.vehicle) then
			goto skipAnim
		end

		local coords = GetEntityCoords(playerPed, true)
		local anim = data.anim or anims[GetWeapontypeGroup(data.hash)]

		cache.pickingWeaponCooldown = true

		if anim == anims[`GROUP_PISTOL`] and not client.hasGroup(shared.police) and not client.hasGroup(shared.kmar) then
			local currHolster = GetPedDrawableVariation(PlayerPedId(), 7)
			if (IsPedModel(playerPed, "mp_m_freemode_01")) and not HolstersMan[currHolster] then
				anim = nil
			elseif (IsPedModel(playerPed, "mp_f_freemode_01")) and not HolstersVrouw[currHolster] then
				anim = nil
			end
		end

		sleep = anim and anim[3] or 1200

		if item.hash == `WEAPON_SWITCHBLADE` then
			Utils.PlayAnimAdvanced(sleep*2, 'anim@melee@switchblade@holster', 'unholster', coords.x, coords.y, coords.z, 0, 0, GetEntityHeading(playerPed), 8.0, 3.0, -1, 48, 0.1)
			Wait(100)
		else
			local whitelisted = false

			if (IsPedModel(playerPed, "mp_m_freemode_01")) and BagsMan[GetPedDrawableVariation(playerPed, 5)] then
				whitelisted = true
			elseif (IsPedModel(playerPed, "mp_f_freemode_01")) and BagsVrouw[GetPedDrawableVariation(playerPed, 5)] then
				whitelisted = true
			end

			if Weapons['Weapons'][item.name]['heavy'] and whitelisted then
				Utils.PlayAnimAdvanced(750, 'anim@heists@ornate_bank@grab_cash', 'intro', coords.x, coords.y, coords.z, 0, 0, GetEntityHeading(cache.ped), 8.0, 3.0, -1, 50, 0)
				ClearPedTasks(cache.ped)
				SetPedCurrentWeaponVisible(PlayerPedId(), 0, 1, 1, 1)
				Wait(250)
			else
				Utils.PlayAnimAdvanced(sleep*2, anim and anim[1] or 'reaction@intimidation@1h', anim and anim[2] or 'intro', coords.x, coords.y, coords.z, 0, 0, GetEntityHeading(playerPed), 8.0, 3.0, -1, 50, 0.1)
				ClearPedTasks(cache.ped)
--				Wait(sleep)
			end
		end

		--Utils.PlayAnimAdvanced(sleep*2, anim and anim[1] or 'reaction@intimidation@1h', anim and anim[2] or 'intro', coords.x, coords.y, coords.z, 0, 0, GetEntityHeading(playerPed), 8.0, 3.0, -1, 50, 0.1)
		--Wait(sleep)
	end

	::skipAnim::

	SetPedAmmo(playerPed, data.hash, 0)
	GiveWeaponToPed(playerPed, data.hash, 0, false, true)

	if item.metadata.tint then SetPedWeaponTintIndex(playerPed, data.hash, item.metadata.tint) end

	if item.metadata.components then
		for i = 1, #item.metadata.components do
			local components = Items[item.metadata.components[i]].client.component
			for v=1, #components do
				local component = components[v]
				if DoesWeaponTakeWeaponComponent(data.hash, component) then
					if not HasPedGotWeaponComponent(playerPed, data.hash, component) then
						GiveWeaponComponentToPed(playerPed, data.hash, component)
					end
				end
			end
		end
	end

	item.hash = data.hash
	item.ammo = data.ammoname
	item.melee = (not item.throwable and not data.ammoname) and 0
	item.timer = 0

	if data.throwable then item.throwable = true end

	SetCurrentPedWeapon(playerPed, data.hash, true)
	SetPedCurrentWeaponVisible(playerPed, true, false, false, false)
	AddAmmoToPed(playerPed, data.hash, item.metadata.ammo or 100)
	Wait(0)
	RefillAmmoInstantly(playerPed)
	SetWeaponsNoAutoswap(true)

	if data.hash == `WEAPON_PETROLCAN` or data.hash == `WEAPON_HAZARDCAN` or data.hash == `WEAPON_FERTILIZERCAN` or data.hash == `WEAPON_FIREEXTINGUISHER` then
		item.metadata.ammo = item.metadata.durability
		SetPedInfiniteAmmo(playerPed, true, data.hash)
	end

	TriggerEvent('ox_inventory:currentWeapon', item)
	Utils.ItemNotify({ item, 'ui_equipped' })
	Wait(sleep)

	cache.pickingWeaponCooldown = false

	return item
end

function Weapon.Disarm(currentWeapon, noAnim)
	if cache.pickingWeaponCooldown then return end
	if source == '' then
		TriggerServerEvent('ox_inventory:updateWeapon')
	end

	if currentWeapon then
		SetPedAmmo(cache.ped, currentWeapon.hash, 0)

		if client.weaponanims and not noAnim then
			if cache.vehicle and vehicleIsCycle(cache.vehicle) then
				goto skipAnim
			end

			ClearPedSecondaryTask(cache.ped)

			local item = Items[currentWeapon.name]
			local coords = GetEntityCoords(cache.ped, true)
			local anim = item.anim or anims[GetWeapontypeGroup(currentWeapon.hash)]

			if anim == anims[`GROUP_PISTOL`] and not client.hasGroup(shared.police) and not client.hasGroup(shared.kmar)then
				local currHolster = GetPedDrawableVariation(cache.ped, 7)
				if (IsPedModel(cache.ped, "mp_m_freemode_01")) and not HolstersMan[currHolster] then
					anim = nil
				elseif (IsPedModel(cache.ped, "mp_f_freemode_01")) and not HolstersVrouw[currHolster] then
					anim = nil
				end
			end

			local sleep = anim and anim[6] or 1400

			local whitelisted = false

			if (IsPedModel(cache.ped, "mp_m_freemode_01")) and BagsMan[GetPedDrawableVariation(cache.ped, 5)] then
				whitelisted = true
			elseif (IsPedModel(cache.ped, "mp_f_freemode_01")) and BagsVrouw[GetPedDrawableVariation(cache.ped, 5)] then
				whitelisted = true
			end

			if Weapons['Weapons'][item.name]['heavy'] and whitelisted then
				Utils.PlayAnimAdvanced(750, 'anim@heists@ornate_bank@grab_cash', 'intro', coords.x, coords.y, coords.z, 0, 0, GetEntityHeading(cache.ped), 8.0, 3.0, -1, 50, 0)
				ClearPedTasks(cache.ped)
				--Wait(750)
				SetPedCurrentWeaponVisible(PlayerPedId(), 0, 1, 1, 1)
				Wait(250)
			else
				Utils.PlayAnimAdvanced(sleep, anim and anim[4] or 'reaction@intimidation@1h', anim and anim[5] or 'outro', coords.x, coords.y, coords.z, 0, 0, GetEntityHeading(cache.ped), 8.0, 3.0, -1, 50, 0)
				ClearPedTasks(cache.ped)

				--Wait(sleep)
			end
		end

		::skipAnim::

		Utils.ItemNotify({ currentWeapon, 'ui_holstered' })
		TriggerEvent('ox_inventory:currentWeapon')
	end

	Utils.WeaponWheel()
	RemoveAllPedWeapons(cache.ped, true)
end

function Weapon.ClearAll(currentWeapon)
	Weapon.Disarm(currentWeapon)

	if client.parachute then
		local chute = `GADGET_PARACHUTE`
		GiveWeaponToPed(cache.ped, chute, 0, true, false)
		SetPedGadget(cache.ped, chute, true)
	end
end

Utils.Disarm = Weapon.Disarm
Utils.ClearWeapons = Weapon.ClearAll

return Weapon

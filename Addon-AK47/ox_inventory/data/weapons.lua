return {
	Weapons = {
		['WEAPON_GLOCK17'] = {
			label = 'Glock 17',
			weight = 970,
			durability = 0.1,
			ammoname = 'ammo-9',
			maxAmmo = 36,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_M1911'] = {
			label = 'M1911',
			weight = 970,
			durability = 0.1,
			ammoname = 'ammo-9',
			maxAmmo = 36,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_MEOS45'] = {
			label = 'MEOS-45',
			weight = 970,
			durability = 0.1,
			ammoname = 'ammo-45',
			maxAmmo = 12,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_SMITHWESSON'] = {
			label = 'Smith & Wesson',
			weight = 970,
			durability = 0.1,
			ammoname = 'ammo-9',
			maxAmmo = 25,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_P99QNL'] = {
			label = 'Walther P99QNL',
			weight = 970,
			durability = 0.3,
			ammoname = 'ammo-9',
			maxAmmo = 36,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_REMINGTON680'] = {
			label = 'Remington 680',
			weight = 970,
			durability = 0.3,
			ammoname = 'ammo-shotgun',
			maxAmmo = 36,
			heavy = true,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_UMP45'] = {
			label = 'UMP45',
			weight = 3084,
			durability = 0.03,
			ammoname = 'ammo-45',
			maxAmmo = 90,
			heavy = true,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_MAC11'] = {
			label = 'MAC-11',
			weight = 1584,
			durability = 0.03,
			ammoname = 'ammo-45',
			maxAmmo = 30,
			heavy = false,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_UZI'] = {
			label = 'UZI',
			weight = 1584,
			durability = 0.03,
			ammoname = 'ammo-45',
			maxAmmo = 30,
			heavy = true,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},
		['WEAPON_HK416'] = {
			label = 'HK416',
			weight = 3500,
			durability = 0.05,
			ammoname = 'ammo-rifle',
			maxAmmo = 90,
			heavy = true,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},
		
		['WEAPON_MCX'] = {
			label = 'MCX',
			weight = 3500,
			durability = 0.05,
			ammoname = 'ammo-rifle',
			maxAmmo = 90,
			heavy = true,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},


		['WEAPON_AK47'] = {
			label = 'AK-47',
			weight = 3500,
			durability = 0.05,
			ammoname = 'ammo-rifle',
			maxAmmo = 90,
			heavy = true,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_AK47U'] = {
			label = 'AK-47U',
			weight = 3000,
			durability = 0.05,
			ammoname = 'ammo-rifle',
			maxAmmo = 35,
			heavy = true,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_STUNGUN'] = {
			label = 'Taser X2',
			weight = 227,
			durability = 0.1,
		},

		['WEAPON_FLASHLIGHT'] = {
			label = 'Zaklamp',
			weight = 125,
			durability = 0.1,
		},

		['WEAPON_SWITCHBLADE'] = {
			label = 'Switchblade',
			weight = 300,
			durability = 0.1,
			anim = { 'anim@melee@switchblade@holster', 'unholster', 200, 'anim@melee@switchblade@holster', 'holster', 600 },
		},

		['WEAPON_BAYONET'] = {
			label = 'Bayonet',
			weight = 300,
			durability = 0.1,
		},

		['WEAPON_WIREBAT'] = {
			label = 'Barbed Wire Bat',
			weight = 300,
			durability = 0.1,
		},

		['WEAPON_DILDO'] = {
			label = 'Dildo',
			weight = 300,
			durability = 0.1,
		},
 
		['WEAPON_KATANA'] = {
			label = 'Katana',
			weight = 300,
			durability = 0.1,
		},

		['WEAPON_TRI-DAGGER'] = {
			label = 'Tri-Dagger',
			weight = 300,
			durability = 0.1,
		},
		['WEAPON_NIGHTSTICK'] = {
			label = 'Wapenstok',
			weight = 750,
			durability = 0.1,
		},

		['WEAPON_FIREEXTINGUISHER'] = {
			label = 'Brandblusser',
			weight = 2.5,
			durability = 0.1,
		},

-- !Jamie

		['WEAPON_DESERT_EAGLE'] = {
			label = 'Desert Eagle',
			weight = 1584,
			durability = 0.03,
			ammoname = 'ammo-9',
			maxAmmo = 30,
			heavy = false,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_MB47'] = {
			label = 'MB-47',
			weight = 3500,
			durability = 0.05,
			ammoname = 'ammo-rifle',
			maxAmmo = 90,
			heavy = true,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_REMINGTON'] = {
			label = 'Remington 870',
			weight = 970,
			durability = 0.3,
			ammoname = 'ammo-shotgun',
			maxAmmo = 36,
			heavy = true,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_SKORP'] = {
			label = 'Skorpion',
			weight = 1584,
			durability = 0.03,
			ammoname = 'ammo-9',
			maxAmmo = 30,
			heavy = false,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_MP5'] = {
			label = 'MP5',
			weight = 1584,
			durability = 0.03,
			ammoname = 'ammo-9',
			maxAmmo = 30,
			heavy = true,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_VECTOR'] = {
			label = 'Vector',
			weight = 1584,
			durability = 0.03,
			ammoname = 'ammo-45',
			maxAmmo = 30,
			heavy = true,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_A45'] = {
			label = 'A45',
			weight = 1584,
			durability = 0.03,
			ammoname = 'ammo-9',
			maxAmmo = 30,
			heavy = false,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},

		['WEAPON_P90'] = {
			label = 'P90',
			weight = 3500,
			durability = 0.05,
			ammoname = 'ammo-rifle',
			maxAmmo = 90,
			heavy = true,
			buttons = {
				{
					label = 'Wapen ontladen',
					action = function(slot)
						TriggerEvent('ox_inventory:unloadAmmo', slot)
					end
				},
			}
		},
	},

	Components = {
--[[ 		['at_flashlight'] = {
			label = 'Tactical Flashlight',
			weight = 120,
			type = 'flashlight',
			client = {
				component = { `COMPONENT_AT_PI_FLSH`, `COMPONENT_AT_AR_FLSH`, `COMPONENT_AT_PI_FLSH_02`, `COMPONENT_AT_AR_FLSH_REH` },
				usetime = 2500
			}
		},

		['at_suppressor_light'] = {
			label = 'Suppressor',
			weight = 280,
			type = 'barrel',
			client = {
				component = {`COMPONENT_AT_PI_SUPP`, `COMPONENT_AT_PI_SUPP_02`},
				usetime = 2500
			}
		},

		['at_suppressor_heavy'] = {
			label = 'Tactical Suppressor',
			weight = 280,
			type = 'barrel',
			client = {
				component = {`COMPONENT_AT_AR_SUPP`, `COMPONENT_AT_AR_SUPP_02`, `COMPONENT_AT_SR_SUPP`, `COMPONENT_AT_SR_SUPP_03`},
				usetime = 2500
			}
		}, ]]

--[[ 		['at_grip'] = {
			label = 'Grip Tape',
			type = 'grip',
			weight = 280,
			client = {
				component = {`COMPONENT_AT_AR_AFGRIP`, `COMPONENT_AT_AR_AFGRIP_02`},
				usetime = 2500
			}
		}, ]]

--[[ 		['at_barrel'] = {
			label = 'Heavy Barrel',
			type = 'barrel',
			weight = 280,
			client = {
				component = {`COMPONENT_AT_SR_BARREL_01`,`COMPONENT_AT_MRFL_BARREL_02`,`COMPONENT_AT_MG_BARREL_02`,`COMPONENT_AT_SC_BARREL_02`, `COMPONENT_AT_CR_BARREL_02`, `COMPONENT_AT_BP_BARREL_02`},
				usetime = 2500
			}
		}, ]]

--[[ 		['at_clip_extended_pistol'] = {
			label = 'Extended Pistol Clip',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_PISTOL_CLIP_02`, `COMPONENT_APPISTOL_CLIP_02`, `COMPONENT_PISTOL_MK2_CLIP_02`, `COMPONENT_SNSPISTOL_MK2_CLIP_02`, `COMPONENT_COMBATPISTOL_CLIP_02`, `COMPONENT_PISTOL50_CLIP_02`, `COMPONENT_HEAVYPISTOL_CLIP_02`, `COMPONENT_SNSPISTOL_CLIP_02`, `COMPONENT_VINTAGEPISTOL_CLIP_02`},
				usetime = 2500
			}
		}, ]]
--[[ 
		['at_clip_extended_smg'] = {
			label = 'Extended SMG Clip',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_SMG_CLIP_02`, `COMPONENT_SMG_MK2_CLIP_02`, `COMPONENT_ASSAULTSMG_CLIP_02`, `COMPONENT_MICROSMG_CLIP_02`, `COMPONENT_MINISMG_CLIP_02`, `COMPONENT_COMBATPDW_CLIP_02`, `COMPONENT_MACHINEPISTOL_CLIP_02`},
				usetime = 2500
			}
		},

		['at_clip_extended_shotgun'] = {
			label = 'Extended Shotgun Clip',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_HEAVYSHOTGUN_CLIP_02`, `COMPONENT_ASSAULTSHOTGUN_CLIP_02`},
				usetime = 2500
			}
		},

		['at_clip_extended_rifle'] = {
			label = 'Extended Rifle Clip',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_ASSAULTRIFLE_CLIP_02`, `COMPONENT_CARBINERIFLE_CLIP_02`, `COMPONENT_MILITARYRIFLE_CLIP_02`, `COMPONENT_ADVANCEDRIFLE_CLIP_02`, `COMPONENT_SPECIALCARBINE_CLIP_02`, `COMPONENT_BULLPUPRIFLE_CLIP_02`, `COMPONENT_COMPACTRIFLE_CLIP_02`, `COMPONENT_ASSAULTRIFLE_MK2_CLIP_02`, `COMPONENT_CARBINERIFLE_MK2_CLIP_02`, `COMPONENT_SPECIALCARBINE_MK2_CLIP_02`, `COMPONENT_BULLPUPRIFLE_MK2_CLIP_02`},
				usetime = 2500
			}
		},

		['at_clip_extended_mg'] = {
			label = 'Extended MG Clip',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_MG_CLIP_02`, `COMPONENT_COMBATMG_CLIP_02`, `COMPONENT_GUSENBERG_CLIP_02`, `COMPONENT_COMBATMG_MK2_CLIP_02`},
				usetime = 2500
			}
		}, ]]

--[[ 		['at_clip_extended_sniper'] = {
			label = 'Extended Sniper Clip',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_MARKSMANRIFLE_CLIP_02`, `COMPONENT_HEAVYSNIPER_MK2_CLIP_02`, `COMPONENT_MARKSMANRIFLE_MK2_CLIP_02`},
				usetime = 2500
			}
		},

		['at_clip_drum_smg'] = {
			label = 'SMG Drum Clip',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_MACHINEPISTOL_CLIP_03`, `COMPONENT_SMG_CLIP_03`, `COMPONENT_COMBATPDW_CLIP_03`},
				usetime = 2500
			}
		},

		['at_clip_drum_shotgun'] = {
			label = 'Shotgun Drum Clip',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_HEAVYSHOTGUN_CLIP_03`},
				usetime = 2500
			}
		}, ]]

		-- ['at_clip_drum_rifle'] = {
		-- 	label = 'Rifle Drum Clip',
		-- 	type = 'magazine',
		-- 	weight = 280,
		-- 	client = {
		-- 		component = {`COMPONENT_COMPACTRIFLE_CLIP_03`, `COMPONENT_CARBINERIFLE_CLIP_03`, `COMPONENT_SPECIALCARBINE_CLIP_03`},
		-- 		usetime = 2500
		-- 	}
		-- },

--[[ 		['at_compensator'] = {
			label = 'Compensator',
			type = 'barrel',
			weight = 280,
			client = {
				component = {`COMPONENT_AT_PI_COMP_02`, `COMPONENT_AT_PI_COMP_03`, `COMPONENT_AT_PI_COMP`},
				usetime = 2500
			}
		}, ]]

		-- ['at_scope_small'] = {
		-- 	label = 'Sight',
		-- 	type = 'sight',
		-- 	weight = 280,
		-- 	client = {
		-- 		component = {`COMPONENT_AT_SIGHTS`, `COMPONENT_AT_SCOPE_MACRO_02`, `COMPONENT_AT_SCOPE_MACRO_02_MK2`, `COMPONENT_AT_SCOPE_SMALL`, `COMPONENT_AT_SCOPE_SMALL_02`, `COMPONENT_AT_SCOPE_SMALL_MK2`, `COMPONENT_AT_SCOPE_MACRO_MK2`},
		-- 		usetime = 2500
		-- 	}
		-- },

--[[ 		['at_scope_macro'] = {
			label = 'Holosight',
			type = 'sight',
			weight = 280,
			client = {
				component = {`COMPONENT_AT_SCOPE_MACRO`},
				usetime = 2500
			}
		}, ]]

--[[ 		['at_scope_medium'] = {
			label = 'Scope',
			type = 'sight',
			weight = 280,
			client = {
				component = {`COMPONENT_AT_SCOPE_MEDIUM`, `COMPONENT_AT_SCOPE_MEDIUM_MK2`, `COMPONENT_AT_PI_RAIL_02`, `COMPONENT_AT_PI_RAIL`},
				usetime = 2500
			}
		},

		['at_scope_advanced'] = {
			label = 'Advanced Scope',
			type = 'sight',
			weight = 280,
			client = {
				component = {`COMPONENT_AT_SCOPE_MAX`},
				usetime = 2500
			}
		},

		['at_scope_zoom'] = {
			label = 'Zoom Scope',
			type = 'sight',
			weight = 280,
			client = {
				component = {`COMPONENT_AT_SCOPE_LARGE_MK2`},
				usetime = 2500
			}
		},

		['at_scope_nv'] = {
			label = 'NV Scope',
			type = 'sight',
			weight = 420,
			client = {
				component = {`COMPONENT_AT_SCOPE_NV`},
				usetime = 2500
			}
		},

		['at_scope_thermal'] = {
			label = 'Thermal Scope',
			type = 'sight',
			weight = 420,
			client = {
				component = {`COMPONENT_AT_SCOPE_THERMAL`},
				usetime = 2500
			}
		},

		['at_muzzle_squared'] = {
			label = 'Squared Muzzle',
			type = 'barrel',
			weight = 80,
			client = {
				component = {`COMPONENT_AT_MUZZLE_08`},
				usetime = 2500
			}
		},

		['at_muzzle_bell'] = {
			label = 'Bell Muzzle',
			type = 'barrel',
			weight = 80,
			client = {
				component = {`COMPONENT_AT_MUZZLE_09`},
				usetime = 2500
			}
		},

		['at_muzzle_flat'] = {
			label = 'Flat Muzzle',
			type = 'barrel',
			weight = 80,
			client = {
				component = {`COMPONENT_AT_MUZZLE_01`},
				usetime = 2500
			}
		},

		['at_muzzle_tactical'] = {
			label = 'Tactical Muzzle',
			type = 'barrel',
			weight = 80,
			client = {
				component = {`COMPONENT_AT_MUZZLE_02`},
				usetime = 2500
			}
		},

		['at_muzzle_fat'] = {
			label = 'Fat Muzzle',
			type = 'barrel',
			weight = 80,
			client = {
				component = {`COMPONENT_AT_MUZZLE_03`},
				usetime = 2500
			}
		},

		['at_muzzle_precision'] = {
			label = 'Precision Muzzle',
			type = 'barrel',
			weight = 80,
			client = {
				component = {`COMPONENT_AT_MUZZLE_04`},
				usetime = 2500
			}
		},

		['at_muzzle_heavy'] = {
			label = 'Heavy Muzzle',
			type = 'barrel',
			weight = 80,
			client = {
				component = {`COMPONENT_AT_MUZZLE_05`},
				usetime = 2500
			}
		},

		['at_muzzle_slanted'] = {
			label = 'Slanted Muzzle',
			type = 'barrel',
			weight = 80,
			client = {
				component = {`COMPONENT_AT_MUZZLE_06`},
				usetime = 2500
			}
		},

		['at_muzzle_split'] = {
			label = 'Split Muzzle',
			type = 'barrel',
			weight = 80,
			client = {
				component = {`COMPONENT_AT_MUZZLE_07`},
				usetime = 2500
			}
		}, ]]

-- Mp5

		['w_at_mp5_supp_02'] = {
			label = 'MP5 Suppressor',
			type = 'barrel',
			weight = 50,
			client = {
				component = {`w_at_mp5_supp_02`},
				usetime = 2500
			}
		},

		['w_at_scope_mp5'] = {
			label = 'MP5 Holosight',
			type = 'sight',
			weight = 50,
			client = {
				component = {`w_at_scope_mp5`},
				usetime = 2500
			}
		},

-- Mp5

-- MB47

		['markomods-shared-scope1'] = {
			label = 'MB-47 Holosight',
			type = 'sight',
			weight = 50,
			client = {
				component = {`COMPONENT_MARKOMODS_SHARED_SCOPE_01`},
				usetime = 2500
			}
		},

		['markomods-shared-scope8'] = {
			label = 'MB-47 Red Dot',
			type = 'sight',
			weight = 50,
			client = {
				component = {`COMPONENT_MARKOMODS_SHARED_SCOPE_08`},
				usetime = 2500
			}
		},

		['markomods-shared-supp12'] = {
			label = 'MB-47 Suppressor',
			type = 'barrel',
			weight = 50,
			client = {
				component = {`COMPONENT_MARKOMODS_SHARED_SUPP_12`},
				usetime = 2500
			}
		},

-- MB47

--AK47 Camo's

		['w_ar_ak47_luxe'] = {
			label = 'AK-47 Gold Camo',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_AK47_CAMO_GOLD`},
				usetime = 2500
			}
		},

		['at_ak47_camo_silver'] = {
			label = 'AK-47 Silver Camo',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_AK47_CAMO_SILVER`},
				usetime = 2500
			}
		},

		['at_ak47_camo_redtiger'] = {
			label = 'AK-47 Red Tiger Camo',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_AK47_CAMO_REDTIGER`},
				usetime = 2500
			}
		},

		['at_ak47_camo_roze'] = {
			label = 'AK-47 Roze Camo',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_AK47_CAMO_ROZE`},
				usetime = 2500
			}
		},

		['w_ar_ak47_darkmatter'] = {
			label = 'AK-47 Darkmatter Camo',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_AK47_CAMO_DARKMATTER`},
				usetime = 2500
			}
		},

		['w_ar_ak47_groen'] = {
			label = 'AK-47 Groene Camo',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_AK47_CAMO_GROEN`},
				usetime = 2500
			}
		},

		['w_ar_ak47_blauw'] = {
			label = 'AK-47 Blauwe Camo',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_AK47_CAMO_BLAUW`},
				usetime = 2500
			}
		},

-- AK47 Camo's

		['at_ak47_suppressor'] = {
			label = 'AK-47 Suppressor',
			weight = 280,
			type = 'barrel',
			client = {
				component = {`COMPONENT_AK47_SUPP`},
				usetime = 2500
			}
		},

		['at_ak47_flashlight'] = {
			label = 'AK-47 Flashlight',
			weight = 280,
			type = 'flashlight',
			client = {
				component = {`COMPONENT_AK47_FLASH`},
				usetime = 2500
			}
		},

		['at_ak47_scope_1'] = {
			label = 'AK-47 Reflex Scope',
			type = 'sight',
			weight = 280,
			client = {
				component = {`COMPONENT_AK47_SCOPE_1`},
				usetime = 2500
			}
		},

		['at_ak47_clip_extended'] = {
			label = 'AK-47 Extended Mag',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_AK47_CLIP_EXTENDED`},
				usetime = 2500
			}
		},

		['at_ak47_clip_drummag'] = {
			label = 'AK-47 Drum Mag',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_AK47_CLIP_DRUMMAG`},
				usetime = 2500
			}
		},

		['at_ak47_grip'] = {
			label = 'AK-47 Grip',
			type = 'grip',
			weight = 280,
			client = {
				component = {`COMPONENT_AK47_GRIP`},
				usetime = 2500
			}
		},

		['at_ak47u_clip_extended'] = {
			label = 'AK-47U Extended Mag',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_AK47U_CLIP_EXTENDED`},
				usetime = 2500
			}
		},

		['at_glock_clip_extended'] = {
			label = 'GLOCK 17 Extended Mag',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_GLOCK17_CLIP_EXTENDED`},
				usetime = 2500
			}
		},

		['at_glock_flashlight'] = {
			label = 'GLOCK 17 Flashlight',
			weight = 280,
			type = 'flashlight',
			client = {
				component = {`COMPONENT_GLOCK17_FLASH`},
				usetime = 2500
			}
		},

		['at_glock_suppressor'] = {
			label = 'GLOCK 17 Suppressor',
			weight = 280,
			type = 'barrel',
			client = {
				component = {`COMPONENT_GLOCK17_SUPP`},
				usetime = 2500
			}
		},

-- M1911 Camo's

		['w_pi_m1911_darkmatter'] = {
			label = 'M1911 Darkmatter Camo',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_M1911_CAMO_DARKMATTER`},
				usetime = 2500
			}
		},

		['w_pi_m1911_roze'] = {
			label = 'M1911 Roze Camo',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_M1911_CAMO_ROZE`},
				usetime = 2500
			}
		},

-- M1911 Camo's

		['at_m1911_clip_extended'] = {
			label = 'M1911 Extended Mag',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_M1911_CLIP_EXTENDED`},
				usetime = 2500
			}
		},

		['at_m1911_suppressor'] = {
			label = 'M1911 Suppressor',
			weight = 280,
			type = 'barrel',
			client = {
				component = {`COMPONENT_M1911_SUPP`},
				usetime = 2500
			}
		},

		['at_m1911_flashlight'] = {
			label = 'M1911 Flashlight',
			weight = 280,
			type = 'flashlight',
			client = {
				component = {`COMPONENT_M1911_FLASH`},
				usetime = 2500
			}
		},

		['at_meos45_clip_extended'] = {
			label = 'MEOS-45 Extended Mag',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_meos45_CLIP_02`},
				usetime = 2500
			}
		},

		['at_meos45_suppressor'] = {
			label = 'MEOS-45 Suppressor',
			weight = 280,
			type = 'barrel',
			client = {
				component = {`COMPONENT_AT_PI_SUPP`},
				usetime = 2500
			}
		},

		['at_meos45_flashlight'] = {
			label = 'MEOS-45 Flashlight',
			weight = 280,
			type = 'flashlight',
			client = {
				component = {`COMPONENT_AT_PI_FLSH`},
				usetime = 2500
			}
		},

		['at_smithwesson_clip_extended'] = {
			label = 'Smith & Wesson Extended Mag',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_SMITHWESSON_CLIP_EXTENDED`},
				usetime = 2500
			}
		},

		['at_smithwesson_suppressor'] = {
			label = 'Smith & Wesson Suppressor',
			weight = 280,
			type = 'barrel',
			client = {
				component = {`COMPONENT_SMITHWESSON_SUPP`},
				usetime = 2500
			}
		},

		['at_smithwesson_flashlight'] = {
			label = 'Smith & Wesson Flashlight',
			weight = 280,
			type = 'flashlight',
			client = {
				component = {`COMPONENT_SMITHWESSON_FLASH`},
				usetime = 2500
			}
		},

		['at_ump45_suppressor'] = {
			label = 'UMP45 Suppressor',
			weight = 280,
			type = 'barrel',
			client = {
				component = {`COMPONENT_UMP45_SUPP`},
				usetime = 2500
			}
		},

		['at_ump45_flashlight'] = {
			label = 'UMP45 Flashlight',
			weight = 280,
			type = 'flashlight',
			client = {
				component = {`COMPONENT_UMP45_FLASH`},
				usetime = 2500
			}
		},

		['at_ump45_scope_1'] = {
			label = 'UMP45 Reflex Scope',
			type = 'sight',
			weight = 280,
			client = {
				component = {`COMPONENT_UMP45_SCOPE_1`},
				usetime = 2500
			}
		},

		['at_ump45_clip_extended'] = {
			label = 'UMP45 Extended Mag',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_UMP45_CLIP_EXTENDED`},
				usetime = 2500
			}
		},

		['at_ump45_grip'] = {
			label = 'UMP45 Grip',
			type = 'grip',
			weight = 280,
			client = {
				component = {`COMPONENT_UMP45_GRIP`},
				usetime = 2500
			}
		},

		['at_ump45_camo_redtiger'] = {
			label = 'UMP45 Red Tiger Camo',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_UMP45_CAMO_REDTIGER`},
				usetime = 2500
			}
		},

		['at_mac11_clip_extended'] = {
			label = 'MAC-11 Extended Mag',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_MAC11_CLIP_EXTENDED`},
				usetime = 2500
			}
		},

		['at_mac11_suppressor'] = {
			label = 'MAC-11 Suppressor',
			weight = 280,
			type = 'barrel',
			client = {
				component = {`COMPONENT_MAC11_SUPP`},
				usetime = 2500
			}
		},

		['at_mcx_suppressor'] = {
			label = 'MCX Suppressor',
			weight = 280,
			type = 'barrel',
			client = {
				component = {`COMPONENT_AT_MCX_SUPP`},
				usetime = 2500
			}
		},

		['at_mcx_scope_1'] = {
			label = 'MCX Reflex Scope',
			type = 'sight',
			weight = 280,
			client = {
				component = {`COMPONENT_AT_MCX_SCOPE_MEDIUM`},
				usetime = 2500
			}
		},

		['at_hk416_suppressor'] = {
			label = 'HK416 Suppressor',
			weight = 280,
			type = 'barrel',
			client = {
				component = {`COMPONENT_HK416_SUPP`},
				usetime = 2500
			}
		},

		['at_hk416_flashlight'] = {
			label = 'HK416 Flashlight',
			weight = 280,
			type = 'flashlight',
			client = {
				component = {`COMPONENT_HK416_FLASH`},
				usetime = 2500
			}
		},

		['at_hk416_scope_1'] = {
			label = 'HK416 Reflex Scope',
			type = 'sight',
			weight = 280,
			client = {
				component = {`COMPONENT_HK416_SCOPE_MEDIUM`},
				usetime = 2500
			}
		},

		['at_hk416_scope_2'] = {
			label = 'HK416 Holosight',
			type = 'sight',
			weight = 280,
			client = {
				component = {`COMPONENT_HK416_SCOPE_MACRO`},
				usetime = 2500
			}
		},

		['at_hk416_clip_extended'] = {
			label = 'HK416 Extended Mag',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_HK416_CLIP_EXTENDED`},
				usetime = 2500
			}
		},

		['at_uzi_suppressor_1'] = {
			label = 'UZI Suppressor Round',
			weight = 280,
			type = 'barrel',
			client = {
				component = {`COMPONENT_MARKOMODSUZI_SUPP_01`},
				usetime = 2500
			}
		},
		['at_uzi_suppressor_2'] = {
			label = 'UZI Suppressor Square',
			weight = 280,
			type = 'barrel',
			client = {
				component = {`COMPONENT_MARKOMODSUZI_SUPP_02`},
				usetime = 2500
			}
		},

		['at_uzi_stock_1'] = {
			label = 'UZI Stock Compact',
			weight = 280,
			type = 'stock',
			client = {
				component = {`COMPONENT_MARKOMODSUZI_STOCK_01`},
				usetime = 2500
			}
		},

		['at_uzi_stock_2'] = {
			label = 'UZI Stock Long',
			weight = 280,
			type = 'stock',
			client = {
				component = {`COMPONENT_MARKOMODSUZI_STOCK_02`},
				usetime = 2500
			}
		},


		['at_uzi_clip_extended_2'] = {
			label = 'UZI Extended Mag',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_MARKOMODSUZI_CLIP_03`},
				usetime = 2500
			}
		},

		['at_uzi_clip_extended_3'] = {
			label = 'UZI Drum Mag',
			type = 'magazine',
			weight = 280,
			client = {
				component = {`COMPONENT_MARKOMODSUZI_CLIP_04`},
				usetime = 2500
			}
		},

		['at_uzi_scope_3'] = {
			label = 'UZI Reflex Sight',
			type = 'sight',
			weight = 280,
			client = {
				component = {`COMPONENT_MARKOMODSUZI_SCOPE_03`},
				usetime = 2500
			}
		},

		['at_uzi_scope_4'] = {
			label = 'UZI Red Dot Mk2',
			type = 'sight',
			weight = 280,
			client = {
				component = {`COMPONENT_MARKOMODSUZI_SCOPE_04`},
				usetime = 2500
			}
		},

		['at_uzi_scope_5'] = {
			label = 'UZI Red Dot Mk3',
			type = 'sight',
			weight = 280,
			client = {
				component = {`COMPONENT_MARKOMODSUZI_SCOPE_05`},
				usetime = 2500
			}
		},

		['at_uzi_scope_6'] = {
			label = 'UZI Red Dot',
			type = 'sight',
			weight = 280,
			client = {
				component = {`COMPONENT_MARKOMODSUZI_SCOPE_06`},
				usetime = 2500
			}
		},
--[[ 		['at_skin_camo'] = {
			label = 'Camo Weapon Kit',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_HEAVYSNIPER_MK2_CAMO`, `COMPONENT_MARKSMANRIFLE_MK2_CAMO`,`COMPONENT_COMBATMG_MK2_CAMO`,`COMPONENT_PUMPSHOTGUN_MK2_CAMO`,`COMPONENT_ASSAULTRIFLE_MK2_CAMO`, `COMPONENT_CARBINERIFLE_MK2_CAMO`, `COMPONENT_SPECIALCARBINE_MK2_CAMO`, `COMPONENT_BULLPUPRIFLE_MK2_CAMO`, `COMPONENT_BULLPUPRIFLE_VARMOD_LOW`, `COMPONENT_MG_VARMOD_LOWRIDER`,`COMPONENT_SNSPISTOL_MK2_CAMO`, `COMPONENT_REVOLVER_MK2_CAMO`, `COMPONENT_PISTOL_MK2_CAMO`},
				usetime = 2500
			}
		},

		['at_skin_brushstroke'] = {
			label = 'Brushstroke Weapon Kit',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_HEAVYSNIPER_MK2_CAMO_02`, `COMPONENT_MARKSMANRIFLE_MK2_CAMO_02`,`COMPONENT_COMBATMG_MK2_CAMO_02`,`COMPONENT_PUMPSHOTGUN_MK2_CAMO_02`,`COMPONENT_ASSAULTRIFLE_MK2_CAMO_02`, `COMPONENT_CARBINERIFLE_MK2_CAMO_02`, `COMPONENT_SPECIALCARBINE_MK2_CAMO_02`, `COMPONENT_BULLPUPRIFLE_MK2_CAMO_02`,`COMPONENT_PISTOL_MK2_CAMO_02`, `COMPONENT_REVOLVER_MK2_CAMO_02`, `COMPONENT_SNSPISTOL_MK2_CAMO_02`},
				usetime = 2500
			}
		},

		['at_skin_woodland'] = {
			label = 'Woodland Weapon Kit',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_HEAVYSNIPER_MK2_CAMO_03`, `COMPONENT_MARKSMANRIFLE_MK2_CAMO_03`,`COMPONENT_COMBATMG_MK2_CAMO_03`,`COMPONENT_PUMPSHOTGUN_MK2_CAMO_03`,`COMPONENT_ASSAULTRIFLE_MK2_CAMO_03`, `COMPONENT_CARBINERIFLE_MK2_CAMO_03`, `COMPONENT_SPECIALCARBINE_MK2_CAMO_03`, `COMPONENT_BULLPUPRIFLE_MK2_CAMO_03`,`COMPONENT_PISTOL_MK2_CAMO_03`, `COMPONENT_REVOLVER_MK2_CAMO_03`, `COMPONENT_SNSPISTOL_MK2_CAMO_03`},
				usetime = 2500
			}
		},

		['at_skin_skull'] = {
			label = 'Skull Weapon Kit',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_HEAVYSNIPER_MK2_CAMO_04`, `COMPONENT_MARKSMANRIFLE_MK2_CAMO_04`, `COMPONENT_COMBATMG_MK2_CAMO_04`, `COMPONENT_PUMPSHOTGUN_MK2_CAMO_04`, `COMPONENT_ASSAULTRIFLE_MK2_CAMO_04`, `COMPONENT_CARBINERIFLE_MK2_CAMO_04`, `COMPONENT_SPECIALCARBINE_MK2_CAMO_04`, `COMPONENT_BULLPUPRIFLE_MK2_CAMO_04`, `COMPONENT_PISTOL_MK2_CAMO_04`, `COMPONENT_REVOLVER_MK2_CAMO_04`, `COMPONENT_SNSPISTOL_MK2_CAMO_04`},
				usetime = 2500
			}
		},

		['at_skin_sessanta'] = {
			label = 'Sessanta Weapon Kit',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_HEAVYSNIPER_MK2_CAMO_05`, `COMPONENT_MARKSMANRIFLE_MK2_CAMO_05`, `COMPONENT_COMBATMG_MK2_CAMO_05`, `COMPONENT_PUMPSHOTGUN_MK2_CAMO_05`, `COMPONENT_ASSAULTRIFLE_MK2_CAMO_05`, `COMPONENT_CARBINERIFLE_MK2_CAMO_05`, `COMPONENT_SPECIALCARBINE_MK2_CAMO_05`, `COMPONENT_BULLPUPRIFLE_MK2_CAMO_05`, `COMPONENT_PISTOL_MK2_CAMO_05`, `COMPONENT_REVOLVER_MK2_CAMO_05`, `COMPONENT_SNSPISTOL_MK2_CAMO_05`},
				usetime = 2500
			}
		},

		['at_skin_perseus'] = {
			label = 'Perseus Weapon Kit',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_HEAVYSNIPER_MK2_CAMO_06`, `COMPONENT_MARKSMANRIFLE_MK2_CAMO_06`, `COMPONENT_COMBATMG_MK2_CAMO_06`, `COMPONENT_PUMPSHOTGUN_MK2_CAMO_06`, `COMPONENT_ASSAULTRIFLE_MK2_CAMO_06`, `COMPONENT_CARBINERIFLE_MK2_CAMO_06`, `COMPONENT_SPECIALCARBINE_MK2_CAMO_06`, `COMPONENT_BULLPUPRIFLE_MK2_CAMO_06`, `COMPONENT_PISTOL_MK2_CAMO_06`, `COMPONENT_REVOLVER_MK2_CAMO_06`, `COMPONENT_SNSPISTOL_MK2_CAMO_06`},
				usetime = 2500
			}
		},

		['at_skin_leopard'] = {
			label = 'Leopard Weapon Kit',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_HEAVYSNIPER_MK2_CAMO_07`, `COMPONENT_MARKSMANRIFLE_MK2_CAMO_07`, `COMPONENT_COMBATMG_MK2_CAMO_07`, `COMPONENT_PUMPSHOTGUN_MK2_CAMO_07`, `COMPONENT_ASSAULTRIFLE_MK2_CAMO_07`, `COMPONENT_CARBINERIFLE_MK2_CAMO_07`, `COMPONENT_SPECIALCARBINE_MK2_CAMO_07`, `COMPONENT_BULLPUPRIFLE_MK2_CAMO_07`, `COMPONENT_PISTOL_MK2_CAMO_07`, `COMPONENT_REVOLVER_MK2_CAMO_07`, `COMPONENT_SNSPISTOL_MK2_CAMO_07`},
				usetime = 2500
			}
		},

		['at_skin_zebra'] = {
			label = 'Zebra Weapon Kit',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_HEAVYSNIPER_MK2_CAMO_08`, `COMPONENT_MARKSMANRIFLE_MK2_CAMO_08`,`COMPONENT_COMBATMG_MK2_CAMO_08`, `COMPONENT_PUMPSHOTGUN_MK2_CAMO_08`, `COMPONENT_ASSAULTRIFLE_MK2_CAMO_08`, `COMPONENT_CARBINERIFLE_MK2_CAMO_08`, `COMPONENT_SPECIALCARBINE_MK2_CAMO_08`, `COMPONENT_BULLPUPRIFLE_MK2_CAMO_08`, `COMPONENT_PISTOL_MK2_CAMO_08`, `COMPONENT_REVOLVER_MK2_CAMO_08`, `COMPONENT_SNSPISTOL_MK2_CAMO_08`},
				usetime = 2500
			}
		},

		['at_skin_geometric'] = {
			label = 'Geometric Weapon Kit',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_HEAVYSNIPER_MK2_CAMO_09`, `COMPONENT_MARKSMANRIFLE_MK2_CAMO_09`, `COMPONENT_COMBATMG_MK2_CAMO_09`, `COMPONENT_PUMPSHOTGUN_MK2_CAMO_09`,`COMPONENT_ASSAULTRIFLE_MK2_CAMO_09`, `COMPONENT_CARBINERIFLE_MK2_CAMO_09`, `COMPONENT_SPECIALCARBINE_MK2_CAMO_09`, `COMPONENT_BULLPUPRIFLE_MK2_CAMO_09`, `COMPONENT_PISTOL_MK2_CAMO_09`, `COMPONENT_REVOLVER_MK2_CAMO_09`, `COMPONENT_SNSPISTOL_MK2_CAMO_09`},
				usetime = 2500
			}
		},

		['at_skin_boom'] = {
			label = 'Boom Weapon Kit',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_HEAVYSNIPER_MK2_CAMO_10`, `COMPONENT_MARKSMANRIFLE_MK2_CAMO_10`, `COMPONENT_COMBATMG_MK2_CAMO_10`, `COMPONENT_PUMPSHOTGUN_MK2_CAMO_10`, `COMPONENT_ASSAULTRIFLE_MK2_CAMO_10`, `COMPONENT_CARBINERIFLE_MK2_CAMO_10`, `COMPONENT_SPECIALCARBINE_MK2_CAMO_10`, `COMPONENT_BULLPUPRIFLE_MK2_CAMO_10`, `COMPONENT_PISTOL_MK2_CAMO_10`, `COMPONENT_REVOLVER_MK2_CAMO_10`, `COMPONENT_SNSPISTOL_MK2_CAMO_10`},
				usetime = 2500
			}
		},

		['at_skin_patriotic'] = {
			label = 'Patriotic Weapon Kit',
			type = 'skin',
			weight = 50,
			client = {
				component = {`COMPONENT_HEAVYSNIPER_MK2_CAMO_IND_01`, `COMPONENT_MARKSMANRIFLE_MK2_CAMO_IND_01`, `COMPONENT_COMBATMG_MK2_CAMO_IND_01`, `COMPONENT_PUMPSHOTGUN_MK2_CAMO_IND_01`, `COMPONENT_ASSAULTRIFLE_MK2_CAMO_IND_01`, `COMPONENT_CARBINERIFLE_MK2_CAMO_IND_01`, `COMPONENT_SPECIALCARBINE_MK2_CAMO_IND_01`, `COMPONENT_BULLPUPRIFLE_MK2_CAMO_IND_01`, `COMPONENT_SNSPISTOL_MK2_CAMO_IND_01_SLIDE`, `COMPONENT_REVOLVER_MK2_CAMO_IND_01`, `COMPONENT_PISTOL_MK2_CAMO_IND_01`},
				usetime = 2500
			}
		}, ]]
	},

	Ammo = {
		['ammo-45'] = {
			label = '.45 ACP',
			weight = 9,
		},

		['ammo-9'] = {
			label = '9mm',
			weight = 8,
		},

		['ammo-rifle'] = {
			label = '5.56',
			weight = 4,
		},

		['ammo-shotgun'] = {
			label = '12 Gauge',
			weight = 38,
		},

		['ammo-sniper'] = {
			label = '7.62',
			weight = 11,
		}
	}
}

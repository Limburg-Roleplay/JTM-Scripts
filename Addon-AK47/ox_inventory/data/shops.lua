---wip types

---@class OxShop
---@field name string
---@field blip? { id: number, colour: number, scale: number }
---@field inventory { name: string, price: number, count?: number, currency?: string }
---@field locations? vector3[]
---@field targets? { loc: vector3, length: number, width: number, heading: number, minZ: number, maxZ: number, distance: number, debug?: boolean, drawSprite?: boolean }[]
---@field groups? string | string[] | { [string]: number }

return {
	General = {
		name = 'Supermarkt',
		blip = {
			id = 52, colour = 0, scale = 0.8
		}, inventory = {
			{ name = 'bread', price = 4 },
			{ name = 'sausageroll', price = 5 },
			{ name = 'pizza', price = 7 },
			{ name = 'hotdog', price = 6 },
			{ name = 'burger', price = 11 },
			{ name = 'cheeseburger', price = 10 },
			{ name = 'chips', price = 4 },
			{ name = 'burrito', price = 12 },
			{ name = 'taco', price = 5 },
			{ name = 'chocolatebar', price = 3 },
			{ name = 'donut', price = 2 },
			{ name = 'fruitdoughnut', price = 2 },
			{ name = 'appleflap', price = 3 },
			{ name = 'fries', price = 9 },

			{ name = 'water', price = 6 },
			{ name = 'icetea', price = 8 },
			{ name = 'cola', price = 8 },
			{ name = 'fanta', price = 8 },
			{ name = 'sprite', price = 8 },
			{ name = 'monsterenergy', price = 9 },
			{ name = 'chocomel', price = 12 },
			{ name = 'coffee', price = 3 },
			{ name = 'fristi', price = 5 },
			{ name = 'repairkit', price = 1500},
		}, locations = {
			vec3(26.45, -1347.72, 29.49),
			vec3(-3038.98, 586.72, 7.90),
			vec3(-3241.47, 1002.12, 12.830),
			vec3(1729.57, 6413.92, 35.037),
			vec3(1697.99, 4924.4, 42.06),
			vec3(1962.13, 3740.65, 32.34),
			vec3(546.90, 2671.61, 42.15),
			vec3(2679.46, 3281.00, 55.241),
			vec3(2558.00, 382.96, 108.62),
			vec3(374.55, 325.36, 103.56),
			vec3(1135.808, -982.281, 46.415),
			vec3(-1222.915, -906.983, 12.326),
			vec3(-1487.553, -379.107, 40.163),
			vec3(-2968.243, 390.910, 15.043),
			vec3(1166.024, 2708.930, 38.157),
			vec3(1392.562, 3604.684, 34.980),
			vec3(-1393.409, -606.624, 30.319),
			vec3(-48.75, -1757.93, 29.4210),
			vec3(-707.92, -914.57, 19.21),
			vec3(1163.19, -323.98, 69.20),
			vec3(-1820.72, 792.32, 138.11),
			vec3(161.8304, 6639.7686, 31.6989),
		}
	},

	Ammunation2 = {
		name = 'Telefoonwinkel',
		blip = {
			id = 424, colour = 0, scale = 0.8
		},
		inventory = {
			{ name = 'phone', price = 750},
			{ name = 'radio', price = 500},
		}, locations = {
			vec3(-657.0804, -857.6953, 24.5031)
		}
	},

	VendingMachineDrinks = {
		name = 'Automaat',
		inventory = {
			{ name = 'water', price = 3 },
			{ name = 'cola', price = 3 },
		},
		model = {
			`prop_vend_soda_02`, `prop_vend_fridge01`, `prop_vend_water_01`, `prop_vend_soda_01`
		}
	},

	YouTool = {
		name = 'YouTool',
		blip = {
			id = 402, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'lockpick', price = 7500 },
            { name = 'blowpipe', price = 25000 },
			{ name = 'G4S', price = 7500 },
            { name = 'hacking_device', price = 25000 }
		}, locations = {
			vec3(2748.0, 3473.0, 55.67),
			vec3(342.99, -1298.26, 32.51),
            vec3(46.3698, -1749.3633, 29.6372)
		}, targets = {
			{ loc = vec3(2746.8, 3473.13, 55.67), length = 0.6, width = 3.0, heading = 65.0, minZ = 55.0, maxZ = 56.8, distance = 3.0 }
		}
	},

	Ammunation = {
		name = 'Black Market',
		blip = {
			id = 110, colour = 6, scale = 0.8
		}, inventory = {

            { name = 'ammo-45', price = 255, },
			{ name = 'ammo-9', price = 250, },

			{ name = 'WEAPON_WireBat', price = 70000 },
			{ name = 'WEAPON_Bayonet', price = 80000 },
            { name = 'WEAPON_MEOS45', price = 490000, metadata = { registered = true }, },
            { name = 'WEAPON_M1911', price = 510000, metadata = { registered = true }, },
		}, locations = {
			vec3(741.8064, 4170.9238, 41.0879),
		}, targets = {
			{ loc = vec3(-660.92, -934.10, 21.94), length = 0.6, width = 0.5, heading = 180.0, minZ = 21.8, maxZ = 22.2, distance = 2.0 },
			{ loc = vec3(808.86, -2158.50, 29.73), length = 0.6, width = 0.5, heading = 360.0, minZ = 29.6, maxZ = 30.0, distance = 2.0 },
			{ loc = vec3(1693.57, 3761.60, 34.82), length = 0.6, width = 0.5, heading = 227.39, minZ = 34.7, maxZ = 35.1, distance = 2.0 },
			{ loc = vec3(-330.29, 6085.54, 31.57), length = 0.6, width = 0.5, heading = 225.0, minZ = 31.4, maxZ = 31.8, distance = 2.0 },
			{ loc = vec3(252.85, -51.62, 70.0), length = 0.6, width = 0.5, heading = 70.0, minZ = 69.9, maxZ = 70.3, distance = 2.0 },
			{ loc = vec3(23.68, -1106.46, 29.91), length = 0.6, width = 0.5, heading = 160.0, minZ = 29.8, maxZ = 30.2, distance = 2.0 },
			{ loc = vec3(2566.59, 293.13, 108.85), length = 0.6, width = 0.5, heading = 360.0, minZ = 108.7, maxZ = 109.1, distance = 2.0 },
			{ loc = vec3(-1117.61, 2700.26, 18.67), length = 0.6, width = 0.5, heading = 221.82, minZ = 18.5, maxZ = 18.9, distance = 2.0 },
			{ loc = vec3(841.05, -1034.76, 28.31), length = 0.6, width = 0.5, heading = 360.0, minZ = 28.2, maxZ = 28.6, distance = 2.0 }
		}
	},

    politiekluis = {
        name = 'Politie | Uitrusting Kluis',
        inventory = {
            { name = 'WEAPON_STUNGUN', price = 0, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'WEAPON_NIGHTSTICK', price = 0, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'WEAPON_FLASHLIGHT', price = 0, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'WEAPON_P99QNL', price = 0, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'ammo-9', price = 0, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'handcuffs', price = 0, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'radio', price = 0, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'phone', price = 0, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'repairkit', price = 1000, metadata = { registered = true, serial = 'Politie' }, },
        },
		groups = {
			police = 0
		},
    },
    dsikluis = {
        name = 'Dienst Speciale Interventies | Uitrusting Kluis',
        inventory = {
            { name = 'WEAPON_GLOCK17', price = 0, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'at_glock_clip_extended', price = 100, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'at_glock_flashlight', price = 100, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'at_glock_suppressor', price = 100, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'WEAPON_MP5', price = 100, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'w_at_ar_supp_02', price = 100, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'w_at_scope_medium', price = 100, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'WEAPON_HK416', price = 1000, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'at_hk416_suppressor', price = 100, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'at_hk416_flashlight', price = 100, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'at_hk416_scope_1', price = 100, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'at_hk416_scope_2', price = 100, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'at_hk416_clip_extended', price = 100, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'WEAPON_MCX', price = 100, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'at_mcx_suppressor', price = 100, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'at_mcx_scope_1', price = 100, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'WEAPON_REMINGTON', price = 100, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'ammo-shotgun', price = 75, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'ammo-rifle', price = 75, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'ammo-9', price = 75, metadata = { registered = true, serial = 'Politie' }, },
			{ name = 'repairkit', price = 1500, metadata = { registered = true, serial = 'Politie' }, },
        },
		groups = {
			police = 4,
		},
    },

    blackmarket = {
        name = 'Gang Level 1 | Hanenkam Cartel ',
        inventory = {
			{ name = 'ammo-9', price = 300, },
            { name = 'ammo-45', price = 300, },
            { name = 'WEAPON_M1911', price = 650000, metadata = { registered = true }, },
            { name = 'at_m1911_suppressor', price = 50000, metadata = { registered = true }, },
         	{ name = 'at_m1911_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_m1911_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_MEOS45', price = 625000, metadata = { registered = true }, },
            { name = 'at_meos45_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_meos45_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_meos45_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_SMITHWESSON', price = 600000, metadata = { registered = true }, },
            { name = 'at_smithwesson_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_flashlight', price = 30000, metadata = { registered = true }, },
			{ name = 'WEAPON_SwitchBlade', price = 300000 },
			{ name = 'WEAPON_Bayonet', price = 275000 },
			{ name = 'WEAPON_WIREBAT', price = 250000 },
			{ name = 'WEAPON_KATANA', price = 250000 },
			{ name = 'WEAPON_TRI-DAGGER', price = 200000 },
            { name = 'phone', price = 1000, metadata = { registered = false }, },
            { name = 'radio', price = 750, metadata = { registered = false }, },
            { name = 'handcuffs', price = 2500, metadata = { registered = false }, },
        },
		groups = {
			haan = 0
		},
		locations = {
			vec3(-108.8769, 983.4429, 240.8427),
         }, 
   },

    blackmarket2 = {
        name = 'Gang Level 1 | Surenos ',
        inventory = {
			{ name = 'ammo-9', price = 300, },
            { name = 'ammo-45', price = 300, },
            { name = 'WEAPON_M1911', price = 650000, metadata = { registered = true }, },
            { name = 'at_m1911_suppressor', price = 50000, metadata = { registered = true }, },
         	{ name = 'at_m1911_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_m1911_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_MEOS45', price = 625000, metadata = { registered = true }, },
            { name = 'at_meos45_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_meos45_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_meos45_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_SMITHWESSON', price = 600000, metadata = { registered = true }, },
            { name = 'at_smithwesson_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_flashlight', price = 30000, metadata = { registered = true }, },
			{ name = 'WEAPON_SwitchBlade', price = 300000 },
			{ name = 'WEAPON_Bayonet', price = 275000 },
			{ name = 'WEAPON_WIREBAT', price = 250000 },
			{ name = 'WEAPON_KATANA', price = 250000 },
			{ name = 'WEAPON_TRI-DAGGER', price = 200000 },
            { name = 'phone', price = 1000, metadata = { registered = false }, },
            { name = 'radio', price = 750, metadata = { registered = false }, },
            { name = 'handcuffs', price = 2500, metadata = { registered = false }, },
        },
		groups = {
			surenos = 0
		},
		locations = {
			vec3(344.0611, -2707.9700, 1.7082),
         }, 
   },

    blackmarket3 = {
        name = 'Gang Level 1 | Yakuza ',
        inventory = {
			{ name = 'ammo-9', price = 300, },
            { name = 'ammo-45', price = 300, },
            { name = 'WEAPON_M1911', price = 650000, metadata = { registered = true }, },
            { name = 'at_m1911_suppressor', price = 50000, metadata = { registered = true }, },
         	{ name = 'at_m1911_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_m1911_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_MEOS45', price = 625000, metadata = { registered = true }, },
            { name = 'at_meos45_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_meos45_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_meos45_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_SMITHWESSON', price = 600000, metadata = { registered = true }, },
            { name = 'at_smithwesson_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_flashlight', price = 30000, metadata = { registered = true }, },
			{ name = 'WEAPON_SwitchBlade', price = 300000 },
			{ name = 'WEAPON_Bayonet', price = 275000 },
			{ name = 'WEAPON_WIREBAT', price = 250000 },
			{ name = 'WEAPON_KATANA', price = 250000 },
			{ name = 'WEAPON_TRI-DAGGER', price = 200000 },
            { name = 'phone', price = 1000, metadata = { registered = false }, },
            { name = 'radio', price = 750, metadata = { registered = false }, },
            { name = 'handcuffs', price = 2500, metadata = { registered = false }, },
        },
		groups = {
			yakuza = 0
		},
		locations = {
			vec3(-138.4757, 297.3819, 98.8755),
         }, 
   },

    blackmarket4 = {
        name = 'Gang Level 1 | Narcos Cartel ',
        inventory = {
			{ name = 'ammo-9', price = 300, },
            { name = 'ammo-45', price = 300, },
            { name = 'WEAPON_M1911', price = 650000, metadata = { registered = true }, },
            { name = 'at_m1911_suppressor', price = 50000, metadata = { registered = true }, },
         	{ name = 'at_m1911_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_m1911_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_MEOS45', price = 625000, metadata = { registered = true }, },
            { name = 'at_meos45_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_meos45_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_meos45_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_SMITHWESSON', price = 600000, metadata = { registered = true }, },
            { name = 'at_smithwesson_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_flashlight', price = 30000, metadata = { registered = true }, },
			{ name = 'WEAPON_SwitchBlade', price = 300000 },
			{ name = 'WEAPON_Bayonet', price = 275000 },
			{ name = 'WEAPON_WIREBAT', price = 250000 },
			{ name = 'WEAPON_KATANA', price = 250000 },
			{ name = 'WEAPON_TRI-DAGGER', price = 200000 },
            { name = 'phone', price = 1000, metadata = { registered = false }, },
            { name = 'radio', price = 750, metadata = { registered = false }, },
            { name = 'handcuffs', price = 2500, metadata = { registered = false }, },
        },
		groups = {
			narcos = 0
		},
		locations = {
			vec3(1367.0918, -2097.9521, 47.2081),
         }, 
   },

    blackmarket5 = {
        name = 'Gang Level 1 | Crips ',
        inventory = {
			{ name = 'ammo-9', price = 300, },
            { name = 'ammo-45', price = 300, },
            { name = 'WEAPON_M1911', price = 650000, metadata = { registered = true }, },
            { name = 'at_m1911_suppressor', price = 50000, metadata = { registered = true }, },
         	{ name = 'at_m1911_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_m1911_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_MEOS45', price = 625000, metadata = { registered = true }, },
            { name = 'at_meos45_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_meos45_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_meos45_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_SMITHWESSON', price = 600000, metadata = { registered = true }, },
            { name = 'at_smithwesson_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_flashlight', price = 30000, metadata = { registered = true }, },
			{ name = 'WEAPON_SwitchBlade', price = 300000 },
			{ name = 'WEAPON_Bayonet', price = 275000 },
			{ name = 'WEAPON_WIREBAT', price = 250000 },
			{ name = 'WEAPON_KATANA', price = 250000 },
			{ name = 'WEAPON_TRI-DAGGER', price = 200000 },
            { name = 'phone', price = 1000, metadata = { registered = false }, },
            { name = 'radio', price = 750, metadata = { registered = false }, },
            { name = 'handcuffs', price = 2500, metadata = { registered = false }, },
        },
		groups = {
			crips = 0
		},
		locations = {
			vec3(-97.7010, -1792.0255, 26.9096),
         }, 
   },

    blackmarket6 = {
        name = 'Gang Level 1 | Ñeta Association ',
        inventory = {
			{ name = 'ammo-9', price = 300, },
            { name = 'ammo-45', price = 300, },
            { name = 'WEAPON_M1911', price = 650000, metadata = { registered = true }, },
            { name = 'at_m1911_suppressor', price = 50000, metadata = { registered = true }, },
         	{ name = 'at_m1911_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_m1911_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_MEOS45', price = 625000, metadata = { registered = true }, },
            { name = 'at_meos45_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_meos45_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_meos45_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_SMITHWESSON', price = 600000, metadata = { registered = true }, },
            { name = 'at_smithwesson_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_flashlight', price = 30000, metadata = { registered = true }, },
			{ name = 'WEAPON_SwitchBlade', price = 300000 },
			{ name = 'WEAPON_Bayonet', price = 275000 },
			{ name = 'WEAPON_WIREBAT', price = 250000 },
			{ name = 'WEAPON_KATANA', price = 250000 },
			{ name = 'WEAPON_TRI-DAGGER', price = 200000 },
            { name = 'phone', price = 1000, metadata = { registered = false }, },
            { name = 'radio', price = 750, metadata = { registered = false }, },
            { name = 'handcuffs', price = 2500, metadata = { registered = false }, },
        },
		groups = {
			neta = 0
		},
		locations = {
			vec3(-95.2739, 821.8637, 227.5961),
         }, 
   },

    blackmarket7 = {
        name = 'Gang Level 2 | Tijuana Cartel ',
        inventory = {
			{ name = 'ammo-9', price = 300, },
            { name = 'ammo-45', price = 300, },
            { name = 'WEAPON_MAC11', price = 800000, metadata = { registered = true }, },
            { name = 'at_mac11_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_mac11_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_DESERT_EAGLE', price = 700000, metadata = { registered = true }, },
            { name = 'w_at_desert_eagle_scope', price = 50000, metadata = { registered = true }, },
            { name = 'w_at_desert_eagle_supp', price = 50000, metadata = { registered = true }, },
         	{ name = 'w_at_desert_eagle__flsh', price = 30000, metadata = { registered = true }, },
            { name = 'w_pi_desert_eagle_mag2', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_M1911', price = 650000, metadata = { registered = true }, },
            { name = 'at_m1911_suppressor', price = 50000, metadata = { registered = true }, },
         	{ name = 'at_m1911_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_m1911_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_MEOS45', price = 625000, metadata = { registered = true }, },
            { name = 'at_meos45_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_meos45_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_meos45_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_SMITHWESSON', price = 600000, metadata = { registered = true }, },
            { name = 'at_smithwesson_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_flashlight', price = 30000, metadata = { registered = true }, },
			{ name = 'WEAPON_SwitchBlade', price = 300000 },
			{ name = 'WEAPON_Bayonet', price = 275000 },
			{ name = 'WEAPON_WIREBAT', price = 250000 },
			{ name = 'WEAPON_KATANA', price = 250000 },
			{ name = 'WEAPON_TRI-DAGGER', price = 200000 },
            { name = 'phone', price = 1000, metadata = { registered = false }, },
            { name = 'radio', price = 750, metadata = { registered = false }, },
            { name = 'handcuffs', price = 2500, metadata = { registered = false }, },
        },
		groups = {
			tijuana = 0
		},
		locations = {
			vec3(-3199.0542, 840.3542, 8.9349),
         }, 
   },

    blackmarket8 = {
        name = 'Gang Level 2 | Bloods ',
        inventory = {
			{ name = 'ammo-9', price = 300, },
            { name = 'ammo-45', price = 300, },
            { name = 'WEAPON_MAC11', price = 800000, metadata = { registered = true }, },
            { name = 'at_mac11_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_mac11_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_DESERT_EAGLE', price = 700000, metadata = { registered = true }, },
            { name = 'w_at_desert_eagle_scope', price = 50000, metadata = { registered = true }, },
            { name = 'w_at_desert_eagle_supp', price = 50000, metadata = { registered = true }, },
         	{ name = 'w_at_desert_eagle__flsh', price = 30000, metadata = { registered = true }, },
            { name = 'w_pi_desert_eagle_mag2', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_M1911', price = 650000, metadata = { registered = true }, },
            { name = 'at_m1911_suppressor', price = 50000, metadata = { registered = true }, },
         	{ name = 'at_m1911_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_m1911_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_MEOS45', price = 625000, metadata = { registered = true }, },
            { name = 'at_meos45_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_meos45_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_meos45_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_SMITHWESSON', price = 600000, metadata = { registered = true }, },
            { name = 'at_smithwesson_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_flashlight', price = 30000, metadata = { registered = true }, },
			{ name = 'WEAPON_SwitchBlade', price = 300000 },
			{ name = 'WEAPON_Bayonet', price = 275000 },
			{ name = 'WEAPON_WIREBAT', price = 250000 },
			{ name = 'WEAPON_KATANA', price = 250000 },
			{ name = 'WEAPON_TRI-DAGGER', price = 200000 },
            { name = 'phone', price = 1000, metadata = { registered = false }, },
            { name = 'radio', price = 750, metadata = { registered = false }, },
            { name = 'handcuffs', price = 2500, metadata = { registered = false }, },
        },
		groups = {
			bloods = 0
		},
		locations = {
			vec3(-1556.5386, -376.1537, 48.0483),
         }, 
   },

    blackmarket9 = {
        name = 'Gang Level 2 | Reznikov ',
        inventory = {
			{ name = 'ammo-9', price = 300, },
            { name = 'ammo-45', price = 300, },
            { name = 'WEAPON_MAC11', price = 800000, metadata = { registered = true }, },
            { name = 'at_mac11_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_mac11_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_DESERT_EAGLE', price = 700000, metadata = { registered = true }, },
            { name = 'w_at_desert_eagle_scope', price = 50000, metadata = { registered = true }, },
            { name = 'w_at_desert_eagle_supp', price = 50000, metadata = { registered = true }, },
         	{ name = 'w_at_desert_eagle__flsh', price = 30000, metadata = { registered = true }, },
            { name = 'w_pi_desert_eagle_mag2', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_M1911', price = 650000, metadata = { registered = true }, },
            { name = 'at_m1911_suppressor', price = 50000, metadata = { registered = true }, },
         	{ name = 'at_m1911_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_m1911_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_MEOS45', price = 625000, metadata = { registered = true }, },
            { name = 'at_meos45_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_meos45_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_meos45_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_SMITHWESSON', price = 600000, metadata = { registered = true }, },
            { name = 'at_smithwesson_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_flashlight', price = 30000, metadata = { registered = true }, },
			{ name = 'WEAPON_SwitchBlade', price = 300000 },
			{ name = 'WEAPON_Bayonet', price = 275000 },
			{ name = 'WEAPON_WIREBAT', price = 250000 },
			{ name = 'WEAPON_KATANA', price = 250000 },
			{ name = 'WEAPON_TRI-DAGGER', price = 200000 },
            { name = 'phone', price = 1000, metadata = { registered = false }, },
            { name = 'radio', price = 750, metadata = { registered = false }, },
            { name = 'handcuffs', price = 2500, metadata = { registered = false }, },
        },
		groups = {
			reznikov = 0
		},
		locations = {
			vec3(412.1901, 3.7919, 84.9215),
         }, 
   },

    blackmarket10 = {
        name = 'Gang Level 3 | CJNG ',
        inventory = {
			{ name = 'ammo-9', price = 300, },
            { name = 'ammo-45', price = 300, },
            { name = 'WEAPON_UZI', price = 850000, metadata = { registered = true }, },
            { name = 'at_uzi_scope_3', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_scope_4', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_scope_5', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_scope_6', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_suppressor_1', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_suppressor_2', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_stock_1', price = 30000, metadata = { registered = true }, },
            { name = 'at_uzi_stock_2', price = 30000, metadata = { registered = true }, },
            { name = 'at_uzi_clip_extended_2', price = 40000, metadata = { registered = true }, },
            { name = 'at_uzi_clip_extended_3', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_MAC11', price = 800000, metadata = { registered = true }, },
            { name = 'at_mac11_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_mac11_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_DESERT_EAGLE', price = 700000, metadata = { registered = true }, },
            { name = 'w_at_desert_eagle_scope', price = 50000, metadata = { registered = true }, },
            { name = 'w_at_desert_eagle_supp', price = 50000, metadata = { registered = true }, },
         	{ name = 'w_at_desert_eagle__flsh', price = 30000, metadata = { registered = true }, },
            { name = 'w_pi_desert_eagle_mag2', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_M1911', price = 650000, metadata = { registered = true }, },
            { name = 'at_m1911_suppressor', price = 50000, metadata = { registered = true }, },
         	{ name = 'at_m1911_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_m1911_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_MEOS45', price = 625000, metadata = { registered = true }, },
            { name = 'at_meos45_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_meos45_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_meos45_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_SMITHWESSON', price = 600000, metadata = { registered = true }, },
            { name = 'at_smithwesson_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_flashlight', price = 30000, metadata = { registered = true }, },
			{ name = 'WEAPON_SwitchBlade', price = 300000 },
			{ name = 'WEAPON_Bayonet', price = 275000 },
			{ name = 'WEAPON_WIREBAT', price = 250000 },
			{ name = 'WEAPON_KATANA', price = 250000 },
			{ name = 'WEAPON_TRI-DAGGER', price = 200000 },
            { name = 'phone', price = 1000, metadata = { registered = false }, },
            { name = 'radio', price = 750, metadata = { registered = false }, },
            { name = 'handcuffs', price = 2500, metadata = { registered = false }, },
        },
		groups = {
			cjng = 0
		},
		locations = {
			vec3(118.3320, 1235.7531, 214.1100),
         }, 
   },

    blackmarket11 = {
        name = 'Gang Level 3 | TMF ',
        inventory = {
			{ name = 'ammo-9', price = 300, },
            { name = 'ammo-45', price = 300, },
            { name = 'WEAPON_UZI', price = 850000, metadata = { registered = true }, },
            { name = 'at_uzi_scope_3', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_scope_4', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_scope_5', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_scope_6', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_suppressor_1', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_suppressor_2', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_stock_1', price = 30000, metadata = { registered = true }, },
            { name = 'at_uzi_stock_2', price = 30000, metadata = { registered = true }, },
            { name = 'at_uzi_clip_extended_2', price = 40000, metadata = { registered = true }, },
            { name = 'at_uzi_clip_extended_3', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_MAC11', price = 800000, metadata = { registered = true }, },
            { name = 'at_mac11_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_mac11_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_DESERT_EAGLE', price = 700000, metadata = { registered = true }, },
            { name = 'w_at_desert_eagle_scope', price = 50000, metadata = { registered = true }, },
            { name = 'w_at_desert_eagle_supp', price = 50000, metadata = { registered = true }, },
         	{ name = 'w_at_desert_eagle__flsh', price = 30000, metadata = { registered = true }, },
            { name = 'w_pi_desert_eagle_mag2', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_M1911', price = 650000, metadata = { registered = true }, },
            { name = 'at_m1911_suppressor', price = 50000, metadata = { registered = true }, },
         	{ name = 'at_m1911_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_m1911_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_MEOS45', price = 625000, metadata = { registered = true }, },
            { name = 'at_meos45_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_meos45_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_meos45_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_SMITHWESSON', price = 600000, metadata = { registered = true }, },
            { name = 'at_smithwesson_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_flashlight', price = 30000, metadata = { registered = true }, },
			{ name = 'WEAPON_SwitchBlade', price = 300000 },
			{ name = 'WEAPON_Bayonet', price = 275000 },
			{ name = 'WEAPON_WIREBAT', price = 250000 },
			{ name = 'WEAPON_KATANA', price = 250000 },
			{ name = 'WEAPON_TRI-DAGGER', price = 200000 },
            { name = 'phone', price = 1000, metadata = { registered = false }, },
            { name = 'radio', price = 750, metadata = { registered = false }, },
            { name = 'handcuffs', price = 2500, metadata = { registered = false }, },
        },
		groups = {
			tmf = 0
		},
		locations = {
			vec3(1405.9583, 1137.9042, 109.7458),
         }, 
   },

    blackmarket12 = {
        name = 'Gang Level 3 | DTMC ',
        inventory = {
			{ name = 'ammo-9', price = 300, },
            { name = 'ammo-45', price = 300, },
            { name = 'WEAPON_UZI', price = 850000, metadata = { registered = true }, },
            { name = 'at_uzi_scope_3', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_scope_4', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_scope_5', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_scope_6', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_suppressor_1', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_suppressor_2', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_stock_1', price = 30000, metadata = { registered = true }, },
            { name = 'at_uzi_stock_2', price = 30000, metadata = { registered = true }, },
            { name = 'at_uzi_clip_extended_2', price = 40000, metadata = { registered = true }, },
            { name = 'at_uzi_clip_extended_3', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_MAC11', price = 800000, metadata = { registered = true }, },
            { name = 'at_mac11_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_mac11_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_DESERT_EAGLE', price = 700000, metadata = { registered = true }, },
            { name = 'w_at_desert_eagle_scope', price = 50000, metadata = { registered = true }, },
            { name = 'w_at_desert_eagle_supp', price = 50000, metadata = { registered = true }, },
         	{ name = 'w_at_desert_eagle__flsh', price = 30000, metadata = { registered = true }, },
            { name = 'w_pi_desert_eagle_mag2', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_M1911', price = 650000, metadata = { registered = true }, },
            { name = 'at_m1911_suppressor', price = 50000, metadata = { registered = true }, },
         	{ name = 'at_m1911_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_m1911_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_MEOS45', price = 625000, metadata = { registered = true }, },
            { name = 'at_meos45_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_meos45_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_meos45_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'WEAPON_SMITHWESSON', price = 600000, metadata = { registered = true }, },
            { name = 'at_smithwesson_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_smithwesson_flashlight', price = 30000, metadata = { registered = true }, },
			{ name = 'WEAPON_SwitchBlade', price = 300000 },
			{ name = 'WEAPON_Bayonet', price = 275000 },
			{ name = 'WEAPON_WIREBAT', price = 250000 },
			{ name = 'WEAPON_KATANA', price = 250000 },
			{ name = 'WEAPON_TRI-DAGGER', price = 200000 },
            { name = 'phone', price = 1000, metadata = { registered = false }, },
            { name = 'radio', price = 750, metadata = { registered = false }, },
            { name = 'handcuffs', price = 2500, metadata = { registered = false }, },
        },
		groups = {
			dtmc = 0
		},
		locations = {
			vec3(149.1789, 329.2106, 111.8933),
         }, 
   },

    gangshop = {
        name = 'Gang Inkoop Wapens',
        inventory = {
                                 -- Grote Wapens -- 
            { name = 'WEAPON_REMINGTON680', price = 775000, metadata = { registered = true }, },

                                 -- MiddelGrote Wapens -- 
            { name = 'WEAPON_UMP45', price = 650000, metadata = { registered = true }, },
            { name = 'WEAPON_UZI', price = 520000, metadata = { registered = true }, },
            { name = 'WEAPON_MAC11', price = 490000, metadata = { registered = true }, },

                                 -- Kleine Wapens --             
            { name = 'WEAPON_M1911', price = 420000, metadata = { registered = true }, },
            { name = 'WEAPON_MEOS45', price = 400000, metadata = { registered = true }, },
            { name = 'WEAPON_SMITHWESSON', price = 340000, metadata = { registered = true }, },

                                 -- Slag Wapens --                         
			{ name = 'WEAPON_SwitchBlade', price = 70000 },
			{ name = 'WEAPON_Bayonet', price = 55000 },
			{ name = 'WEAPON_WIREBAT', price = 50000 },
			{ name = 'WEAPON_KATANA', price = 45000 },
			{ name = 'WEAPON_TRI-DAGGER', price = 50000 },
        }
	},

    gangshopammo = {
        name = 'Gang Ammo Inkoop',
        inventory = {
                                 -- Ammo -- 
			{ name = 'ammo-9', price = 175, },
            { name = 'ammo-45', price = 200, },
            { name = 'ammo-shotgun', price = 550, },
            { name = 'ammo-rifle', price = 650, },

        }
	},

    extra = {
        name = 'Gang Extra Inkoop',
        inventory = {
                                 -- Zooi -- 
            { name = 'phone', price = 750, metadata = { registered = false }, },
            { name = 'radio', price = 500, metadata = { registered = false }, },
            { name = 'handcuffs', price = 1250, metadata = { registered = false }, },

        }
	},

    gangshopattachmentsak47 = {
        name = 'Gang AK-47 Attachments Inkoop',
        inventory = {

            { name = 'at_ak47_scope_1', price = 50000, metadata = { registered = true }, },
            { name = 'at_ak47_suppressor', price = 70000, metadata = { registered = true }, },
         	{ name = 'w_ar_ak47_luxe', price = 25000, metadata = { registered = true }, },        
         	{ name = 'at_ak47_camo_silver', price = 25000, metadata = { registered = true }, },
            { name = 'at_ak47_camo_redtiger', price = 25000, metadata = { registered = true }, },
            { name = 'at_ak47_camo_roze', price = 25000, metadata = { registered = true }, },
            { name = 'at_ak47_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_ak47_grip', price = 50000, metadata = { registered = true }, },
            { name = 'at_ak47_clip_extended', price = 50000, metadata = { registered = true }, },
            { name = 'at_ak47_clip_drummag', price = 60000, metadata = { registered = true }, },

        }
	},

    gangshopattachmentsak47u = {
        name = 'Gang AK-47U Attachments Inkoop',
        inventory = {

            { name = 'at_ak47u_clip_extended', price = 40000, metadata = { registered = true }, },

        }
	},

    gangshopattachmentsump45 = {
        name = 'Gang UMP-45 Attachments Inkoop',
        inventory = {

            { name = 'at_ump45_scope_1', price = 50000, metadata = { registered = true }, },
            { name = 'at_ump45_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_ump45_flashlight', price = 30000, metadata = { registered = true }, },
            { name = 'at_ump45_grip', price = 35000, metadata = { registered = true }, },
         	{ name = 'at_ump45_camo_redtiger', price = 25000, metadata = { registered = true }, },
            { name = 'at_ump45_clip_extended', price = 45000, metadata = { registered = true }, },

        }
	},

    gangshopattachmentsuzi = {
        name = 'Gang UZI Attachments Inkoop',
        inventory = {

            { name = 'at_uzi_scope_3', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_scope_4', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_scope_5', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_scope_6', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_suppressor_1', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_suppressor_2', price = 50000, metadata = { registered = true }, },
            { name = 'at_uzi_stock_1', price = 30000, metadata = { registered = true }, },
            { name = 'at_uzi_stock_2', price = 30000, metadata = { registered = true }, },
            { name = 'at_uzi_clip_extended_2', price = 40000, metadata = { registered = true }, },
            { name = 'at_uzi_clip_extended_3', price = 50000, metadata = { registered = true }, },

        }
	},

    gangshopattachmentsmac11 = {
        name = 'Gang MAC-11 Attachments Inkoop',
        inventory = {

            { name = 'at_mac11_suppressor', price = 50000, metadata = { registered = true }, },
            { name = 'at_mac11_clip_extended', price = 40000, metadata = { registered = true }, },

        }
	},

    gangshopattachmentsm1911 = {
        name = 'Gang M1911 Attachments Inkoop',
        inventory = {

            { name = 'at_m1911_suppressor', price = 40000, metadata = { registered = true }, },
         	{ name = 'at_m1911_flashlight', price = 20000, metadata = { registered = true }, },
            { name = 'at_m1911_clip_extended', price = 35000, metadata = { registered = true }, },

        }
	},

    gangshopattachmentsmeos45 = {
        name = 'Gang MEOS-45 Attachments Inkoop',
        inventory = {

            { name = 'at_meos45_clip_extended', price = 35000, metadata = { registered = true }, },
            { name = 'at_meos45_flashlight', price = 20000, metadata = { registered = true }, },
            { name = 'at_meos45_suppressor', price = 50000, metadata = { registered = true }, },

        }
	},

    gangshopattachmentssmithwesson = {
        name = 'Gang Smith Wesson Attachments Inkoop',
        inventory = {

            { name = 'at_smithwesson_suppressor', price = 45000, metadata = { registered = true }, },
            { name = 'at_smithwesson_clip_extended', price = 30000, metadata = { registered = true }, },
            { name = 'at_smithwesson_flashlight', price = 20000, metadata = { registered = true }, },

        }
	},


    recherchekluis = {
        name = 'Recherche | Uitrusting Kluis',
        inventory = {
            { name = 'WEAPON_GLOCK17', price = 3000 },
			{ name = 'at_glock_clip_extended', price = 250 },
			{ name = 'at_glock_flashlight', price = 250 },
			{ name = 'at_glock_suppressor', price = 250 },
			{ name = 'at_glock_scope_1', price = 250 },
			{ name = 'ammo-9', price = 10 },
			{ name = 'bewijszak', price = 0 },
        },
		groups = {
			police = 3,
			kmar = 4
		},
    }
}
---wip types

---@class OxStash
---@field name string
---@field label string
---@field owner? boolean | string | number
---@field slots number
---@field weight number
---@field groups? string | string[] | { [string]: number }
---@field blip? { id: number, colour: number, scale: number }
---@field coords? vector3
---@field target? { loc: vector3, length: number, width: number, heading: number, minZ: number, maxZ: number, distance: number, debug?: boolean, drawSprite?: boolean }

-- Define a table containing all stash configurations
local stashes = {
    {
        id = 'tmf_stash',
        label = 'TMF Stash',
        slots = 100,
        weight = 100000,
        owner = false,
    },
    {
        id = 'crips_stash',
        label = 'Crips Stash',
        slots = 100,
        weight = 100000,
        owner = false,
    },
    -- Add more stashes here as needed
}

-- Register each stash when the resource starts
AddEventHandler('onServerResourceStart', function(resourceName)
    if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName() then
        -- Iterate through each stash in the table and register it
        for _, stash in ipairs(stashes) do
            exports.ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.weight, stash.owner)
        end
    end
end)

return {
	{
		coords = vec3(-1106.6979, -826.1826, 14.2828),
		target = {
			loc = vec3(-1106.6979, -826.1826, 14.2828),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'Politie locker',
		label = 'Politie locker',
		owner = true,
		slots = 700,
		weight = 700000,
		groups = {['police'] = 0}
	},

	{
		coords = vec3(-179.1335, 303.4579, 100.9231),
		target = {
			loc = vec3(-179.1335, 303.4579, 100.9231),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'Yakuza Kluis',
		label = 'Yakuza Kluis',
		owner = true,
		slots = 700,
		weight = 700000,
		groups = {['yakuza'] = 0}
	},

	{
		coords = vec3(-93.5001, -1796.6415, 26.9080),
		target = {
			loc = vec3(-93.5001, -1796.6415, 26.9080),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'Crips Kluis',
		label = 'Crips Kluis',
		owner = true,
		slots = 700,
		weight = 700000,
		groups = {['crips'] = 0}
	},

	{
		coords = vec3(113.1799, 1240.1202, 214.1100),
		target = {
			loc = vec3(113.1799, 1240.1202, 214.1100),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'CJNG Kluis',
		label = 'CJNG Kluis',
		owner = true,
		slots = 700,
		weight = 700000,
		groups = {['cjng'] = -1}
	},

	{
		coords = vec3(1391.9104, 1134.8671, 109.7457),
		target = {
			loc = vec3(1391.9104, 1134.8671, 109.7457),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'Jalisco Kluis',
		label = 'Jalisco Kluis',
		owner = true,
		slots = 700,
		weight = 700000,
		groups = {['tmf'] = -1}
	},

	{
		coords = vec3(1363.3649, -2101.4194, 47.2081),
		target = {
			loc = vec3(1363.3649, -2101.4194, 47.2081),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'Narcos Cartel Kluis',
		label = 'Narcos Cartel Kluis',
		owner = true,
		slots = 700,
		weight = 700000,
		groups = {['narcos'] = 0}
	},

	{
		coords = vec3(345.2904, -2708.8743, 1.7081),
		target = {
			loc = vec3(345.2904, -2708.8743, 1.7081),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'Surenos Cartel Kluis',
		label = 'Surenos Cartel Kluis',
		owner = true,
		slots = 700,
		weight = 700000,
		groups = {['surenos'] = -1}
	},

	{
		coords = vec3(388.0815, -10.2449, 86.6756),
		target = {
			loc = vec3(388.0815, -10.2449, 86.6756),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'Reznikov Kluis',
		label = 'Reznikov Kluis',
		owner = true,
		slots = 700,
		weight = 700000,
		groups = {['reznikov'] = 0}
	},

	{
		coords = vec3(-1511.6262, 839.6126, 176.9999),
		target = {
			loc = vec3(-1511.6262, 839.6126, 176.9999),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'Karmellos Kluis',
		label = 'Karmellos Kluis',
		owner = true,
		slots = 700,
		weight = 700000,
		groups = {['karmellos'] = 0}
	},

	{
		coords = vec3(-3197.7236, 837.4598, 8.9349),
		target = {
			loc = vec3(-3197.7236, 837.4598, 8.9349),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'tijuana Kluis',
		label = 'tijuana Kluis',
		owner = true,
		slots = 700,
		weight = 700000,
		groups = {['tijuana'] = 0}
	},

	{
		coords = vec3(142.0203, 332.1397, 111.8933),
		target = {
			loc = vec3(142.0203, 332.1397, 111.8933),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'DTMC',
		label = 'DTMC Kluis',
		owner = true,
		slots = 700,
		weight = 700000,
		groups = {['dtmc'] = 0}
	},

	{
		coords = vec3(554.9256, -2769.8184, 6.0906),
		target = {
			loc = vec3(554.9256, -2769.8184, 6.0906),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'Parkstad Bende',
		label = 'Parkstad Bende Kluis',
		owner = true,
		slots = 700,
		weight = 700000,
		groups = {['parkstadbende'] = 0}
	},

	{
		coords = vec3(301.3, -600.23, 43.28),
		target = {
			loc = vec3(301.82, -600.99, 43.29),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Open personal locker'
		},
		name = 'emslocker',
		label = 'Personal Locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['ambulance'] = 0}
	},
}

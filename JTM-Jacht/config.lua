Config = {}

Config.CopsNeeded = 6

Config.Cooldown = 10800

Config.Startitem = 'jachtkey'


Config.AantalStartLocations = 2 --- Voer hier het aantal locaties van hieronder in!!!!!!
Config.StartLocation = {
    [1] = {
        coords = {x = -2068.7, y = -1023.05, z = 3.06},
        oxcoords = {x = -2069.0, y = -1023.70, z = 2.50},
        heading = 164.52,
        lastRobbed = 0,
        nameOfJacht = 'Jacht Stad',
        drillpos = vector3(-2067.6653, -1020.8749, 3.0514),
		drillrotate = vector3(0.0, 0.0, 3.0514),
    },
    [2] = {
        coords = {x = -1413.9661, y = 6750.9111, z = 3.0615},
        oxcoords = {x = -1414.3, y = 6750.31, z = 2.50},
        heading = 167.0149,
        lastRobbed = 0,
        nameOfJacht = 'Jacht Noord',
        drillpos = vector3(-1413.1289, 6752.7891, 3.3082),
		drillrotate = vector3(0.0, 0.0, 3.3082),
    }
}

Config.Security = {
    [1] = {
        coords = {x = -2066.9, y = -1027.5, z = 3.06}, 
        heading = 76.7,
        markcoords = {x = -2065.7749, y = -1027.7609, z = 3.0615}
    },
    [2] = {
        coords = {x = -1412.2236, y = 6746.4399, z = 3.0615},
        heading = 73.1790,
        markcoords = {x = -1411.0037, y = 6746.2173, z = 3.0615}
    }
}

Config.Zoeklocaties = {
    [1] = {
        {coords = {x = -2083.28, y = -1018.44, z = 12.78}, heading = 250.16, isOpen = false},-- 1
        {coords = {x = -2074.81, y = -1017.5, z = 11.91}, heading = 26.14, isOpen = false},-- 2
        {coords = {x = -2054.21, y = -1032.44, z = 8.97}, heading = 159.11, isOpen = false},-- 3
        {coords = {x = -2051.4, y = -1024.47, z = 8.97}, heading = 335.35, isOpen = false},-- 4
        {coords = {x = -2076.46, y = -1018.43, z = 8.97}, heading = 245.98, isOpen = false},-- 5
        {coords = {x = -2077.84, y = -1022.53, z = 8.97}, heading = 249.54, isOpen = false},-- 6
        {coords = {x = -2087.09, y = -1020.1, z = 8.97}, heading = 252.06, isOpen = false},-- 7
        {coords = {x = -2084.86, y = -1014.47, z = 5.88}, heading = 71.16, isOpen = false},-- 8
        {coords = {x = -2078.84, y = -1016.46, z = 5.88}, heading = 69.87, isOpen = false},-- 9
        {coords = {x = -2076.91, y = -1024.49, z = 11.91}, heading = 117.59, isOpen = false},-- 10
    },
    [2] = {
        {coords = {x = -1425.01, y = 6754.47, z = 5.88}, heading = 76.92, isOpen = false}, --1
        {coords = {x = -1430.63, y = 6749.21, z = 5.88}, heading = 165.49, isOpen = false}, -- 2
        {coords = {x = -1431.07, y = 6762.61, z = 5.88}, heading = 198.87, isOpen = false}, -- 3
        {coords = {x = -1442.19, y = 6756.86, z = 8.98}, heading = 102.59, isOpen = false}, -- 4
        {coords = {x = -1430.65, y = 6758.81, z = 8.97}, heading = 251.89, isOpen = false}, -- 5
        {coords = {x = -1422.49, y = 6753.3, z = 8.97}, heading = 257.18, isOpen = false}, -- 6
        {coords = {x = -1440.18, y = 6753.62, z = 8.97}, heading = 137.33, isOpen = false}, -- 7
        {coords = {x = -1396.64, y = 6749.53, z = 8.97}, heading = 348.31, isOpen = false}, -- 8
        {coords = {x = -1422.28, y = 6749.19, z = 11.91}, heading = 116.44, isOpen = false}, -- 9
        {coords = {x = -1430.41, y = 6756.86, z = 12.78}, heading = 23.96, isOpen = false}, -- 10
    }
}

LaserDrill = {
    ['animations'] = {
        {'intro', 'bag_intro', 'intro_drill_bit'},
        {'drill_straight_start', 'bag_drill_straight_start', 'drill_straight_start_drill_bit'},
        {'drill_straight_end_idle', 'bag_drill_straight_idle', 'drill_straight_idle_drill_bit'},
        {'drill_straight_fail', 'bag_drill_straight_fail', 'drill_straight_fail_drill_bit'},
        {'drill_straight_end', 'bag_drill_straight_end', 'drill_straight_end_drill_bit'},
        {'exit', 'bag_exit', 'exit_drill_bit'},
    },
    ['scenes'] = {}
}
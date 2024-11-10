Config = {}


-- uitleg gangjob 
-- waar reznikov staat zet je de naam van de gangjob vanuit de database
-- waar bossrang staat zet je de bossnaam uit van de gang uit de database dit geld hetzelfde voor de underboss
-- coordswapeninkoop en coordsbossmenu spreken voor zich
-- magboeien betekend of de gang mensen mag afboeien true voor wel false voor niet 


   -- reznikov = { 
        -- [1] = {
            -- bossrang = "6ooc",
            -- underbossrang = "underboss",
			-- coordswapeninkoop = vector3(725.4807, 1275.7365, 360.2958),
            -- coordsbossmenu = vector3(734.2164, 1285.3508, 360.2958),
        -- },
        -- magboeien = true,
        -- magfouilleren = true
    -- },

Config.Locale = 'en'

Config.Markerdistance = 15

witwasMenuConfig = {
    title = 'Jtm-boss witwas',
    description = 'Je Zwartgeld Witwassen',
    maxAmount = 150000, -- Maximaal bedrag om te wassen
    progressDuration = 90000, -- Standaard duur van de tijd dat je wilt witwassen
}

Config.Wapeninkoopgangs = {
    janssen = {
        [1] = {
            bossrang = "baas",
            underbossrang = "slaafvanbaas",
			coordswapeninkoop = vector3(1405.8590, 1137.9119, 109.7458),
            coordsbossmenu = vector3(1393.2880, 1160.1149, 114.3335),
        },
        magboeien = true
    },
    ccf = {
        [1] = {
            bossrang = "don",
            underbossrang = "underboss",
			coordswapeninkoop = vector3(-1790.8751, 431.2427, 125.2127),
            coordsbossmenu = vector3(-1792.4541, 422.9362, 125.2127),
        },
        magboeien = true
    },
    netas = {
        [1] = {
            bossrang = "lasombra",
            underbossrang = "torres",
			coordswapeninkoop = vector3(-315.8678, -747.1954, 28.0286),
            coordsbossmenu = vector3(-263.4582, -728.0994, 125.4732),
        },
        magboeien = true
    },
    cjng = {
        [1] = {
            bossrang = "Patrón",
            underbossrang = "Comandante",
			coordswapeninkoop = vector3(411.0358, 5.6197, 84.9215),
            coordsbossmenu = vector3(431.8460, 7.1901, 91.9354),
        },
        magboeien = true
    },
    carteldelago = {
        [1] = {
            bossrang = "capo",
            underbossrang = "subjefe",
			coordswapeninkoop = vector3(2435.5886, 4966.6206, 42.3476),
        },
        magboeien = true
    },
    younggunners = {
        [1] = {
            bossrang = "boss",
            underbossrang = "rechterhand",
			coordswapeninkoop = vector3(565.7362, -2777.1284, 6.0906),
        },
        magboeien = true
    },
    laicona = {
        [1] = {
            bossrang = "streetcapos",
            underbossrang = "hittaz",
			coordswapeninkoop = vector3(-25.7947, -1424.6136, 30.6592),
        },
        magboeien = true
    },
    vatoloco = {
        [1] = {
            bossrang = "boss",
            underbossrang = "underboss",
			coordswapeninkoop = vector3(-227.7106, -1328.2004, 30.8906),
        },
        magboeien = true
    },
}


Config.gangMenu = {
    {
        gangName = "cjng",
        coords = vector3(431.8460, 7.1901, 91.9354),
        mingrade = 4 
    },
    {
        gangName = "janssen",
        coords = vector3(1393.2880, 1160.1149, 114.3335),
        mingrade = 3
    },
    {
        gangName = "carteldelago",
        coords = vector3(2444.4258, 4966.5830, 46.8105),
        mingrade = 6 
    },
    {
        gangName = "vatoloco",
        coords = vector3(-213.5420, -1340.6207, 34.8946),
        mingrade = 4 
    },
    {
        gangName = "laicona",
        coords = vector3(-9.9536, -1433.3002, 31.1015),
        mingrade = 4 
    },
    {
        gangName = "younggunners",
        coords = vector3(542.8469, -2783.5103, 6.0984),
        mingrade = 4 
    },
    {
        gangName = "netas",
        coords = vector3(-263.3548, -727.8608, 125.4732),
        mingrade = 4 
    },
    {
        gangName = "ccf",
        coords = vector3(-1792.3688, 423.0519, 125.2124),
        mingrade = 4 
    }
}
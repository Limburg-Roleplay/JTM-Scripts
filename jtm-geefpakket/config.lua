Config = {}
Config.Webhook = "https://discord.com/api/webhooks/1277030965629157409/8WFyu0fb32tNzVgoDGN0qLJaez_HHscE9MtcLnWQIoM6ZPZY3cf9T1BA7uGUYGF4AcuK"
Config.packages = {
    ["testpakket"] = {
        title = "Test Pack", -- Tiktel van je pakket
        items = {
            ["WEAPON_MINIUZI"] = {
                type = 'item', -- type: car of item
                event = 'jtm:createRefund', -- Event naam
                params = { steam_id = ":playerSteam", item_name = "WEAPON_MINIUZI", amount = 1 }, -- Event parameters
                paramOrder = { "steam_id", "item_name", "amount" }, -- Order van de parameters
                eventType = 'server' -- 'server' of 'client'
            },
            ["ammo-smg"] = {
                type = 'item', -- type: car of item
                event = 'jtm:createRefund', -- Event naam
                params = { steam_id = ":playerSteam", item_name = "ammo-smg", amount = 300 }, -- Event parameters
                paramOrder = { "steam_id", "item_name", "amount" },
                eventType = 'server' -- 'server' or 'client'
            },
            ["car1"] = {
                type = 'car', -- type: car of item
                event = 'esx_giveownedcar:spawnVehicle', -- Event naam
                params = { source = ":playerSrc", car_model = "rmodrs6", playername = ":playerName", type = "console", vehicleType = "car", coords = ":playerCoords"}, -- Event parameters
                paramOrder = { "car_model", "playername", "type", "vehicleType", "coords" },
                eventType = 'client' -- 'server' or 'client'
            },
        }
    },
}

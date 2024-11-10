# Donatiepakketten Configuratie - README
Dit document legt uit hoe je donatiepakketten kunt instellen en gebruiken binnen je FiveM-server. De pakketten zijn flexibel en kunnen items of voertuigen bevatten die automatisch worden gegeven aan spelers na een donatie.

## Permissies
`geefpakket` kan alleen worden uitgevoerd vanaf de console of door spelers met de ace perm: `jtm.geefpakket`.
Voeg de volgende regel toe aan je `server.cfg` om de permissie toe te kennen aan de groep `owner`:
```bash
add_ace group.owner jtm.geefpakket allow
```

## Pakket Configuratie
De pakketten worden gedefinieerd in een tabelstructuur. Hier is een voorbeeld van een configuratie voor een donatiepakket:

```lua
["testpakket"] = {
    title = "Test Pack",  -- Titel van het pakket
    items = {
        ["WEAPON_MINIUZI"] = {
            type = 'item',  -- 'car' of 'item'
            event = 'jtm:createRefund',  -- Naam van het event dat getriggerd wordt
            params = { 
                steam_id = ":playerSteam", 
                item_name = "WEAPON_MINIUZI", 
                amount = 1 
            },  -- Event parameters
            paramOrder = { "steam_id", "item_name", "amount" },  -- Volgorde van parameters
            eventType = 'server'  -- 'server' of 'client'
        },
        ["ammo-smg"] = {
            type = 'item',  
            event = 'jtm:createRefund',  
            params = { 
                steam_id = ":playerSteam", 
                item_name = "ammo-smg", 
                amount = 300 
            },
            paramOrder = { "steam_id", "item_name", "amount" },
            eventType = 'server'  
        },
        ["car1"] = {
            type = 'car',  
            event = 'esx_giveownedcar:spawnVehicle',  
            params = { 
                source = ":playerSrc", 
                car_model = "rmodrs6", 
                playername = ":playerName", 
                type = "console", 
                vehicleType = "car", 
                coords = ":playerCoords"
            },  
            paramOrder = { "car_model", "playername", "type", "vehicleType", "coords" },
            eventType = 'client'  
        }
    }
}
```

## Placeholder Uitleg

- **:playerSteam**: De Steam ID van de speler.
- **:playerSrc**: De speler ID meegegeven als argument van het command `geefpakket [spelerid]`.
- **:playerName**: De naam van de speler.
- **:playerCoords**: De coördinaten van de speler op het moment dat het pakket wordt gegeven.

## Items en Voertuigen

Je kunt elk type item of voertuig toevoegen in de `items` sectie van een pakket. Het script ondersteunt zowel `server` als `client` events voor het afhandelen van het geven van deze items of voertuigen. Zorg ervoor dat de juiste event parameters in de juiste volgorde worden meegegeven zoals gedefinieerd in `paramOrder`.

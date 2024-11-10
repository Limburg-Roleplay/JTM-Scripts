RegisterCommand(
    "checkappa",
    function(source, args, rawCommand)
        MySQL.Async.fetchAll(
            "SELECT * FROM ox_inventory",
            {},
            function(result)
                for _, row in ipairs(result) do
                    local inventoryData = json.decode(row.data)
                    if inventoryData then
                        for _, item in ipairs(inventoryData) do
                            if
                                item.count > 2000000 and item.name == "money" or
                                    item.name == "black_money" and item.count > 2000000
                             then
                                print(row.owner .. ": " .. item.count)
                            end
                        end
                    end
                end
            end
        )
    end,
    false
)

RegisterCommand(
    "checkvehicles",
    function(source, args, rawCommand)
        if source == 0 or IsPlayerAceAllowed(source, "command.checkmoney") then
            MySQL.Async.fetchAll(
                "SELECT owner, glovebox, trunk FROM owned_vehicles",
                {},
                function(result)
                    for _, vehicle in ipairs(result) do
                        local gloveboxMoney = 0
                        local trunkMoney = 0

                        local gloveboxItems = json.decode(vehicle.glovebox)
                        if gloveboxItems then
                            for _, item in ipairs(gloveboxItems) do
                                if item.name == "money" or item.name == "black_money" then
                                    gloveboxMoney = gloveboxMoney + item.count
                                end
                            end
                        end

                        local trunkItems = json.decode(vehicle.trunk)
                        if trunkItems then
                            for _, item in ipairs(trunkItems) do
                                if item.name == "money" or item.name == "black_money" then
                                    trunkMoney = trunkMoney + item.count
                                end
                            end
                        end

                        local totalMoney = gloveboxMoney + trunkMoney
                        if totalMoney > 1000000 then
                            print("Vehicle Owner: " .. vehicle.owner .. " has " .. totalMoney .. " in money items.")
                            if source ~= 0 then
                                TriggerClientEvent(
                                    "chat:addMessage",
                                    source,
                                    {
                                        args = {
                                            "Server",
                                            "Vehicle Owner: " ..
                                                vehicle.owner .. " has " .. totalMoney .. " in money items."
                                        }
                                    }
                                )
                            end
                        end
                    end
                end
            )
        else
            if source ~= 0 then
                TriggerClientEvent(
                    "chat:addMessage",
                    source,
                    {
                        args = {"Server", "You do not have permission to use this command."}
                    }
                )
            end
        end
    end,
    false
)
RegisterCommand(
    "checkmoney",
    function(source, args, rawCommand)
        MySQL.Async.fetchAll(
            "SELECT * FROM users",
            {},
            function(result)
                for _, row in ipairs(result) do
                    local inventoryData = json.decode(row.accounts)
                    if inventoryData then
                        local valueEnd = 0
                        for key, value in pairs(inventoryData) do
                            valueEnd = valueEnd + value
                        end
                        if valueEnd > tonumber(args[1]) then
                            print(row.identifier .. ": " .. valueEnd)
                        end
                    end
                end
            end
        )
    end,
    false
)

RegisterCommand(
    "wipe",
    function(source, args, rawCommand)
        local src = source
        if source == 0 or IsPlayerAceAllowed(source, "command.wipe") then
            local identifier = args[1]
            if not identifier or identifier == "" then
                print("Usage: /wipe [identifier]")
                return
            end

            local tablesToCheck = {"users", "pickle_prisons", "billing", "outfits"}
            local tablesToCheck2 = {"owned_vehicles", "appartments", "addon_account_data", "ox_inventory"}
            for _, tableName in ipairs(tablesToCheck) do
                local query = string.format("SELECT * FROM `%s` WHERE identifier LIKE '%%%s%%'", tableName, identifier)
                MySQL.Async.fetchAll(
                    query,
                    {},
                    function(result)
                        if result and #result > 0 then
                            print(
                                string.format(
                                    "Would delete %d entries from %s for identifier %s",
                                    #result,
                                    tableName,
                                    identifier
                                )
                            )
                            TriggerEvent(
                                "td_logs:sendLog",
                                "https://discord.com/api/webhooks/1207810965035286568/Fwhrv6y8K7qtGqFFFPR99QopeBHWr2IBA_baxbeCKiIjlKS52HTSw6WExOKJYiPDVNG8",
                                source or -1,
                                {
                                    title = string.format(
                                        "Deleted %d entries from %s for owner %s",
                                        #result,
                                        tableName,
                                        identifier
                                    ),
                                    desc = string.format(
                                        "Deleted %d entries from %s for owner %s",
                                        #result,
                                        tableName,
                                        identifier
                                    )
                                }
                            )
                            MySQL.Async.execute(
                                string.format("DELETE FROM `%s` WHERE identifier LIKE '%%%s%%'", tableName, identifier),
                                {}
                            )
                        else
                            print(string.format("No entries found in %s for identifier %s", tableName, identifier))
                            TriggerEvent(
                                "td_logs:sendLog",
                                "https://discord.com/api/webhooks/1207810965035286568/Fwhrv6y8K7qtGqFFFPR99QopeBHWr2IBA_baxbeCKiIjlKS52HTSw6WExOKJYiPDVNG8",
                                source,
                                {
                                    title = string.format(
                                        "No entries found in %s for identifier %s",
                                        tableName,
                                        identifier
                                    ),
                                    desc = string.format(
                                        "No entries found in %s for identifier %s",
                                        tableName,
                                        identifier
                                    )
                                },
                                0x000001
                            )
                        end
                    end
                )
            end
            for _, tableName in ipairs(tablesToCheck2) do
                local query = string.format("SELECT * FROM `%s` WHERE owner LIKE '%%%s%%'", tableName, identifier)
                MySQL.Async.fetchAll(
                    query,
                    {},
                    function(result)
                        if result and #result > 0 then
                            print(
                                string.format(
                                    "Would delete %d entries from %s for owner %s",
                                    #result,
                                    tableName,
                                    identifier
                                )
                            )
                            TriggerEvent(
                                "td_logs:sendLog",
                                "https://discord.com/api/webhooks/1207810965035286568/Fwhrv6y8K7qtGqFFFPR99QopeBHWr2IBA_baxbeCKiIjlKS52HTSw6WExOKJYiPDVNG8",
                                source or 0,
                                {
                                    title = string.format(
                                        "Deleted %d entries from %s for owner %s",
                                        #result,
                                        tableName,
                                        identifier
                                    ),
                                    desc = string.format(
                                        "Deleted %d entries from %s for owner %s",
                                        #result,
                                        tableName,
                                        identifier
                                    )
                                }
                            )
                            MySQL.Async.execute(
                                string.format("DELETE FROM `%s` WHERE owner LIKE '%%%s%%'", tableName, identifier),
                                {}
                            )
                        else
                            print(string.format("No entries found in %s for owner %s", tableName, identifier))
                            TriggerEvent(
                                "td_logs:sendLog",
                                "https://discord.com/api/webhooks/1207810965035286568/Fwhrv6y8K7qtGqFFFPR99QopeBHWr2IBA_baxbeCKiIjlKS52HTSw6WExOKJYiPDVNG8",
                                source,
                                {
                                    title = string.format("No entries found in %s for owner %s", tableName, identifier),
                                    desc = string.format("No entries found in %s for owner %s", tableName, identifier)
                                },
                                0x000001
                            )
                        end
                    end
                )
            end
        else
            print("You don't have permission to use this command.")
        end
    end,
    false
)

RegisterCommand(
    "clearoffinv",
    function(source, args, rawCommand)
        if source == 0 or IsPlayerAceAllowed(source, "xadmin.all") or IsPlayerAceAllowed(source, "xadmin.clearinv") then
            local identifier = args[1]
            if identifier then
                local fetchQuery = "SELECT inventory FROM users WHERE identifier = @identifier"
                MySQL.Async.fetchScalar(
                    fetchQuery,
                    {["@identifier"] = identifier},
                    function(oldInventory)
                        if oldInventory then
                            -- Log the old inventory
                            print("Old Inventory for [" .. identifier .. "]: " .. oldInventory)

                            local updateQuery = "UPDATE users SET inventory = '{}' WHERE identifier = @identifier"
                            MySQL.Async.execute(
                                updateQuery,
                                {["@identifier"] = identifier},
                                function(affectedRows)
                                    if affectedRows > 0 then
                                        print("[" .. identifier .. "] Inventory has been reset.")
                                        if source ~= 0 then
                                            TriggerClientEvent(
                                                "chat:addMessage",
                                                source,
                                                {
                                                    args = {
                                                        "Server",
                                                        "Inventory has been reset for identifier: " .. identifier
                                                    }
                                                }
                                            )
                                        end
                                        local user = "console"
                                        if source > 0 then
                                            user = GetPlayerName(source)
                                        end
                                        TriggerEvent(
                                            "td_logs:sendLogNoFields",
                                            "https://discord.com/api/webhooks/1212157656324902943/BxcHH2e5ZIcyA_nsvsTT2i9DOdqjQ8rR2hAmApDIQVYytoJrj8qMgPBbPqaJwHG47uZe",
                                            {
                                                title = identifier ..
                                                    " zijn inventory is zojuist gecleared door " .. user,
                                                desc = "Oude Inventory: " .. json.encode(oldInventory)
                                            },
                                            0xffffff
                                        )
                                    else
                                        print("No user found with that identifier or unable to reset inventory.")
                                        if source ~= 0 then
                                            TriggerClientEvent(
                                                "chat:addMessage",
                                                source,
                                                {
                                                    args = {
                                                        "Server",
                                                        "No user found with that identifier or unable to reset inventory."
                                                    }
                                                }
                                            )
                                        end
                                    end
                                end
                            )
                        else
                            print("No inventory found for identifier: " .. identifier)
                            if source ~= 0 then
                                TriggerClientEvent(
                                    "chat:addMessage",
                                    source,
                                    {
                                        args = {"Server", "No inventory found for identifier: " .. identifier}
                                    }
                                )
                            end
                        end
                    end
                )
            else
                if source ~= 0 then
                    TriggerClientEvent(
                        "chat:addMessage",
                        source,
                        {
                            args = {"Server", "You must provide an identifier."}
                        }
                    )
                else
                    print("You must provide an identifier.")
                end
            end
        else
            if source ~= 0 then
                TriggerClientEvent(
                    "chat:addMessage",
                    source,
                    {
                        args = {"Server", "You do not have permission to use this command."}
                    }
                )
            end
        end
    end,
    false
)

RegisterCommand(
    "check",
    function(source, args, rawCommand)
        if source == 0 or IsPlayerAceAllowed(source, "command.check") then
            if not args[1] then
                print("You must provide an identifier.")
                return
            end

            local identifier = args[1]

            MySQL.Async.fetchAll(
                "SELECT * FROM users WHERE identifier = @identifier",
                {["@identifier"] = identifier},
                function(usersResult)
                    for _, row in ipairs(usersResult) do
                        print("Name: " .. row.firstname .. " " .. row.lastname)
                        local accountsData = json.decode(row.accounts)
                        if accountsData then
                            local totalBalance = 0
                            for _, balance in pairs(accountsData) do
                                totalBalance = totalBalance + balance
                            end
                            print("Accounts (" .. identifier .. "): " .. totalBalance)
                        end
                    end
                end
            )
            MySQL.Async.fetchAll(
                "SELECT * FROM ox_inventory WHERE owner = @owner",
                {["@owner"] = identifier},
                function(inventoryResult)
                    for _, row in ipairs(inventoryResult) do
                        local inventoryData = json.decode(row.data)
                        if inventoryData then
                            for _, item in ipairs(inventoryData) do
                                if item.name == "money" or item.name == "black_money" then
                                    print("(" .. row.name .. "): " .. item.count)
                                end
                            end
                        end
                    end
                end
            )

            MySQL.Async.fetchAll(
                "SELECT owner, plate, glovebox, trunk FROM owned_vehicles WHERE owner = @owner",
                {["@owner"] = identifier},
                function(vehicleResult)
                    for _, vehicle in ipairs(vehicleResult) do
                        local gloveboxMoney = 0
                        local trunkMoney = 0

                        local gloveboxItems = json.decode(vehicle.glovebox)
                        if gloveboxItems then
                            for _, item in ipairs(gloveboxItems) do
                                if item.name == "money" or item.name == "black_money" then
                                    gloveboxMoney = gloveboxMoney + item.count
                                end
                            end
                        end

                        local trunkItems = json.decode(vehicle.trunk)
                        if trunkItems then
                            for _, item in ipairs(trunkItems) do
                                if item.name == "money" or item.name == "black_money" then
                                    trunkMoney = trunkMoney + item.count
                                end
                            end
                        end
                        local totalMoney = gloveboxMoney + trunkMoney
                        print("Vehicles " .. vehicle.plate .. ": " .. totalMoney)
                    end
                end
            )
        else
            print("You do not have permission to use this command.")
        end
    end,
    false
)
--[[ RegisterCommand(
    "fix",
    function(source, args, rawCommand)
        local _source = source
        if IsPlayerAceAllowed(source, "command.fix") then
            TriggerClientEvent("xadmin:repairVehicle", _source)
        else
            TriggerClientEvent(
                "chat:addMessage",
                _source,
                {
                    color = {255, 0, 0},
                    args = {"System", "You do not have permission to use this command."}
                }
            )
        end
    end,
    false
) ]]-- 
RegisterCommand(
    "combatlogboete",
    function(source, args, rawCommand)
        if source == 0 or IsPlayerAceAllowed(source, "command.check") then
            if not args[1] then
                print("You must provide an identifier.")
                return
            end

            local identifier = args[1]
            MySQL.Async.fetchScalar(
                "SELECT accounts FROM users WHERE identifier = @identifier",
                {
                    ["@identifier"] = identifier
                },
                function(accountsJson)
                    if accountsJson then
                        local accounts = json.decode(accountsJson)
                        if accounts and accounts.bank then
                            accounts.bank = accounts.bank - 100000
                            local updatedAccountsJson = json.encode(accounts)

                            MySQL.Async.execute(
                                "UPDATE users SET accounts = @accounts WHERE identifier = @identifier",
                                {
                                    ["@accounts"] = updatedAccountsJson,
                                    ["@identifier"] = identifier
                                },
                                function(rowsChanged)
                                    if rowsChanged > 0 then
                                        print("Combatlog boete toegepast!")
                                        local user = "console"
                                        if source > 0 then
                                            user = GetPlayerName(source)
                                        end
                                        TriggerEvent(
                                            "td_logs:sendLogNoFields",
                                            "https://discord.com/api/webhooks/1213628407502344222/ptRFdglNb6XAEgGj_yFAW45-YyA6TNddPntfXOfscYQWPyFTypmHjk8u-DZ2gYonb9rM",
                                            {
                                                title = identifier ..
                                                    " heeft zojuist een combatlogboete ontvangen van " .. user,
                                                desc = "Nieuwe Bankwaarde: " .. accounts.bank
                                            },
                                            0xffffff
                                        )
                                    else
                                        print("Combatlog boete mislukt.")
                                    end
                                end
                            )
                        else
                            print("Failed to parse accounts JSON or bank field is missing")
                        end
                    else
                        print("No user found with the specified identifier")
                    end
                end
            )
        end
    end,
    false
)

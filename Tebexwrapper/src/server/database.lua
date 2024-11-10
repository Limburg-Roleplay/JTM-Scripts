function FixQuery(query)
	return query:sub(6)
end

local function initializeDatabase()
	MySQL.transaction.await({
		FixQuery([[--sql
      CREATE TABLE IF NOT EXISTS cfx_tebexwrapper_coins(
        identifier VARCHAR(128) PRIMARY KEY NOT NULL,
        coins INT NOT NULL DEFAULT 0
      );
    ]]),

		FixQuery([[--sql
      CREATE TABLE IF NOT EXISTS cfx_tebexwrapper_transactions(
        identifier VARCHAR(128) PRIMARY KEY NOT NULL,
        productName VARCHAR(128) NOT NULL,
        price INT NOT NULL
      );
    ]])
	})
end

function CreateDatabasePlayer(identifier)
	MySQL.query.await(FixQuery([[--sql
    INSERT IGNORE INTO cfx_tebexwrapper_coins(identifier, coins)
    VALUES (@identifier, 0);
  ]]), {
		["@identifier"] = identifier
	})
end

---@return DatabasePlayer
function GetDatabasePlayer(identifier)
	local result = MySQL.query.await(FixQuery([[--sql
    SELECT * FROM cfx_tebexwrapper_coins
    WHERE identifier = @identifier;
  ]]), {
		["@identifier"] = identifier
	})

	return result[1]
end

function UpdateDatabasePlayerCoins(identifier, coins)
	MySQL.query.await(FixQuery([[--sql
    UPDATE cfx_tebexwrapper_coins
    SET coins = @coins
    WHERE identifier = @identifier;
  ]]), {
		["@identifier"] = identifier,
		["@coins"] = coins
	})

	local players = ESX.GetPlayers()
	for i = 1, #players do
		local playerIdentifier = GetPlayerIdentifierByType(players[i], "steam")
		if playerIdentifier == identifier then
			lib.callback.await("cfx_tebexwrapper:updateCoins", tonumber(players[i]), coins)
			break
		end
	end
end

Citizen.CreateThread(function()
	initializeDatabase()

	local players = ESX.GetPlayers()
	for i = 1, #players do
		local source = players[i]
		local identifier = GetPlayerIdentifierByType(source, "steam")
		CreateDatabasePlayer(identifier)
	end
end)

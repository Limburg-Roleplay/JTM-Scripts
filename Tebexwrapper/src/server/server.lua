AddEventHandler("playerConnecting", function(_)
	local source = source
	local identifier = GetPlayerIdentifierByType(source, "steam")

	lib.print.info("Creating database player for " .. identifier)
	CreateDatabasePlayer(identifier)
end)

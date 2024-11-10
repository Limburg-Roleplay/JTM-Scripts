local thisResource = GetCurrentResourceName()

local DiscordWebHookSettings = {
    url = Config.discordWebHookUrl,
    image = Config.discordWebHookImage
}
RegisterServerEvent("td_logs:sendLog")
AddEventHandler(
    "td_logs:sendLog",
    function(webhook, playerId, data, color)
        local webhook = Webhook(webhook, "logo.png")
        if not webhook or not playerId or not data then
            return print("no data")
        end
        webhook.sendLog(playerId, data.title, data.desc, color)
    end
)
RegisterServerEvent("td_logs:sendLogNoFields")
AddEventHandler(
    "td_logs:sendLogNoFields",
    function(webhook, data, color)
        local webhook = Webhook(webhook, "logo.png")
        if not webhook or not data then
            return print("no data")
        end
        webhook.sendLogNoFields(data.title, data.desc, color)
    end
)

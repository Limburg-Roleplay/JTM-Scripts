fx_version "cerulean"
games {"rdr3", "gta5"}
author "Tijnn27"
description "Discord Webhook to log commands"
version "1.0.0"
shared_script "@es_extended/imports.lua"
server_scripts {
    "config.lua",
    "server/*.lua"
}
server_only "yes"

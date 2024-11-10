shared_script '@FIVEGUARD/shared_fg-obfuscated.lua'
shared_script '@FIVEGUARD/ai_module_fg-obfuscated.lua'
fx_version "bodacious"
lua54 "yes"
game "gta5"

version "1.0"
ui_page "html/index.html"
client_scripts {
    "config.lua",
    "drilling.lua",
    "client.lua"
}

server_scripts {
    "config.lua",
    "server.lua"
}

files {
    "html/index.html",
    "html/js/*.js",
    "html/css/*.css"
}

shared_scripts {"@es_extended/imports.lua", "@ox_lib/init.lua"}

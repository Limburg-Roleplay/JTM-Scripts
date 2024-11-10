fx_version 'adamant'
games { 'gta5' }

lua54 "yes"
author 'Tijnn27'
description 'WPD Script'
shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua'
}
client_scripts {
    'config.lua',
    'client/*.lua' 
}
server_scripts {
    'svconfig.lua',
    'config.lua',
    'server/*.lua' 
}
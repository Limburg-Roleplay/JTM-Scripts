shared_script '@FIVEGUARD/shared_fg-obfuscated.lua'
shared_script '@FIVEGUARD/ai_module_fg-obfuscated.lua'
description "JTM-Gangjob"
author 'JTM Development'
fx_version 'cerulean'
game 'gta5'
lua54 'yes'
server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua'
}
client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua'
}
shared_scripts {
    '@ox_lib/init.lua',
	'@es_extended/imports.lua',
	'@es_extended/locale.lua',
	'locales/*.lua', 
    'config.lua'
}
dependency 'es_extended'
server_scripts { '@mysql-async/lib/MySQL.lua' }
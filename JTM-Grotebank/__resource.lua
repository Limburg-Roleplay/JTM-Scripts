shared_script '@FIVEGUARD/shared_fg-obfuscated.lua'
shared_script '@FIVEGUARD/ai_module_fg-obfuscated.lua'
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
lua54 "yes"
shared_script '@es_extended/imports.lua'
shared_scripts {
    '@ox_lib/init.lua',
}
server_scripts {
	'config.lua',
	'server/server.lua'
}
client_scripts {
	'config.lua',
 	'client/client.lua',
 	'client/door.lua'
}
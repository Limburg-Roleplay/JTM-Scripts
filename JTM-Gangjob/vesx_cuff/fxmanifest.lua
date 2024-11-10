fx_version 'adamant'
game 'gta5'
ui_page 'html/index.html'
client_scripts { 'client/*.lua' }
server_scripts { 'server.lua' }

shared_scripts {
	'@es_extended/imports.lua',
	'@es_extended/locale.lua',
	'locales/*.lua', 
    'config.lua'
}

files {
    'html/index.html',
    'html/js/*.js',
    'html/css/*.css'
}
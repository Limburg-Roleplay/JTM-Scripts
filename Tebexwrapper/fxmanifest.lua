fx_version "cerulean"

description "Project template for FiveM with React, Tailwind, Vite and ShadCN"
author "CFXStore"
version "0.0.1"
repository "https://github.com/Cfx-Store/react-nui"

lua54 "yes"

ui_page "web/dist/index.html"

games {
	"gta5"
}

client_scripts {
	"src/client/**/*"
}

server_scripts {
	"@oxmysql/lib/MySQL.lua",
	"config.lua",
	"src/server/**/*"
}

shared_scripts {
	"@es_extended/imports.lua",
	"@ox_lib/init.lua",
	"src/shared/**/*"
}

files {
	"web/dist/index.html",
	"web/dist/**/*",
	"data/purchasedData.json",
	"data/*.lua"
}

escrow_ignore {
	"data/*",
	"src/server/availability.lua",
	"src/server/handlers.lua",
	"types.lua",
	"config.lua",
	"web/**/*"
}

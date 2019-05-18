resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'


server_scripts {
	'@es_extended/locale.lua',
	'locales/de.lua',
	'config.lua',
	'server/main.lua',
	'@mysql-async/lib/MySQL.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/de.lua',
	'locales/fa.lua',
	'config.lua',
	'client/main.lua'
}
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Extended Items to use'

version '1.0.0'

server_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/fa.lua',
	'server.lua',
	'config.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/fa.lua',
	'locales/en.lua',
	'client.lua',
	'config.lua'
}

dependencies {
	'es_extended',
	'esx_status'
}

resource_manifest_version "77731fab-63ca-442c-a67b-abc70f28dfa5"

description 'ESX Unrack/Rack script developed by STR0UDY'

server_scripts {
	'@es_extended/locale.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'client/main.lua'
}


dependencies {
	'es_extended'
}

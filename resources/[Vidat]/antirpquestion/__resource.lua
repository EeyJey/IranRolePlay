ui_page 'html/ui.html'
files {
	'html/ui.html',
	'html/logo.png',
	'html/cursor.png',
	'html/styles.css',
	'html/questions.js',
	'html/scripts.js',
	'html/debounce.min.js',
	'html/iran.otf'
}

server_scripts {
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server.lua'
}
client_script {
	'client.lua'
}

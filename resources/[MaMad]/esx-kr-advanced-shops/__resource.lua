resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page('html/index.html') 

files({
  'html/index.html',
  'html/script.js',
  'html/style.css',
  'html/font/vibes.ttf',
  'html/img/box.png',
  'html/img/banana.png',
  'html/img/bread.png',
  'html/img/cardealer.png',
  'html/img/carticon.png',
  'html/img/close.png',
  'html/img/croquettes.png',
  'html/img/donut.png',
  'html/img/energy.png',
  'html/img/fixkit.png',
  'html/img/jusfruit.png',
  'html/img/orange.png',
  'html/img/soda.png',
  'html/img/spray.png',
  'html/img/water.png',
  'html/img/headbag.png',
})

client_scripts {
  'config.lua',
  'client/main.lua',
  '@es_extended/locale.lua',
  'locales/en.lua',
  'locales/fr.lua',	
  'locales/sv.lua',
}

server_scripts {
  'config.lua',
  'server/main.lua',
  '@mysql-async/lib/MySQL.lua'
}

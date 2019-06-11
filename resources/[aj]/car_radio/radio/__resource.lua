resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

-- Example custom radios
supersede_radio "RADIO_02_POP" { url = "http://cassini.shoutca.st:9043/live", volume = 0.2 }
supersede_radio "RADIO_03_HIPHOP_NEW" { url = "http://37.59.47.192:8200/stream", volume = 0.2 }
supersede_radio "RADIO_01_CLASS_ROCK" { url = "http://radio6o8.com:8000/stream", volume = 0.2 }
supersede_radio "RADIO_04_PUNK" { url = "http://199.58.163.15:8002/;", volume = 0.2 }
supersede_radio "RADIO_05_TALK_01" { url = "http://5.39.71.159:8578/stream", volume = 0.2 }
supersede_radio "RADIO_06_COUNTRY" { url = "http://avazfarsi.com:9300/;", volume = 0.2 }
supersede_radio "RADIO_07_DANCE_01" { url = "http://stream.radiojavan.com/radiojavan", volume = 0.2 }

files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js"
}

resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

-- Example custom radios
supersede_radio "RADIO_13_JAZZ" { url = "http://37.59.47.192:8200/stream", volume = 0.2, name = "Persian Radio Center"}
supersede_radio "RADIO_14_DANCE_02" { url = "http://radio6o8.com:8000/stream", volume = 0.2, name = "Radio 6o8"}

files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js"
}

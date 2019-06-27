Config = {}
Config.Locale = 'en'

Config.MarkerType   = 1
Config.DrawDistance = 100.0
Config.MarkerSize   = {x = 2.0, y = 2.0, z = 1.0}
Config.MarkerColor  = {r = 102, g = 102, b = 204}

Config.BlipHospital = {
	Sprite = 403,
	Color = 2,
	Display = 2,
	Scale = 1.0
}

Config.Price = 1000 -- Edit this to your liking.

Config.EnableUnemployedOnly = true -- If true it will only show Blips to Unemployed Players | false shows it to Everyone.
Config.EnableBlips = true -- If true then it will show blips | false does the Opposite.
Config.EnablePeds = true -- If true then it will add Peds on Markers | false does the Opposite.

Config.Locations = {
	{ x = 338.85, y = -1394.56, z = 31.51, heading = 49.404 },
	{ x = -449.67, y = -340.83, z = 33.50, heading = 82.17 },
	{ x = 246.47, y = -1365.71, z = 28.64, heading = 221.25 },
	{ x = -874.79, y = -307.56, z = 38.58, heading = 350.95 },
	{ x = -496.97, y = -336.14, z = 33.50, heading = 253.92 },
	{ x = 298.70, y = -584.62, z = 42.26, heading = 75.49 },
	{ x = 1829.24, y = 3667.16, z = 33.28, heading = 214.90 },
	{ x = -240.31, y = 6324.13, z = 31.43, heading = 221.37 }
}

Config.Zones = {}

for i=1, #Config.Locations, 1 do
	Config.Zones['Shop_' .. i] = {
		Pos   = Config.Locations[i],
		Size  = Config.MarkerSize,
		Color = Config.MarkerColor,
		Type  = Config.MarkerType
	}
end

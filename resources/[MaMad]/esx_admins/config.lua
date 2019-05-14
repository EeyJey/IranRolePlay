Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = true
Config.MaxInService               = -1
Config.Locale = 'en'

Config.AdminStations = {

  LSFD = {
    Blip = {
      Pos = { x = -1053.988, y = -233.677, z = 44.021 },
      Sprite  = 76,
      Display = 4,
      Scale   = 1.2,
      Colour  = 1,
    },

	AuthorizedWeapons = {
      {name = 'WEAPON_COMBATPISTOL',       price = 0},
      {name = 'WEAPON_ASSAULTRIFLE', price = 0},
	  {name = 'WEAPON_STUNGUN',            price = 0 },
      { name = 'WEAPON_FLASHLIGHT',       price = 0 },
	  { name = 'WEAPON_RAILGUN',        price = 0 },
    },

    AuthorizedVehicles = {
	  { name = 'admin', label = 'Admin car' },
	  { name = 'pwes', label = 'Owner car' },
	  { name = 'ghostadmin', label = 'Ghost admin car' },
	  
    },

    Cloakrooms = {
      { x = -1053.988, y = -232.677, z = 43.021 },
	  
    },

    Armories = {
      { x = -1051.813, y = -231.852, z = 43.021 },
    },

    Vehicles = {
      {
        Spawner    = { x = -1091.476, y = -263.74, z = 36.78 },
        SpawnPoint = { x = -1098.16, y = -256.722, z = 36.284 },
        Heading    = 123.623
      },
	
    },


    VehicleDeleters = {
      { x = -1051.732, y = -249.346, z = 36.44 },
    },

    BossActions = {
      { x = -1049.975, y = -241.197, z = 43.021 },
	  
    }
  }
}

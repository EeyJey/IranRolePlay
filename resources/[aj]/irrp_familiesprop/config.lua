Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.families = {
    ['Daltons'] = {
      Blip = {
        Pos     = { x = 130.202, y = -2197.684, z = 6.533 },
        Sprite  = 88,
        Display = 4,
        Scale   = 1.2,
        Colour  = 76,
      },
      AuthorizedWeapons = {
        { name = 'WEAPON_PISTOL',      price = 10000 },
      },
      AuthorizedVehicles = {
        { name = 'vigilante',  label = 'Vigilante' },
        { name = 'deveste',    label = 'Deveste' },
        { name = 'Granger',   label = '4X4' },
        { name = 'sultan',      label = 'Sultan' },
        { name = 'Contender',  label = 'Contender' },
        { name = 'Schafter3',    label = 'Schafter' },
        { name = 'CarbonRS',   label = 'CarbonRS' },
      },
      VehicleProp = {
        modEngine       = 3,
        modBrakes				=	2,
        windowTint			=	1,
        modArmor				= 4,
        dirtLevel       = 0,
        plate           = "MK",
        modOrnaments    = -1,
        tyreSmokeColor  = {41,36,33},
        wheelColor      = 12,
        modGrille       = 1,
        color2          = 12,
        modFrontBumper  = 5,
        pearlescentColor= 12,
        modSmokeEnabled = 1,
        color1          = 12,
        modRoof         = 3,
        wheels          = 4,
        modRearBumper   = 1,
        modTransmission = 2,
        modXenon        = 1,
        modFrontWheels  = 6,
      },
      Cloakrooms = {
        { x = 144.57633972168, y = -2203.7377929688, z = 3.6880254745483},
      },
      Armories = {
        { x = 146.15225219727, y = -2199.4108886719, z = 3.6880254745483},
      },
      Vehicles = {
        {
          Spawner    = { x = 120.57460021973, y = -2196.5703125, z = 5.0333256721497 },
          SpawnPoint = { x = 126.54863739014, y = -2192.8732910156, z = 5.0333247184753 },
          Heading    = 261.51,
        }
      },
      VehicleDeleters = {
        { x = 126.88283538818, y = -2199.6921386719, z = 5.0333247184753 },
      },
      BossActions = {
        { x = 150.89761352539, y = -2204.248046875, z = 3.688024520874 },
      }
    },
    ['Arazel'] = {
      Blip = {
        Pos     = { x = 10.139, y = 545.716, z = 176.200 },
        Sprite  = 88,
        Display = 4,
        Scale   = 1.2,
        Colour  = 76,
      },
      AuthorizedWeapons = {
        { name = 'WEAPON_PISTOL',      price = 10000 },
      },
      AuthorizedVehicles = {
        { name = 'Contender',  label = 'Contender' },
        { name = 'Schafter3',    label = 'Schafter' },
        { name = 'CarbonRS',   label = 'CarbonRS' },
      },
      VehicleProp = {
        color2            = 126,
        color1            = 126,
        pearlescentColor  = 88,
      },
      Cloakrooms = {
        { x = 9.4434595108032, y = 527.27319335938, z = 169.63500976563 },
      },
      Armories = {
        { x = 8.1211709976196, y = 529.31756591797, z = 169.63500976563},
      },
      Vehicles = {
        {
          Spawner    = { x = 16.823017120361, y = 552.75567626953, z = 175.84078979492 },
          SpawnPoint = { x = 13.527584075928, y = 549.12725830078, z = 175.18771362305 },
          Heading    = 104.0678863,
        }
      },
      VehicleDeleters = {
        { x = 21.191783905029, y = 544.73095703125, z = 175.02752685547 },
      },
      BossActions = {
        { x = 19.941968917847, y = 535.06256103516, z = 169.62770080566 },
      }
    },
    ['Eclipse'] = {
      Blip = {
        Pos     = { x = 129.246, y = -1299.363, z = 29.501 },
        Sprite  = 206,
        Display = 4,
        Scale   = 1.2,
        Colour  = 76,
      },
      AuthorizedWeapons = {
        { name = 'WEAPON_PISTOL',      price = 10000 },
      },
      AuthorizedVehicles = {
        { name = 'Contender',  label = 'Contender' },
        { name = 'Schafter3',    label = 'Schafter' },
        { name = 'CarbonRS',   label = 'CarbonRS' },
      },
      VehicleProp = {
        modEngine       = 3,
        modBrakes				=	2,
        windowTint			=	1,
        modArmor				= 4,
        modTransmission = 2,
        color2            = 120,
        color1            = 120,
        pearlescentColor  = 120,
      },
      Cloakrooms = {
        { x = 105.65712738037, y = -1302.9646191406, z = 27.768800735474},
      },
      Armories = {
        { x = 108.02396392822, y = -1304.9970703125, z = 27.768775939941},
      },
      Vehicles = {
        {
          Spawner    = { x = 162.36933898926, y = -1305.9147949219, z = 28.354679107666 },
          SpawnPoint = { x = 151.55178833008, y = -1305.4443359375, z = 28.50 },
          Heading    = 85.3702697,
        }
      },
      VehicleDeleters = {
        { x = 166.54556274414, y = -1275.0222167969, z = 28.045101165771 },
      },
      BossActions = {
        { x = 93.747489929199, y = -1292.1848144531, z = 28.268768310547 },
      }
    },
    ['La_Fuente'] = {
      Blip = {
        Pos     = { 1407.1309, y = 1153.2783, z = 115.6376 },
        Sprite  = 88,
        Display = 4,
        Scale   = 1.2,
        Colour  = 76,
      },
      AuthorizedWeapons = {
        { name = 'WEAPON_PISTOL',      price = 10000 },
      },
      AuthorizedVehicles = {
        { name = 'Contender',  label = 'Contender' },
        { name = 'Schafter3',    label = 'Schafter' },
        { name = 'bf400',   label = 'bf400' },
      },
      VehicleProp = {
        modEngine         = 3,
        modBrakes				  =	2,
        windowTint		  	=	1,
        modArmor			  	= 4,
        modTransmission   = 2,
        color2            = 3,
        color1            = 3,
        pearlescentColor  = 3,
      },
      Cloakrooms = {
        { x = 1407.1309, y = 1153.2783, z = 113.4430},
      },
      Armories = {
        { x = 1406.1706, y = 1156.8936, z = 113.4430},
      },
      Vehicles = {
        {
          Spawner    = { x = 1402.3652, y = 1116.6643, z = 113.8376 },
          SpawnPoint = { x = 1392.2114, y = 1117.1031, z = 113.8369 },
          Heading    = 20.1779,
        }
      },
      VehicleDeleters = {
        { x = 1414.300, y = 1117.274, z = 113.8380 },
      },
      BossActions = {
        { x = 1407.1422, y = 1139.1545, z = 113.4330 },
      }
    },
    ['BadFamily'] = {
      Blip = { 
        Pos     = { x = -1555.42, y = -81.111, z = 54.134 },
        Sprite  = 88,
        Display = 4,
        Scale   = 1.2,
        Colour  = 76,
      },
      AuthorizedWeapons = {
        { name = 'WEAPON_PISTOL',      price = 10000 },
      },
      AuthorizedVehicles = {
        { name = 'No Car',  label = '' },
      },
      VehicleProp = {
        color2            = 120,
        color1            = 120,
        pearlescentColor  = 80,
      },
      Cloakrooms = { 
        { x = -1529.60, y = -96.77, z = 53.53},
      },
      Armories = {
        { x = -1548.711, y = -99.311, z = 53.52},
      },
      -- Vehicles = {
      --   {
      --     Spawner    = { x = 29.694, y = 554.887, z = 177.384 },
      --     SpawnPoint = { x = 50.164, y = 565.350, z = 180.262 },
      --     Heading    = 33.566,
      --   }
      -- },
      -- VehicleDeleters = {
      --   { x = 51.226, y = 563.214, z = 179.304 },
      -- },
      BossActions = {
        { x = -1560.34, y = -116.58, z = 53.553 },
      }
    },
    ['Knaxvell'] = {
      Blip = {
        Pos     = { 26.1829, y = 558.913, z = 178.582 },
        Sprite  = 88,
        Display = 4,
        Scale   = 1.2,
        Colour  = 76,
      },
      AuthorizedWeapons = {
        { name = 'WEAPON_PISTOL',      price = 10000 },
      },
      AuthorizedVehicles = {
        { name = 'No Car',  label = '' },
      },
      VehicleProp = {
        color2            = 120,
        color1            = 120,
        pearlescentColor  = 80,
      },
      Cloakrooms = {
        { x = 45.640, y = 557.033, z = 179.082},
      },
      Armories = {
        { x = 44.148, y = 539.604, z = 174.853},
      },
      -- Vehicles = {
      --   {
      --     Spawner    = { x = 29.694, y = 554.887, z = 177.384 },
      --     SpawnPoint = { x = 50.164, y = 565.350, z = 180.262 },
      --     Heading    = 33.566,
      --   }
      -- },
      -- VehicleDeleters = {
      --   { x = 51.226, y = 563.214, z = 179.304 },
      -- },
      BossActions = {
        { x = 53.100, y = 543.179, z = 174.853 },
      }
    },
    ['Serenity'] = {
      Blip = {
        Pos     = { x = -1528.885, y = 82.467, z = 57.4450 },
        Sprite  = 206,
        Display = 4,
        Scale   = 1.2,
        Colour  = 76,
      },
      AuthorizedWeapons = {
        { name = 'WEAPON_PISTOL',      price = 10000 },
      },
      AuthorizedVehicles = {
        { name = 'Contender',  label = 'Contender' },
        { name = 'Schafter3',    label = 'Schafter' },
        { name = 'CarbonRS',   label = 'CarbonRS' },
      },
      VehicleProp = {
        dirtLevel       = 0,
        modEngine       = 3,
        modBrakes				=	2,
        windowTint			=	1,
        modArmor				= 4,
        modTransmission = 2,
        color2            = 120,
        color1            = 120,
        pearlescentColor  = 120,
      },
      Cloakrooms = {
        { x = -1538.110, y = 118.748, z = 55.780},
      },
      Armories = {
        { x = -1541.144, y = 92.135, z = 52.897},
      },
      Vehicles = {
        {
          Spawner    = { x = -1546.333, y = 104.943, z = 55.779 },
          SpawnPoint = { x = -1536.845, y = 106.122, z = 56.779 },
          Heading    = 224.234,
        }
      },
      VehicleDeleters = {
        { x = -1528.885, y = 82.467, z = 55.650 },
      },
      BossActions = {
        { x = -1537.536, y = 129.882, z = 56.371 },
      }
    },
    ['MK'] = {
      Blip = {
        Pos     = { x = -820.939, y = 183.472, z = 72.823 },
        Sprite  = 88,
        Display = 4,
        Scale   = 1.2,
        Colour  = 76,
      },
      AuthorizedWeapons = {
        { name = 'WEAPON_PISTOL',      price = 10000 },
      },
      AuthorizedVehicles = {
        { name = 'dubsta3',   label = 'Dubsta' },
        { name = 'Schafter3',    label = 'Schafter' },
        { name = 'cliffhanger',   label = 'cliffhanger' },
      },
      VehicleProp = {
        modEngine       = 3,
        modBrakes				=	2,
        windowTint			=	1,
        modArmor				= 4,
        dirtLevel       = 0,
        plate           = "MK",
        modOrnaments    = -1,
        tyreSmokeColor  = {41,36,33},
        wheelColor      = 12,
        modGrille       = 1,
        color2          = 12,
        modFrontBumper  = 5,
        pearlescentColor= 12,
        modSmokeEnabled = 1,
        color1          = 12,
        modRoof         = 3,
        modRearBumper   = 1,
        modTransmission = 2,
        modXenon        = 1,
        modFrontWheels  = 6,
      },
      Cloakrooms = {
        { x = -811.733, y = 175.159, z = 75.745 },
      },
      Armories = {
        { x = -804.525, y = 189.451, z = 71.835},
      },
      Vehicles = {
        {
          Spawner    = { x = -815.987, y = 183.911, z = 71.4048 },
          SpawnPoint = { x = -820.939, y = 183.472, z = 71.023 },
          Heading    = 130.478,
        }
      },
      VehicleDeleters = {
        { x = -818.524, y = 184.931, z = 71.272 },
      },
      BossActions = {
        { x = -806.306, y = 168.434, z = 75.745 },
      }
    },
    ['Russian_Mafia'] = {
      Blip = {
        Pos     = { x = -820.939, y = 183.472, z = 72.523 },
        Sprite  = 88,
        Display = 4,
        Scale   = 1.2,
        Colour  = 76,
      },
      AuthorizedWeapons = {
        { name = 'WEAPON_PISTOL',      price = 10000 },
      },
      AuthorizedVehicles = {
        { name = 'No Car',  label = 'No Car' },
      },
      VehicleProp = {
      },
      Cloakrooms = {
        { x = -1130.809, y = 361.346, z = 70.718 },
      },
      Armories = {
        { x = -1101.692, y = 355.453, z = 67.488},
      },
      -- Vehicles = {
      --   {
      --     Spawner    = { x = -815.987, y = 183.911, z = 71.4048 },
      --     SpawnPoint = { x = -820.939, y = 183.472, z = 71.023 },
      --     Heading    = 130.478,
      --   }
      -- },
      -- VehicleDeleters = {
      --   { x = -818.524, y = 184.931, z = 71.272 },
      -- },
      BossActions = {
        { x = -1135.301, y = 376.953, z = 70.299 },
      }
    },
    ['HildA'] = {
      Blip = {
        Pos     = { x = -14.878, y = -1446.033, z = 31.346 },
        Sprite  = 88,
        Display = 4,
        Scale   = 1.2,
        Colour  = 76,
      },
      AuthorizedWeapons = {
        { name = 'WEAPON_PISTOL',      price = 10000 },
      },
      AuthorizedVehicles = {
        { name = 'No Car',  label = 'No Car' },
      },
      VehicleProp = {
      },
      Cloakrooms = {
        { x = -17.756, y = -1439.271, z = 30.101 },
      },
      Armories = {
        { x = -16.106, y = -1430.391, z = 30.101},
      },
      -- Vehicles = {
      --   {
      --     Spawner    = { x = -815.987, y = 183.911, z = 71.4048 },
      --     SpawnPoint = { x = -820.939, y = 183.472, z = 71.023 },
      --     Heading    = 130.478,
      --   }
      -- },
      -- VehicleDeleters = {
      --   { x = -818.524, y = 184.931, z = 71.272 },
      -- },
      BossActions = {
        { x = -10.301, y = -1433.330, z = 30.116 },
      }
    },
    ['Sicario'] = {
      Blip = {
        Pos     = { -102.920, y = -56.737, z = 56.923 },
        Sprite  = 88,
        Display = 4,
        Scale   = 1.2,
        Colour  = 76,
      },
      AuthorizedWeapons = {
        { name = 'WEAPON_PISTOL',      price = 10000 },
      },
      AuthorizedVehicles = {
        { name = 'Contender',   label = 'Contender' },
        { name = 'Schafter3',    label = 'Schafter' },
        { name = 'cliffhanger',   label = 'cliffhanger' },
      },
      VehicleProp = {
        modEngine       = 3,
        modBrakes				=	2,
        windowTint			=	1,
        modArmor				= 4,
        dirtLevel       = 0,
        plate           = "Sicario",
        modOrnaments    = -1,
        tyreSmokeColor  = {41,36,33},
        wheelColor      = 12,
        modGrille       = 1,
        color2          = 12,
        modFrontBumper  = 5,
        pearlescentColor= 12,
        modSmokeEnabled = 1,
        color1          = 12,
        modRoof         = 3,
        modRearBumper   = 1,
        modTransmission = 2,
        modXenon        = 1,
        modFrontWheels  = 6,
      },
      Cloakrooms = {
        { x = -93.328, y = -64.793, z = 57.146 },
      },
      Armories = {
        { x = -94.610, y = -68.600, z = 57.146},
      },
      Vehicles = {
        {
          Spawner    = { x = -113.405, y = -57.726, z = 55.423 },
          SpawnPoint = { x = -102.920, y = -56.737, z = 56.423 },
          Heading    = 250.524,
        }
      },
      VehicleDeleters = {
        { x = -109.434, y = -55.099, z = 55.497 },
      },
      BossActions = {
        { x = -93.647, y = -66.646, z = 57.146 },
      }
    },
}


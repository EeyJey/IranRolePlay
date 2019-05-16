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
      AuthorizedWeapons = {
        { name = 'WEAPON_PISTOL',      price = 10000 },
      },
      AuthorizedVehicles = {
        { name = 'vigilante',  label = 'Vigilante' },
        { name = 'deveste',    label = 'Deveste' },
        { name = 'Granger',   label = '4X4' },
        { name = 'sultan',      label = 'Sultan' },
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
      AuthorizedWeapons = {
        { name = 'WEAPON_PISTOL',      price = 10000 },
      },
      AuthorizedVehicles = {
        { name = 'Contender',  label = 'Contender' },
        { name = 'Schafter3',    label = 'Schafter' },
        { name = 'CarbonRS',   label = 'CarbonRS' },
      },
      Cloakrooms = {
        { x = 9.4434595108032, y = 527.27319335938, z = 169.63500976563},
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
    ['LA-FUENTE'] = {
      AuthorizedWeapons = {
        { name = 'WEAPON_PISTOL',      price = 10000 },
      },
      AuthorizedVehicles = {
        { name = 'entity2',  label = 'entity' },
        { name = 'prototipo',    label = 'prototipo' },
        { name = 'btype3',   label = 'btype' },
        { name = 'ztype',      label = 'ztype' },
        { name = 'dubsta3',      label = 'dubsta' },
      },
      Cloakrooms = {
        { x = 1407.1309, y = 1153.2783, z = 113.4430},
      },
      Armories = {
        { x = 1406.1706, y = 1156.8936, z = 113.4430},
      },
      Vehicles = {
        {
          Spawner    = { x = 1402.3652, y = 1116.6643, z = 114.8376 },
          SpawnPoint = { x = 1392.2114, y = 1117.1031, z = 114.8369 },
          Heading    = 20.1779,
        }
      },
      VehicleDeleters = {
        { x = 1415.5629, y = 1116.6584, z = 113.8380 },
      },
      BossActions = {
        { x = 1407.1422, y = 1139.1545, z = 113.4330 },
      }
    }
}
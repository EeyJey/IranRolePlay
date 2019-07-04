Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = false -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Pos     = { x = 425.130, y = -979.558, z = 30.711 },
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29,
		},

		-- https://wiki.rage.mp/index.php?title=Weapons
		AuthorizedWeapons = {
			{ name = 'WEAPON_NIGHTSTICK',       price = 100 },
			{ name = 'WEAPON_STUNGUN',       price = 500 },
			{ name = 'weapon_flashlight',       price = 100 },
			{ name = 'WEAPON_PISTOL',     price = 5000 },
			{ name = 'WEAPON_SNSPISTOL',     price = 6000 },
			{ name = 'WEAPON_COMBATPISTOL',     price = 7000 },
			{ name = 'WEAPON_PISTOL50',     price = 9000 },
			{ name = 'WEAPON_HEAVYPISTOL',     price = 8000 },
			{ name = 'weapon_smg',     price = 12000 },
			{ name = 'weapon_assaultrifle',     price = 12000 },
			{ name = 'weapon_carbinerifle', price = 15000}
		},

		Cloakrooms = {
			{ x = 452.600, y = -993.306, z = 29.750 },
		},
		
		Stocks = {
			{ x = 437.691, y = -991.346, z = 29.689 },
		},


		Armories = {
			{ x = 460.844, y = -982.201, z = 29.689 },
		},

		Vehicles = {
			{
				Spawner    = { x = 454.69, y = -1017.4, z = 27.430 },
				SpawnPoint = { x = 438.42, y = -1018.3, z = 27.757 },
				Heading    = 90.0
			},

			{
				Spawner    = { x = 473.38, y = -1018.43, z = 27.00 },
				SpawnPoint = { x = 475.98, y = -1021.65, z = 28.06 },
				Heading    = 276.11
			}
		},

		Helicopters = {
			{
				Spawner    = { x = 470.05, y = -982.62, z = 41.00 },
				SpawnPoint = { x = 450.04, y = -981.14, z = 42.691 },
				Heading    = 95.43
			}
		},

		VehicleDeleters = {
			{ x = 462.74, y = -1014.4, z = 27.065 },
			{ x = 462.40, y = -1019.7, z = 27.104 },
			{ x = 449.23, y = -981.23, z = 43.200 },
			{ x = 481.7, y = -982.31, z = 40.300},
			{ x = 469.12, y = -1024.52, z = 27.20 }
		},

		BossActions = {
			{ x = 448.417, y = -973.208, z = 29.689 }
		},

	},

	SHERIFF = {

		Blip = {
			Pos     = { x = 1855.13, y = 3686.33, z = 34.27 },
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29,
		},

		-- https://wiki.rage.mp/index.php?title=Weapons
		AuthorizedWeapons = {
			{ name = 'WEAPON_NIGHTSTICK',       price = 100 },
			{ name = 'WEAPON_STUNGUN',       price = 500 },
			{ name = 'weapon_flashlight',       price = 100 },
			{ name = 'WEAPON_PISTOL',     price = 5000 },
			{ name = 'WEAPON_SNSPISTOL',     price = 6000 },
			{ name = 'WEAPON_COMBATPISTOL',     price = 7000 },
			{ name = 'WEAPON_PISTOL50',     price = 9000 },
			{ name = 'WEAPON_HEAVYPISTOL',     price = 8000 },
			{ name = 'weapon_smg',     price = 12000 },
			{ name = 'weapon_assaultrifle',     price = 12000 },
			{ name = 'weapon_carbinerifle',     price = 15000 }
		},

		Cloakrooms = {
			{ x = 1856.06, y = 3688.79, z = 33.27 },
		},
		
		Stocks = {
			{ x = 1851.13, y = 3683.18, z = 33.27 },
		},


		Armories = {
			{ x = 1851.05, y = 3690.89, z = 33.27 },
		},

		Vehicles = {
			{
				Spawner    = { x = 1852.79, y = 3680.51, z = 33.27 },
				SpawnPoint = { x = 1871.31, y = 3692.39, z = 33.6 },
				Heading    = 210.86
			}
		},
		Helicopters = {
			{
				Spawner    = { x = 1859.43, y = 3657.82, z = 34.55 },
				SpawnPoint = { x = 1863.63, y = 3650.59, z = 34.76 },
				Heading    = 31.72
			}
		},

		VehicleDeleters = {
			{ x = 1860.13, y = 3677.47, z = 32.65 }
		},

		BossActions = {
			{ x = 1853.06, y = 3689.6, z = 33.27 }
		},

	},
	PALETOBAY = {

		Blip = {
			Pos     = { x = -444.68, y = 6014.44, z = 31.72 },
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29,
		},

		-- https://wiki.rage.mp/index.php?title=Weapons
		AuthorizedWeapons = {
			{ name = 'WEAPON_NIGHTSTICK',       price = 100 },
			{ name = 'WEAPON_STUNGUN',       price = 500 },
			{ name = 'weapon_flashlight',       price = 100 },
			{ name = 'WEAPON_PISTOL',     price = 5000 },
			{ name = 'WEAPON_SNSPISTOL',     price = 6000 },
			{ name = 'WEAPON_COMBATPISTOL',     price = 7000 },
			{ name = 'WEAPON_PISTOL50',     price = 9000 },
			{ name = 'WEAPON_HEAVYPISTOL',     price = 8000 },
			{ name = 'weapon_smg',     price = 12000 },
			{ name = 'weapon_assaultrifle',     price = 12000 },
			{ name = 'weapon_carbinerifle',     price = 15000 }
		},

		Cloakrooms = {
			{ x = -448.73, y = 6015.81, z = 30.72 },
		},
		
		Stocks = {
			{},
		},


		Armories = {
			{ x = -449.5, y = 6010.53, z = 30.72 },
		},

		Vehicles = {
			{
				Spawner    = { x = -441.7, y = 6021.09, z = 30.49 },
				SpawnPoint = { x = -438.83, y = 6029.31, z = 30.51 },
				Heading    = 33.14
			}
		},
		Helicopters = {
			{
				Spawner    = { x = -466.39, y = 5996.45, z = 30.25 },
				SpawnPoint = { x = -475.04, y = 5987.94, z = 33.47 },
				Heading    = 314.51
			}
		},

		VehicleDeleters = {
			{ x = -449.99, y = 6032.45, z = 30.34 }
		},

		BossActions = {
			{ x = -448.96, y = 6012.71, z = 30.72 }
		},

	},

}

-- https://wiki.rage.mp/index.php?title=Vehicles
Config.AuthorizedVehicles = {
	Shared = {
		{
			model = 'pbus',
			label = 'Bus'
		},	
		{
			model = 'police',
			label = 'Police Cruiser'
		},	
		{
			model = 'police2',
			label = 'Police Buffalo'
		},
		{
			model = 'policet',
			label = 'Transporter Van'
		},
		{
			model = 'towtruck',
			label = 'Tow truck'
		}
	},

	cadet = {

	},

	po1 = {
		{
			model = 'police3',
			label = 'Police Interceptor'
		},
		{
			model = 'policeb',
			label = 'Police Bike'
		},		
		{
			model = 'Sheriff',
			label = 'Sheriff Crusier'
		},
		{
			model = 'Sheriff2',
			label = 'Sheriff SUV'
		},
		{
			model = 'brickade',
			label = 'Brickade'
		}
	},

	po2 = {
		{
			model = 'police3',
			label = 'Police Interceptor'
		},
		{
			model = 'policeb',
			label = 'Police Bike'
		},		
		{
			model = 'Sheriff',
			label = 'Sheriff Crusier'
		},
		{
			model = 'Sheriff2',
			label = 'Sheriff SUV'
		},
		{
			model = 'brickade',
			label = 'Brickade'
		}
	},

	po3 = {	
		{
			model = 'police3',
			label = 'Police Interceptor'
		},
		{
			model = '2015polstang',
			label = 'Ford Mustang GT'
		},
		{
			model = 'police4',
			label = 'Unmarked Crusier'
		},
		{
			model = 'fbi',
			label = 'FBI Dodge'
		},
		{
			model = 'fbi2',
			label = 'FBI SUV'
	    },
		{
			model = 'policeb',
			label = 'Police Bike'
		},		
		{
			model = 'Sheriff',
			label = 'Sheriff Crusier'
		},
		{
			model = 'Sheriff2',
			label = 'Sheriff SUV'
		},
		{
			model = 'brickade',
			label = 'Brickade'
		},
	},

	slo = {
		{
			model = 'police3',
			label = 'Police Interceptor'
		},
		{
			model = '2015polstang',
			label = 'Ford Mustang GT'
		},
		{
			model = 'police4',
			label = 'Unmarked Crusier'
		},
		{
			model = 'fbi',
			label = 'FBI Dodge'
		},
		{
			model = 'fbi2',
			label = 'FBI SUV'
		},
		{
			model = 'policeb',
			label = 'Police Bike'
		},		
		{
			model = 'Sheriff',
			label = 'Sheriff Crusier'
		},
		{
			model = 'Sheriff2',
			label = 'Sheriff SUV'
		},
		{
			model = 'brickade',
			label = 'Brickade'
		}
	},

	sergeant = {
		{
			model = "insurgent2",
			label = "SWAT Insurgent"
		},
		{
			model = 'polgs350',
			label = 'Police Lexus'
		},
		{
			model = 'police3',
			label = 'Police Interceptor'
		},
		{
			model = '2015polstang',
			label = 'Ford Mustang GT'
		},
		{
			model = 'police5',
			label = 'Police Lamborghini'
		},
		{
			model = 'police4',
			label = 'Unmarked Crusier'
		},
		{
			model = 'fbi',
			label = 'FBI Dodge'
		},
		{
			model = 'fbi2',
			label = 'FBI SUV'
	    },
		{
			model = 'policeb',
			label = 'Police Bike'
		},		
		{
			model = 'Sheriff',
			label = 'Sheriff Crusier'
		},
		{
			model = 'Sheriff2',
			label = 'Sheriff SUV'
		},
		{
			model = 'brickade',
			label = 'Brickade'
		}
	},

	commander = {	
		{
			model = "insurgent2",
			label = "SWAT Insurgent"
		},
		{
			model = 'polgs350',
			label = 'Police Lexus'
		},
		{
			model = '2015polstang',
			label = 'Ford Mustang GT'
		},
		{
			model = 'police3',
			label = 'Police Interceptor'
		},
		{
			model = 'police5',
			label = 'Police Lamborghini'
		},
		{
			model = 'police4',
			label = 'Unmarked Crusier'
		},
		{
			model = 'fbi',
			label = 'FBI Dodge'
		},
		{
			model = 'fbi2',
			label = 'FBI SUV'
	    },
		{
			model = 'policeb',
			label = 'Police Bike'
		},		
		{
			model = 'Sheriff',
			label = 'Sheriff Crusier'
		},
		{
			model = 'Sheriff2',
			label = 'Sheriff SUV'
		},
		{
			model = 'brickade',
			label = 'Brickade'
		}
	},

	boss = {	
		{
			model = "insurgent2",
			label = "SWAT Insurgent"
		},
		{
			model = 'polgs350',
			label = 'Police Lexus'
		},
		{
			model = 'polp1',
			label = 'McLaren P1'
		},
		{
			model = '2015polstang',
			label = 'Ford Mustang GT'
		},
		{
			model = 'police3',
			label = 'Police Interceptor'
		},
		{
			model = 'police5',
			label = 'Police Lamborghini'
		},
		{
			model = 'police4',
			label = 'Unmarked Crusier'
		},
		{
			model = 'fbi',
			label = 'FBI Dodge'
		},
		{
			model = 'fbi2',
			label = 'FBI SUV'
	    },
		{
			model = 'policeb',
			label = 'Police Bike'
		},		
		{
			model = 'Sheriff',
			label = 'Sheriff Crusier'
		},
		{
			model = 'Sheriff2',
			label = 'Sheriff SUV'
		},
		{
			model = 'brickade',
			label = 'Brickade'
		}
	}
}

Config.AuthorizedHelicopters = {
	cadet = {

	},

	po1 = {

	},

	po2 = {
		{
			model = 'polmav',
			label = 'Police Helicopter'
		}
	},

	po3 = {
		{
			model = 'polmav',
			label = 'Police Helicopter'
		}
	},

	slo = {
		{
			model = 'polmav',
			label = 'Police Helicopter'
		}
	},

	

	commander = {
		{
			model = 'polmav',
			label = 'Police Helicopter'
		}
	},

	boss = {
		{
			model = 'polmav',
			label = 'Police Helicopter'
		}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	cadet_wear = {
		male = {
			['tshirt_1'] = 57,  ['tshirt_2'] = 0,
			['torso_1'] = 29,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 47,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 31,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	po1_wear = {
		male = {
			['tshirt_1'] = 57,  ['tshirt_2'] = 0,
			['torso_1'] = 29,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 47,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 31,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	po2_wear = {
		male = {
			['tshirt_1'] = 57,  ['tshirt_2'] = 0,
			['torso_1'] = 29,   ['torso_2'] = 2,
			['decals_1'] = 8,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 47,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 3,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 31,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['mask_1'] = 0,    ['mask_2'] = 0,
			['bproof_1'] = 4,  ['bproof_2'] = 4,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	po3_wear = {
		male = {
			['tshirt_1'] = 57,  ['tshirt_2'] = 0,
			['torso_1'] = 29,   ['torso_2'] = 3,
			['decals_1'] = 8,   ['decals_2'] = 1,
			['arms'] = 0,
			['pants_1'] = 47,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 3,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 31,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 1,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['mask_1'] = 0,    ['mask_2'] = 0,
			['bproof_1'] = 4,  ['bproof_2'] = 4,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 57,  ['tshirt_2'] = 0,
			['torso_1'] = 29,   ['torso_2'] = 4,
			['decals_1'] = 11,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 47,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 3,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 31,   ['torso_2'] = 0,
			['decals_1'] = 10,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['bproof_1'] = 4,  ['bproof_2'] = 4,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	slo_wear = { -- currently the same as intendent_wear
		male = {
			['tshirt_1'] = 57,  ['tshirt_2'] = 0,
			['torso_1'] = 29,   ['torso_2'] = 5,
			['decals_1'] = 11,   ['decals_2'] = 1,
			['arms'] = 0,
			['pants_1'] = 47,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 3,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 31,   ['torso_2'] = 0,
			['decals_1'] = 10,   ['decals_2'] = 1,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['mask_1'] = 0,    ['mask_2'] = 0,
			['bproof_1'] = 4,  ['bproof_2'] = 4,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	commander_wear = {
		male = {
			['tshirt_1'] = 57,  ['tshirt_2'] = 0,
			['torso_1'] = 29,   ['torso_2'] = 7,
			['decals_1'] = 11,   ['decals_2'] = 2,
			['arms'] = 0,
			['pants_1'] = 47,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 3,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 31,   ['torso_2'] = 0,
			['decals_1'] = 10,   ['decals_2'] = 2,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['mask_1'] = 0,    ['mask_2'] = 0,
			['bproof_1'] = 4,  ['bproof_2'] = 4,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	boss_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 57,  ['tshirt_2'] = 0,
			['torso_1'] = 29,   ['torso_2'] = 7,
			['decals_1'] = 11,   ['decals_2'] = 3,
			['arms'] = 0,
			['pants_1'] = 47,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 3,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 31,   ['torso_2'] = 0,
			['decals_1'] = 10,   ['decals_2'] = 3,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['bproof_1'] = 4,  ['bproof_2'] = 4,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	swat_wear = {
		male = {
			['tshirt_1'] = 55,  ['tshirt_2'] = 0,
			['torso_1'] = 49,   ['torso_2'] = 2,
			['decals_1'] = 3,   ['decals_2'] = 0,
			['arms'] = 31,
			['pants_1'] = 31,   ['pants_2'] = 2,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['glasses_1'] = 0,
			['helmet_1'] = 117,  ['helmet_2'] = 0,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['mask_1'] = 130,   ['mask_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 8,  ['tshirt_2'] = 0,
			['torso_1'] = 93,   ['torso_2'] = 3,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 54,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 116,  ['helmet_2'] = 0,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['glasses_1'] = 5,  ['glasses_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['mask_1'] = 130,   ['mask_2'] = 0,
			['bproof_1'] = 3,  ['bproof_2'] = 3
		}
	},
	-- Sheriff outfits --
	scadet_wear = {
		male = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 0,
			['torso_1'] = 75,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 25,   ['pants_2'] = 05,
			['shoes_1'] = 21,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 25,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	spo1_wear = {
		male = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 0,
			['torso_1'] = 75,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 25,   ['pants_2'] = 05,
			['shoes_1'] = 21,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 90,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	spo2_wear = {
		male = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 0,
			['torso_1'] = 75,   ['torso_2'] = 2,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 0,
			['pants_1'] = 25,   ['pants_2'] = 05,
			['shoes_1'] = 21,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 2,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 90,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 14,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 2,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	spo3_wear = {
		male = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 0,
			['torso_1'] = 75,   ['torso_2'] = 3,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 0,
			['pants_1'] = 25,   ['pants_2'] = 05,
			['shoes_1'] = 21,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 2,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 90,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 14,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 2,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	ssergeant_wear = {
		male = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 0,
			['torso_1'] = 75,   ['torso_2'] = 4,
			['decals_1'] = 11,   ['decals_2'] = 5,
			['arms'] = 0,
			['pants_1'] = 25,   ['pants_2'] = 05,
			['shoes_1'] = 21,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 2,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 90,   ['torso_2'] = 0,
			['decals_1'] = 10,   ['decals_2'] = 5,
			['arms'] = 14,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 2,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	sslo_wear = { -- currently the same as intendent_wear
		male = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 0,
			['torso_1'] = 75,   ['torso_2'] = 5,
			['decals_1'] = 11,   ['decals_2'] = 5,
			['arms'] = 0,
			['pants_1'] = 25,   ['pants_2'] = 05,
			['shoes_1'] = 21,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 2,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 90,   ['torso_2'] = 0,
			['decals_1'] = 10,   ['decals_2'] = 5,
			['arms'] = 14,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 2,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	scommander_wear = {
		male = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 0,
			['torso_1'] = 75,   ['torso_2'] = 6,
			['decals_1'] = 11,   ['decals_2'] = 5,
			['arms'] = 0,
			['pants_1'] = 25,   ['pants_2'] = 05,
			['shoes_1'] = 21,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 2,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 90,   ['torso_2'] = 0,
			['decals_1'] = 10,   ['decals_2'] = 5,
			['arms'] = 14,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 2,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	sboss_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 0,
			['torso_1'] = 75,   ['torso_2'] = 7,
			['decals_1'] = 11,   ['decals_2'] = 5,
			['arms'] = 0,
			['pants_1'] = 25,   ['pants_2'] = 05,
			['shoes_1'] = 21,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 2,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 1,
			['torso_1'] = 90,   ['torso_2'] = 0,
			['decals_1'] = 10,   ['decals_2'] = 5,
			['arms'] = 14,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 12,  ['bproof_2'] = 2,
			['mask_1'] = 0,   ['mask_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 12,  ['bproof_2'] = 3
		},
		female = {
			['bproof_1'] = 4,  ['bproof_2'] = 4
		}
	},
	sbullet_wear = {
		male = {
			['bproof_1'] = 12,  ['bproof_2'] = 2
		},
		female = {
			['bproof_1'] = 12,  ['bproof_2'] = 2
		}
	},
	gilet_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1
		}
	}

}
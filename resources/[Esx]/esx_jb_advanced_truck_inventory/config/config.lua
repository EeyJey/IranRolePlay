--Truck
Config	=	{}

 -- Limit, unit can be whatever you want. Originally grams (as average people can hold 25kg)
Config.Limit = 25000

-- Default weight for an item:
	-- weight == 0 : The item do not affect character inventory weight
	-- weight > 0 : The item cost place on inventory
	-- weight < 0 : The item add place on inventory. Smart people will love it.
Config.DefaultWeight = 1000



-- If true, ignore rest of file
Config.WeightSqlBased = false

-- I Prefer to edit weight on the config.lua and I have switched Config.WeightSqlBased to false:

Config.localWeight = {
	bread = 125,
	water = 330,
	WEAPON_COMBATPISTOL = 1000, -- poid poir une munnition
	black_money = 1, -- poids pour un argent
	alcool = 1000,
	alcool_cargo = 5000,
	alive_chicken = 5000,
	bandage = 125,
	cagoule = 500,
	clip = 100,
	clothe = 500,
	coke_pooch = 5000,
	copper = 2000,
	croquettes = 100,
	cutted_wood = 2000,
	diamond = 500,
	drill = 2000,
	energy = 500,
	essence = 3000,
	fabric = 500,
	fish = 1000,
	flashlight = 250,
	gold = 2000,
	golem = 10000,
	iron = 2000,
	jewels = 250,
	medikit = 500,
	meth_pooch = 5000,
	menthe = 5000,
	opium_pooch = 5000,
	packaged_chicken = 500,
	packaged_plank = 500,
	petrol = 2000,
	petrol_raffin = 2000,
	slaughtered_chicken = 2500,
	stone = 2500,
	viande = 2000,
	weed = 500,
	weed_pooch = 2500,
	wool = 500	
}

Config.VehicleLimit = {
    [0] = 30000, --Compact
    [1] = 40000, --Sedan
    [2] = 200000, --SUV
    [3] = 25000, --Coupes
    [4] = 30000, --Muscle
    [5] = 10000, --Sports Classics
    [6] = 5000, --Sports
    [7] = 5000, --Super
    [8] = 5000, --Motorcycles
    [9] = 300000, --Off-road
    [10] = 300000, --Industrial
    [11] = 70000, --Utility
    [12] = 300000, --Vans
    [13] = 0, --Cycles
    [14] = 5000, --Boats
    [15] = 20000, --Helicopters
    [16] = 0, --Planes
    [17] = 40000, --Service
    [18] = 40000, --Emergency
    [19] = 0, --Military
    [20] = 210000, --Commercial
    [21] = 0, --Trains
}
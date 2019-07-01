Config = {}
Config.Locale = 'en'

Config.DoorList = {

	--
	-- Mission Row First Floor
	--

	-- Entrance Doors
	{
		objName = 'v_ilev_ph_door01',
		objCoords  = {x = 434.747, y = -980.618, z = 30.839},
		textCoords = {x = 434.747, y = -981.50, z = 31.50},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5
	},

	{
		objName = 'v_ilev_ph_door002',
		objCoords  = {x = 434.747, y = -983.215, z = 30.839},
		textCoords = {x = 434.747, y = -982.50, z = 31.50},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5
	},

	-- To locker room & roof
	{
		objName = 'v_ilev_ph_gendoor004',
		objCoords  = {x = 449.698, y = -986.469, z = 30.689},
		textCoords = {x = 450.104, y = -986.388, z = 31.739},
		authorizedJobs = { 'police', 'offpolice' },
		locked = true
	},

	-- Rooftop
	{
		objName = 'v_ilev_gtdoor02',
		objCoords  = {x = 464.361, y = -984.678, z = 43.834},
		textCoords = {x = 464.361, y = -984.050, z = 44.834},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Hallway to roof
	{
		objName = 'v_ilev_arm_secdoor',
		objCoords  = {x = 461.286, y = -985.320, z = 30.839},
		textCoords = {x = 461.50, y = -986.00, z = 31.50},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Armory
	{
		objName = 'v_ilev_arm_secdoor',
		objCoords  = {x = 452.618, y = -982.702, z = 30.689},
		textCoords = {x = 453.079, y = -982.600, z = 31.739},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Captain Office
	{
		objName = 'v_ilev_ph_gendoor002',
		objCoords  = {x = 447.238, y = -980.630, z = 30.689},
		textCoords = {x = 447.200, y = -980.010, z = 31.739},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- To downstairs (double doors)
	{
		objName = 'v_ilev_ph_gendoor005',
		objCoords  = {x = 443.97, y = -989.033, z = 30.6896},
		textCoords = {x = 444.020, y = -989.445, z = 31.739},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4
	},

	{
		objName = 'v_ilev_ph_gendoor005',
		objCoords  = {x = 445.37, y = -988.705, z = 30.6896},
		textCoords = {x = 445.350, y = -989.445, z = 31.739},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4
	},

	-- 
	-- Mission Row Cells
	--

	-- Main Cells
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 463.815, y = -992.686, z = 24.9149},
		textCoords = {x = 463.30, y = -992.686, z = 25.10},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 1
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 462.381, y = -993.651, z = 24.914},
		textCoords = {x = 461.806, y = -993.308, z = 25.064},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 2
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 462.331, y = -998.152, z = 24.914},
		textCoords = {x = 461.806, y = -998.800, z = 25.064},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 3
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 462.704, y = -1001.92, z = 24.9149},
		textCoords = {x = 461.806, y = -1002.450, z = 25.064},
		authorizedJobs = { 'police' },
		locked = true
	},

	-- To Back
	{
		objName = 'v_ilev_gtdoor',
		objCoords  = {x = 463.478, y = -1003.538, z = 25.005},
		textCoords = {x = 464.00, y = -1003.50, z = 25.50},
		authorizedJobs = { 'police' },
		locked = true
	},

	--
	-- Mission Row Back
	--

	-- Back (double doors)
	{
		objName = 'v_ilev_rc_door2',
		objCoords  = {x = 467.371, y = -1014.452, z = 26.536},
		textCoords = {x = 468.09, y = -1014.452, z = 27.1362},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4
	},

	{
		objName = 'v_ilev_rc_door2',
		objCoords  = {x = 469.967, y = -1014.452, z = 26.536},
		textCoords = {x = 469.35, y = -1014.452, z = 27.136},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4
	},

	-- Back Gate
	{
		objName = 'hei_prop_station_gate',
		objCoords  = {x = 488.894, y = -1017.210, z = 27.146},
		textCoords = {x = 488.894, y = -1020.210, z = 30.00},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 14,
		size = 2
	},

	--
	-- Sandy Shores
	--

	-- Entrance
	{
		objName = 'v_ilev_shrfdoor',
		objCoords  = {x = 1855.105, y = 3683.516, z = 34.266},
		textCoords = {x = 1855.105, y = 3683.516, z = 35.00},
		authorizedJobs = { 'police' },
		locked = false
	},

	--
	-- Paleto Bay
	--

	-- Entrance (double doors)
	{
		objName = 'v_ilev_shrf2door',
		objCoords  = {x = -443.14, y = 6015.685, z = 31.716},
		textCoords = {x = -443.14, y = 6015.685, z = 32.00},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5
	},

	{
		objName = 'v_ilev_shrf2door',
		objCoords  = {x = -443.951, y = 6016.622, z = 31.716},
		textCoords = {x = -443.951, y = 6016.622, z = 32.00},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5
	},

	--
	-- Bolingbroke Penitentiary
	--

	-- Entrance (Two big gates)
	{
		objName = 'prop_gate_prison_01',
		objCoords  = {x = 1844.998, y = 2604.810, z = 44.638},
		textCoords = {x = 1844.998, y = 2608.50, z = 48.00},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		size = 2
	},

	{
		objName = 'prop_gate_prison_01',
		objCoords  = {x = 1818.542, y = 2604.812, z = 44.611},
		textCoords = {x = 1818.542, y = 2608.40, z = 48.00},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		size = 2
	},

	--
	-- Addons
	--
	{
		objName = 'p_gate_prison_01_s',
		objCoords  = {x = -461.46, y = 6027.857, z = 30.339},
		textCoords = {x = -458.44, y = 6025.58, z = 34.339},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		size = 2
	},
	
	{
		objName = 'prop_facgate_01',
		objCoords  = {x = 1857.1255, y = 3657.1543, z = 33.0147},
		textCoords = {x = 1859.33, y = 3658.75, z = 36.0147},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		size = 2
	},
	
	{
		objName = 'prop_facgate_01',
		objCoords  = {x = 1835.8856, y = 3645.0862, z = 33.2223},
		textCoords = {x = 1838.11, y = 3647.37, z = 36.2223},
		authorizedJobs = { 'ambulance' },
		locked = true,
		distance = 12,
		size = 2
	},
		{
		objName = 'prop_fnclink_09gate1',
		objCoords  = {x = 1689.1713, y = 2499.3757, z = -43.4438},
		textCoords = {x = 1689.1713, y = 2499.3757, z = -43.4438},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		size = 1
	},
			{
		objName = 'prop_fnclink_02gate7',
		objCoords  = {x = 1678.2024, y = 2504.9021, z = -43.4438},
		textCoords = {x = 1678.2024, y = 2504.9021, z = -43.4438},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName = 'apa_heist_apart2_door',
		objCoords  = {x = 1689.4746, y = 2510.0684, z = -43.5733},
		textCoords = {x = 1689.4746, y = 2510.0684, z = -43.5733},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_ph_cellgate02',
		objCoords  = {x = 1700.8767, y = 2505.1138, z = -43.6058},
		textCoords = {x = 1700.8767, y = 2505.1138, z = -43.6058},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_ph_cellgate02',
		objCoords  = {x = 1706.9487, y = 2506.4087, z = -43.6023},
		textCoords = {x = 1706.9487, y = 2506.4087, z = -43.6023},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_ph_cellgate02',
		objCoords  = {x = 1719.4128, y = 2512.8159, z = -43.5950},
		textCoords = {x = 1719.4128, y = 2512.8159, z = -43.5950},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_ph_cellgate02',
		objCoords  = {x = 1717.1321, y = 2522.5620, z = -43.6023},
		textCoords = {x = 1717.1321, y = 2522.5620, z = -43.6023},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName = 'hei_prop_heist_cutscene_doorc_l',
		objCoords  = {x = 1725.2661, y = 2511.5200, z = -43.5904},
		textCoords = {x = 1725.2661, y = 2511.5200, z = -43.5904},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 1,
		size = 1
	},
	{
		objName = 'hei_prop_heist_cutscene_doorc_r',
		objCoords  = {x = 1726.0580, y = 2511.5381, z = -43.5904},
		textCoords = {x = 1726.0580, y = 2511.5381, z = -43.5904},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 1,
		size = 1
	},
	{
		objName = 'v_ilev_fingate',
		objCoords  = {x = 1722.4220, y = 2524.8499, z = -43.4945},
		textCoords = {x = 1722.4220, y = 2524.8499, z = -43.4945},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_fingate',
		objCoords  = {x = 1722.3837, y = 2529.6780, z = -43.4945},
		textCoords = {x = 1722.3837, y = 2529.6780, z = -43.4945},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_fingate',
		objCoords  = {x = 1722.3557, y = 2534.4763, z = -43.4945},
		textCoords = {x = 1722.3557, y = 2534.4763, z = -43.4945},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_fingate',
		objCoords  = {x = 1722.3335, y = 2539.3083, z = -43.4945},
		textCoords = {x = 1722.3335, y = 2539.3083, z = -43.4945},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_fingate',
		objCoords  = {x = 1722.4386, y = 2544.1079, z = -43.4945},
		textCoords = {x = 1722.4386, y = 2544.1079, z = -43.4945},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_fingate',
		objCoords  = {x = 1721.7828, y = 2548.8232, z = -43.4945},
		textCoords = {x = 1721.7828, y = 2548.8232, z = -43.4945},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_fingate',
		objCoords  = {x = 1713.4502, y = 2550.4194, z = -43.4945},
		textCoords = {x = 1713.4502, y = 2550.4194, z = -43.4945},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_fingate',
		objCoords  = {x = 1713.1820, y = 2545.6841, z = -43.4945},
		textCoords = {x = 1713.1820, y = 2545.6841, z = -43.4945},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_fingate',
		objCoords  = {x = 1713.1283, y = 2540.8857, z = -43.4945},
		textCoords = {x = 1713.1283, y = 2540.8857, z = -43.4945},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_fingate',
		objCoords  = {x = 1713.1748, y = 2535.9827, z = -43.4945},
		textCoords = {x = 1713.1748, y = 2535.9827, z = -43.4945},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_fingate',
		objCoords  = {x = 1713.1650, y = 2531.1462, z = -43.4945},
		textCoords = {x = 1713.1650, y = 2531.1462, z = -43.4945},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_fingate',
		objCoords  = {x = 1713.1317, y = 2526.3252, z = -43.4945},
		textCoords = {x = 1713.1317, y = 2526.3252, z = -43.4945},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 3,
		size = 1
	},
	{
		objName = 'v_ilev_ph_cellgate02',
		objCoords  = {x = 1717.3939, y = 2552.0103, z = -43.6023},
		textCoords = {x = 1717.3939, y = 2552.0103, z = -43.6023},
		authorizedJobs = { 'police' },
		locked = false,
		distance = 3,
		size = 1
	},
	{
		objName = 'ex_prop_door_arcad_roof_r',
		objCoords  = {x = 1709.7, y = 2555.54, z = -43.72},
		textCoords = {x = 1709.7, y = 2555.54, z = -43.72},
		authorizedJobs = { 'admin' },
		locked = true,
		distance = 3,
		size = 1
	},
	--[[
	-- Entrance Gate (Mission Row mod) https://www.gta5-mods.com/maps/mission-row-pd-ymap-fivem-v1
	{
		objName = 'prop_gate_airport_01',
		objCoords  = {x = 420.133, y = -1017.301, z = 28.086},
		textCoords = {x = 420.133, y = -1021.00, z = 32.00},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 14,
		size = 2
	}
	--]]
}
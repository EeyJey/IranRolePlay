resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_scripts {
	-- Base
	'MAD_Main.lua',
	'MAD_Client.lua',
	'MAD_Utilities.lua',

	-- Garage
	--'MAD_Garage/MAD_Garage_Config.lua',
	--'MAD_Garage/MAD_Garage_Client.lua',	

	-- Commands
	--'MAD_Commands/MAD_Commands.lua',

	-- SafeCracker
	--'MAD_SafeCracker/MAD_SafeCracker_Config.lua',
	--'MAD_SafeCracker/MAD_SafeCracker_Client.lua',

	-- Drugs
	--'MAD_Drugs/MAD_Drugs_Config.lua',
	--'MAD_Drugs/MAD_Drugs_Client.lua',	
'MAD_Notify_Client.lua',
	-- Race Mod
	'MAD_RaceMod_Config.lua',
	'MAD_RaceMod_Client.lua',

	-- Stuff
	--'MAD_Stuff/MAD_Stuff_Client.lua',
	--'MAD_Stuff/MAD_HudHider_Client.lua',

	-- Items
	--'MAD_Items/MAD_SecurityCamera_Client.lua',

	--'MAD_Items/MAD_vehicleTracker_Config.lua',
	--'MAD_Items/MAD_VehicleTracker_Client.lua',

	--'MAD_Items/MAD_NightVision_Client.lua',

	-- Teleport
	--'MAD_Teleport/MAD_Teleport_Config.lua',
	--'MAD_Teleport/MAD_Teleport_Client.lua',	
}

server_scripts {	
	-- Base
	'MAD_Main.lua',
	'MAD_Server.lua',
	'MAD_Utilities.lua',

	-- MySQL
	'@mysql-async/lib/MySQL.lua',

	-- Garage
	--'MAD_Garage/MAD_Garage_Config.lua',
	--'MAD_Garage/MAD_Garage_Server.lua',

	-- SafeCracker
	--'MAD_SafeCracker/MAD_SafeCracker_Config.lua',
	--'MAD_SafeCracker/MAD_SafeCracker_Server.lua',

	-- Drugs
	--'MAD_Drugs/MAD_Drugs_Config.lua',
	--'MAD_Drugs/MAD_Drugs_Server.lua',	

	-- Race Mod
	'MAD_RaceMod_Config.lua',
	'MAD_RaceMod_Server.lua',

	-- Items
	--'MAD_Items/MAD_SecurityCamera_Server.lua',
	
	--'MAD_Items/MAD_vehicleTracker_Config.lua',
	--'MAD_Items/MAD_VehicleTracker_Server.lua',	
}

files {	
	-- Safecracker
	--'MAD_SafeCracker/LockPart1.png',
	--'MAD_SafeCracker/LockPart2.png',
}

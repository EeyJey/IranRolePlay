local PlayerData		= {}
ESX							   = nil


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)

RegisterCommand("unrack", function(source, args, rawCommand)
	local ped = PlayerPedId()
	local closestVehicle, Distance = ESX.Game.GetClosestVehicle()
	local vehicleCoords = GetEntityCoords(closestVehicle)
	local weapon =	GetHashKey("WEAPON_PUMPSHOTGUN")
	local class = GetVehicleClass(closestVehicle)
	local job	=	PlayerData.job
	local grade = PlayerData.job.grade_name

	if job ~= nil and job.name == 'police' and grade ~= 'recruit' then
	if Distance < 2.0  and class == 18 and not IsPedInAnyVehicle(ped, false) then
		TriggerEvent("mythic_progbar:client:progress", {
			name = "action_rifle_unrack",
			duration = 4000,
			label = "Unracking Shotgun...",
			useWhileDead = false,
			canCancel = false,
			controlDisables = {
				disableMovement = false,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			},
			animation = {
				animDict = "missheistdockssetup1clipboard@idle_a",
				anim = "idle_a",
			},
			prop = {
				model = "prop_paper_bag_small",
			}
		}, function(status)
			if not status then
				GiveWeaponToPed(ped, weapon, 120, false, true)
			end
		end)
	end
end
end, false)

RegisterCommand("rack", function(source, args, rawCommand)
	local ped = PlayerPedId()
	local closestVehicle, Distance = ESX.Game.GetClosestVehicle()
	local vehicleCoords = GetEntityCoords(closestVehicle)
	local weapon =	GetHashKey("WEAPON_PUMPSHOTGUN")
	local class = GetVehicleClass(closestVehicle)
	local job	=	PlayerData.job
	local grade = PlayerData.job.grade_name

	if job ~= nil and job.name == 'police' and grade ~= 'recruit' then
	if Distance < 2.0  and class == 18 and not IsPedInAnyVehicle(ped, false) then
		TriggerEvent("mythic_progbar:client:progress", {
			name = "action_rack_rifle",
			duration = 4000,
			label = "Racking Shotgun",
			useWhileDead = false,
			canCancel = true,
			controlDisables = {
				disableMovement = false,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			},
			animation = {
				animDict = "missheistdockssetup1clipboard@idle_a",
				anim = "idle_a",
			},
			prop = {
				model = "prop_paper_bag_small",
			}
		}, function(status)
			if not status then
				RemoveWeaponFromPed(ped, weapon)
			end
		end)
	end
end
end, false)
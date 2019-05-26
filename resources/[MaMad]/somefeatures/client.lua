ESX = nil

while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
end
function SetVehicleMaxMods(vehicle)
	local props = {
		modEngine       =   3,
		modBrakes       =   2,
		windowTint      =   1,
		modArmor        =   4,
		modTransmission =   2,
		modSuspension   =   -1,
		modTurbo        =   true,
	}

	ESX.Game.SetVehicleProperties(vehicle, props)
end


RegisterNetEvent('sf:spawnVehicle')
AddEventHandler('sf:spawnVehicle', function(model)
	local playerPed = PlayerPedId()
	local coords    = GetEntityCoords(playerPed)

	ESX.Game.SpawnVehicle(model, coords, 90.0, function(vehicle)
        TaskWarpPedIntoVehicle(playerPed,  vehicle, -1)
		SetVehicleMaxMods(vehicle)
        
	end)
end)
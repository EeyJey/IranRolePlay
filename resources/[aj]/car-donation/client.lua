Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
    end
end)

RegisterCommand('addcar', function(source, args)
    if IsPedInAnyVehicle(PlayerPedId(-1), true) then
        if tonumber(args[1]) then
            ESX.TriggerServerCallback('IsPlayerSuperAdmin', function(bool)
                if bool then
                    local vehicle = GetVehiclePedIsIn(PlayerPedId(-1), false)
                    local newPlate     = exports.esx_vehicleshop:GeneratePlate()
                    local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
                    vehicleProps.plate = newPlate
                    SetVehicleNumberPlateText(vehicle, newPlate)
                    TriggerServerEvent('esx_vehicleshop:setVehicleOwnedPlayerId', args[1], vehicleProps)
                end
            end)
        end
    end
end, false)
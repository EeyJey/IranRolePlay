Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
	playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, true) then
		vehicle = GetVehiclePedIsIn(playerPed, false)
		if IsVehicleEngineOn(vehicle) then
			DisplayRadar(true)
		else
			DisplayRadar(false)
		end
	else
		DisplayRadar(false)
	end
  end
end)
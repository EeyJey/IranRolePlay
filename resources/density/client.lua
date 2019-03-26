DensityMultiplier = 0.1
Citizen.CreateThread(function()
	while true do
	    Citizen.Wait(1)
	    SetVehicleDensityMultiplierThisFrame(DensityMultiplier)
	    SetPedDensityMultiplierThisFrame(DensityMultiplier)
	    SetRandomVehicleDensityMultiplierThisFrame(DensityMultiplier)
	    SetParkedVehicleDensityMultiplierThisFrame(DensityMultiplier)
	    SetScenarioPedDensityMultiplierThisFrame(DensityMultiplier, DensityMultiplier)
	end
end)
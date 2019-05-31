Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)

	SetWeatherTypePersist("CLEAR")
	SetWeatherTypeNowPersist("CLEAR")
	SetWeatherTypeNow("CLEAR")
	SetOverrideWeather("CLEAR")
	--SetForceVehicleTrails(true)
	--SetForcePedFootstepsTracks(true)

	--SetWind(1.0)
	--SetWindSpeed(11.99)
	--SetWindDirection(180.00)

  end
end)

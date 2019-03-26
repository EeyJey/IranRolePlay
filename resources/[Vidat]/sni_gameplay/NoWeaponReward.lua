--[[
----------------------------------------------------------------------------
____________________________________________________________________________
                  AUTHOR : Anthony Roe
                  Remove vehicles giving you weapons
                  Enlève les armes dropée par les véhicules
____________________________________________________________________________
---------------------------------------------------------------------------
]]--

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(50)
        DisablePlayerVehicleRewards(PlayerId())
    end
end)

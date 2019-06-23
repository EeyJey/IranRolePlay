AddEventHandler("playerSpawned", function()
    Citizen.CreateThread(function()
  
      local player = PlayerId()
      local playerPed = GetPlayerPed(-1)
  
      -- Enable pvp
      NetworkSetFriendlyFireOption(true)
      SetCanAttackFriendly(playerPed, true, true)
  
    end)
  end)
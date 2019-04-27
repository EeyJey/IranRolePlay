local display = false

RegisterCommand("mecaon", function()
    Citizen.CreateThread(function()
      TriggerEvent('mecafactor:on', 100)
    end)
end)
  


RegisterCommand("mecaoff", function()
  Citizen.CreateThread(function()
      TriggerEvent("mecafactor:off", 100)
  end)
end)

  --[[ ////////////////////////////////////////// ]]

RegisterNetEvent('mecafactor:on')
AddEventHandler('mecafactor:on', function(p)
  SendNUIMessage({
    type = "ui",
    display = true,
    price = p
  })
end)

RegisterNetEvent('mecafactor:off')
AddEventHandler('mecafactor:off', function()
  SendNUIMessage({
    type = "ui",
    display = false
  })
end)

RegisterNUICallback('cancel', function(data, cb)
  -- do cancelation stuff here
  closeGui()
  cb('ok')
end)

RegisterNUICallback('accept', function(data, cb)
  -- remove money here
  closeGui()
end)
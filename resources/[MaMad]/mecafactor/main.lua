local display = false

RegisterCommand("mecaon", function()
    Citizen.CreateThread(function()
      TriggerEvent('mecafactor:on', true)
    end)
end)
  


RegisterCommand("mecaoff", function()
  Citizen.CreateThread(function()
      TriggerEvent("mecafactor:off", true)
  end)
end)

  --[[ ////////////////////////////////////////// ]]

RegisterNetEvent('mecafactor:on')
AddEventHandler('mecafactor:on', function(args)
  SendNUIMessage({
    type = "ui",
    display = true,
    price = args[1]
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
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
  SetNuiFocus(true, true)
  SendNUIMessage({
    type = "ui",
    display = true,
    price = p
  })
end)

RegisterNetEvent('mecafactor:off')
AddEventHandler('mecafactor:off', function()
  SetNuiFocus(false, false)
  SendNUIMessage({
    type = "ui",
    display = false
  })
end)

RegisterNUICallback('cancel', function(data, cb)
  -- do cancelation stuff here
  SetNuiFocus(false, false)
  closeGui()
  cb('ok')
end)

RegisterNUICallback('accept', function(data, cb)
  -- remove money here
  SetNuiFocus(false, false)
  closeGui()
end)
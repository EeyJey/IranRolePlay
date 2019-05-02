--[[

  ESX RP Chat

--]]

RegisterNetEvent('sendProximityMessage')
AddEventHandler('sendProximityMessage', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', name , {255, 0, 0}, message)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chatMessage', name , {255, 0, 0}, message)
  end
end)

RegisterCommand('mp', function(source, args)
  if IsPedInAnyVehicle(PlayerPedId(-1), true) then
    TriggerServerEvent('mpCommand', table.concat(args," "))
  end
end, false)

RegisterNetEvent('sendProximityMessageShout')
AddEventHandler('sendProximityMessageShout', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
    if pid == myId then
      TriggerEvent('chatMessage',  name, {255, 0, 0}, message)
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 30.0 then
      TriggerEvent('chatMessage', name, {255, 0, 0},  message)
    end
end)

RegisterNetEvent('sendProximityMessageMP')
AddEventHandler('sendProximityMessageMP', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if IsPedInAnyVehicle(PlayerPedId(myId), true) then
    if pid == myId then
      TriggerEvent('chatMessage',  name, {0, 25, 255}, message)
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 40.0 then
      TriggerEvent('chatMessage', name, {0, 25, 255},  message)
    end
  end
end)

RegisterNetEvent('sendProximityMessageMMe')
AddEventHandler('sendProximityMessageMMe', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage',  name, {250, 175, 214}, message)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chatMessage', name, {250, 175, 214},  message)
  end
end)

RegisterNetEvent('sendProximityMessageMe')
AddEventHandler('sendProximityMessageMe', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', name, {200, 200, 200}, message)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chatMessage', name, {200, 200, 200},  message)
  end
end)

RegisterNetEvent('sendProximityMessageDo')
AddEventHandler('sendProximityMessageDo', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', "", {255, 0, 0}, message  .."  (( " .. name .. " )) ")
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chatMessage', "", {255, 0, 0}, message  .."  (( " .. name .. " )) ")
  end
end)
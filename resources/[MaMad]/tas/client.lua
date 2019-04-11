RegisterNetEvent('sendRollThatShit')
AddEventHandler('sendRollThatShit', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', name, {150, 150, 250}, message)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chatMessage', name, {150, 150, 250},  message)
  end
end)
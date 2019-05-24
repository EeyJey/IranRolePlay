RegisterNetEvent('sendSelfMessage')
AddEventHandler('sendSelfMessage', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
    if pid == myId then
      TriggerEvent('chatMessage',  name, {255, 0, 0}, message)
    end
end)
RegisterNetEvent('sendRollThatShit')
AddEventHandler('sendRollThatShit', function(name, message)
	RequestAnimDict('mp_player_int_upperwank')
	
	TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 10, 'shake', 1.0,0)
	TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 10, 'drop', 1.0,1000)
	
	local playerPed = GetPlayerPed(-1)

	local animation = 'mp_player_int_wank_01_enter'
	local animation2 = 'mp_player_int_wank_01_exit'
	local flags = 8
	TaskPlayAnim(playerPed, 'mp_player_int_upperwank', animation, 8.0, -8, -1, flags, 0, 0, 0, 0)
	Citizen.Wait(650)
	TaskPlayAnim(playerPed, 'mp_player_int_upperwank', animation2, 8.0, -8, -1, flags, 0, 0, 0, 0)
	Citizen.Wait(700)
	Citizen.Wait(2000)
	local myId = PlayerId()
	local pid = GetPlayerFromServerId(id)
	if pid == myId then
		TriggerEvent('chatMessage', name, {150, 150, 250}, message)
	elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 10 then
		TriggerEvent('chatMessage', name, {150, 150, 250},  message)
	end
	
end)

timeAnim1 = 650
timeAnim2 = 700
timeFinalWait = 2000

RegisterNetEvent('sendRollThatShit')
AddEventHandler('sendRollThatShit', function()
	RequestAnimDict('mp_player_int_upperwank')
	
	TriggerServerEvent('MyInteractSound_SV:PlayWithinDistance', 20, 'shake', 0.6,0)
	TriggerServerEvent('MyInteractSound_SV:PlayWithinDistance', 20, 'drop', 0.6,1200)
	
	local playerPed = GetPlayerPed(-1)

	local animation = 'mp_player_int_wank_01_enter'
	local animation2 = 'mp_player_int_wank_01_exit'
	local flags = 8
	TaskPlayAnim(playerPed, 'mp_player_int_upperwank', animation, 8.0, -8, -1, flags, 0, 0, 0, 0)
	Citizen.Wait(timeAnim1)
	TaskPlayAnim(playerPed, 'mp_player_int_upperwank', animation2, 8.0, -8, -1, flags, 0, 0, 0, 0)
	
end)

RegisterNetEvent('sendTasMessage')
AddEventHandler('sendTasMessage', function(id, name, message)
	print("boz", "boz")
	local myId = PlayerId()
	local pid = GetPlayerFromServerId(id)
	Citizen.Wait(timeAnim1 + timeAnim2 + timeFinalWait)
	if pid == myId then
		TriggerEvent('chatMessage', name, {150, 150, 250}, message)
	elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
		TriggerEvent('chatMessage', name, {150, 150, 250},  message)
	end
end)

MAD = {}

TriggerEvent('esx:getSharedObject', function(obj) MAD.ESX = obj; ESX = obj; end)
AddEventHandler('onMySQLReady', function(...) MAD.SQLReady = true; end)

MAD.Testing = true

Citizen.CreateThread(function(...)
	while not ESX or not MAD.ESX do 
		Citizen.Wait(100)
		TriggerEvent('esx:getSharedObject', function(obj) MAD.ESX = obj; ESX = obj; end)
	end

	if MAD.Testing then 
		Citizen.Wait(3000)
		if not MAD.SQLReady then MAD.SQLReady = true; end
	end
end)

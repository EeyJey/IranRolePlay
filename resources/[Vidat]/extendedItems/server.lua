ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('energy', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('energy', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 20000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 20000)
	TriggerClientEvent('extendeditems:onDrinkEnergy', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_energy'))
end)

ESX.RegisterUsableItem('jusfruit', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('jusfruit', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 100000)
	
	TriggerClientEvent('extendeditems:onDrinkJuice', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_juice'))
end)

ESX.RegisterUsableItem('banana', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('banana', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	
	TriggerClientEvent('extendeditems:onEatBanana', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_banana'))
end)

ESX.RegisterUsableItem('orange', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('orange', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	
	TriggerClientEvent('extendeditems:onEatOrange', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_orange'))
end)

ESX.RegisterUsableItem('donut', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('donut', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	
	TriggerClientEvent('extendeditems:onEatDonut', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_donut'))
end)

ESX.RegisterUsableItem('soda', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('soda', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 20000)	
	TriggerClientEvent('esx_status:add', source, 'thirst', 150000)
	
	TriggerClientEvent('extendeditems:onDrinkSoda', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_soda'))
end)
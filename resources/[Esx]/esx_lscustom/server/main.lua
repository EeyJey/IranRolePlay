ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local Vehicles = nil
local VehOwner = nil
local owner = nil

function dump(o)
	if type(o) == 'table' then
	   local s = '{ '
	   for k,v in pairs(o) do
		  if type(k) ~= 'number' then k = '"'..k..'"' end
		  s = s .. '['..k..'] = ' .. dump(v) .. ','
	   end
	   return s .. '} '
	else
	   return tostring(o)
	end
 end

RegisterServerEvent('esx_lscustommeca:checkPlayer')
AddEventHandler('esx_lscustommeca:checkPlayer', function(plate)
	local platee = plate
	if owner == nil then
		print('aaaaaaaaaaaaaaa '.. platee)
		local result = MySQL.Sync.fetchAll('SELECT * FROM `owned_vehicles` WHERE `plate` = "@plate"', {
			['@plate'] = platee
		})
		print("resault: ")
		dump(result)
		owner = result[1].owner

	end
	print("My Owner is:" .. owner)
	local xPlayers = ESX.GetPlayers()
	local player

	for i=1, #xPlayers, 1 do
		player = xPlayers[i]

		local identifier = GetPlayerIdentifiers(player)
		print("My Owner sql Identifier is:" .. identifier)
		if owner == identifier then
			VehOwner = ESX.GetPlayerFromId(player)
			break
		end
	end
end)
RegisterServerEvent('esx_lscustommeca:buyMod')
AddEventHandler('esx_lscustommeca:buyMod', function(price)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    price = tonumber(price)

    if  Config.IsMecanoJobOnly == true then
        local societyAccount = nil
        TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mecano', function(account)
            societyAccount = account
        end)
        if price < societyAccount.money then
            TriggerClientEvent('esx_lscustommeca:installMod', _source)
            TriggerClientEvent('esx:showNotification', _source, _U('purchased'))
        else
            TriggerClientEvent('esx_lscustommeca:cancelInstallMod', _source)
            TriggerClientEvent('esx:showNotification', _source, _U('not_enough_money'))
        end

    else
        if price < xPlayer.getMoney() then
            TriggerClientEvent('esx_lscustommeca:installMod', _source)
            TriggerClientEvent('esx:showNotification', _source, _U('purchased'))
        else
            TriggerClientEvent('esx_lscustommeca:cancelInstallMod', _source)
            TriggerClientEvent('esx:showNotification', _source, _U('not_enough_money'))
        end
    end
end)

RegisterServerEvent('esx_lscustommeca:refreshOwnedVehicle')
AddEventHandler('esx_lscustommeca:refreshOwnedVehicle', function(myCar)

	MySQL.Async.execute(
		'UPDATE `owned_vehicles` SET `vehicle` = @vehicle WHERE `vehicle` LIKE "%' .. myCar['plate'] .. '%"',
		{
			['@vehicle'] = json.encode(myCar)
		}
	)
end)

ESX.RegisterServerCallback('esx_lscustommeca:getVehiclesPrices', function(source, cb)

	if Vehicles == nil then
		MySQL.Async.fetchAll(
			'SELECT * FROM vehicles',
			{},
			function(result)
				local vehicles = {}
				for i=1, #result, 1 do
					table.insert(vehicles,{
						model = result[i].model,
						price = result[i].price
					})
				end
				Vehicles = vehicles
				cb(Vehicles)
			end
		)		
	else
		cb(Vehicles)
	end
end)
ESX = nil
local Users = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('esx_thief:getValue', function(source, cb, targetSID)
	if Users[targetSID] then
		cb(Users[targetSID])
	else
		cb({value = false, time = 0})
	end
end)

ESX.RegisterServerCallback('esx_thief:getOtherPlayerData', function(source, cb, target)
	local xPlayer = ESX.GetPlayerFromId(target)

	local data = {
		name 		= GetPlayerName(target),
		job 		= xPlayer.job.name,
		inventory 	= xPlayer.inventory,
		accounts 	= xPlayer.accounts,
		money 		= xPlayer.getMoney(),
		weapons		= xPlayer.loadout
	}

	cb(data)
end)

function updateLastRob(identity, robber)
	MySQL.Async.execute('UPDATE users SET `lastrobbed` = @lastrobbed, `robber` = @robber WHERE `identifier` = @identifier', {
		['@lastrobbed'] = os.time(),
		['@robber'] = robber,
		['@identifier'] = identity
	})
end

function RobbedBefore(identity, robber)
	MySQL.Async.fetchAll('SELECT lastrobbed, robber FROM users WHERE `identifier` = @identifier', {
		['identifier'] = identity
	}, function(data)
		if robber == data[1].robber and (os.time() - data[1].lastrobbed >= 90) or data[1].lastrobbed == nil or (os.time() - data[1].lastrobbed >= 1800) then
			return false
		end
		return true
	end)
end

RegisterServerEvent('esx_thief:stealPlayerItem')
AddEventHandler('esx_thief:stealPlayerItem', function(target, itemType, itemName, amount)
	local _source = source
	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)
	local oocname =  GetPlayerName(source)
	local targetName =  GetPlayerName(target)
	updateLastRob(targetXPlayer.identifier, sourceXPlayer.identifier)

	TriggerEvent('DiscordBot:ToDiscord', 'loot', oocname, 'Stole '..amount ..' of '.. itemName .. ' from ' .. targetName,'user', true, source, false)

	if not RobbedBefore(targetXPlayer.identifier, sourceXPlayer.identifier) and not (targetXPlayer.getGroup() == 'admin' or targetXPlayer.getGroup() == 'superadmin') then
		if itemType == 'item_standard' then
			local label = sourceXPlayer.getInventoryItem(itemName).label
			local itemLimit = sourceXPlayer.getInventoryItem(itemName).limit
			local sourceItemCount = sourceXPlayer.getInventoryItem(itemName).count
			local targetItemCount = targetXPlayer.getInventoryItem(itemName).count
			if amount > 0 and targetItemCount >= amount then
				if itemLimit ~= -1 and (sourceItemCount + amount) > itemLimit then
					TriggerClientEvent('esx:showNotification', targetXPlayer.source, _U('ex_inv_lim_target'))
					TriggerClientEvent('esx:showNotification', sourceXPlayer.source, _U('ex_inv_lim_source'))
				else
					targetXPlayer.removeInventoryItem(itemName, amount)
					sourceXPlayer.addInventoryItem(itemName, amount)

					TriggerClientEvent('esx:showNotification', sourceXPlayer.source, _U('you_stole') .. ' ~g~x' .. amount .. ' ' .. label .. ' ~w~' .. _U('from_your_target') )
					TriggerClientEvent('esx:showNotification', targetXPlayer.source, _U('someone_stole') .. ' ~r~x'  .. amount .. ' ' .. label )

				end
			else
				TriggerClientEvent('esx:showNotification', _source, _U('invalid_quantity'))
			end

		elseif itemType == 'item_money' then

			if amount > 0 and targetXPlayer.get('money') >= amount then
				targetXPlayer.removeMoney(amount)
				sourceXPlayer.addMoney(amount)

				TriggerClientEvent('esx:showNotification', sourceXPlayer.source, _U('you_stole') .. ' ~g~$' .. amount .. ' ~w~' .. _U('from_your_target') )
				TriggerClientEvent('esx:showNotification', targetXPlayer.source, _U('someone_stole') .. ' ~r~$'  .. amount )
			else
				TriggerClientEvent('esx:showNotification', _source, _U('imp_invalid_amount'))
			end

		elseif itemType == 'item_account' then

			if amount > 0 and targetXPlayer.getAccount(itemName).money >= amount then
				targetXPlayer.removeAccountMoney(itemName, amount)
				sourceXPlayer.addAccountMoney(itemName, amount)

				TriggerClientEvent('esx:showNotification', sourceXPlayer.source, _U('you_stole') .. ' ~g~$' .. amount .. ' ~w~' .. _U('of_black_money') .. ' ' .. _U('from_your_target') )
				TriggerClientEvent('esx:showNotification', targetXPlayer.source, _U('someone_stole') .. ' ~r~$'  .. amount .. ' ~w~' .. _U('of_black_money') )
			else
				TriggerClientEvent('esx:showNotification', _source, _U('imp_invalid_amount'))
			end

		end

		if itemType == 'item_weapon' then
			-- print("Item_weapon")
			if amount == nil then amount = 0 end
				targetXPlayer.removeWeapon(itemName, amount)
				sourceXPlayer.addWeapon(itemName, amount)
				--targetXPlayer.getLoadout()
		
				TriggerClientEvent('esx:showNotification', sourceXPlayer.source, _U('you_stole') .. ' ~g~x' .. amount .. ' ' .. itemName .. ' ~w~' .. _U('from_your_target') )
				TriggerClientEvent('esx:showNotification', targetXPlayer.source, _U('someone_stole') .. ' ~r~x'  .. amount .. ' ' .. itemName )
		end
	else
		TriggerClientEvent('esx:showNotification', sourceXPlayer.source, 'Shoma Nemitonid in player ro robb konid. ~r~Qavanine robb ro bekhonid !')
	end
end)

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

RegisterServerEvent('esx_thief:update')
AddEventHandler('esx_thief:update', function(bool)
	local _source = source
	Users[_source] = {value = bool, time = os.time()}
end)

TriggerEvent('es:addCommand', 'getthelist', function(source, args, user)
	print(dump(Users))
end)

TriggerEvent('es:addCommand', 'wloadout', function(source, args, user)
	local targetXPlayer = ESX.GetPlayerFromId(args[1])
	print(dump(targetXPlayer.getLoadout()))
end)

RegisterServerEvent('esx_thief:getValue')
AddEventHandler('esx_thief:getValue', function(targetSID)
	local _source = source
	if Users[targetSID] then
		TriggerClientEvent('esx_thief:returnValue', _source, Users[targetSID])
	else
		TriggerClientEvent('esx_thief:returnValue', _source, Users[targetSID])
	end
end)
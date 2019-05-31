ESX = nil
local Families = {}
local RegisteredFamilies = {}
local TempFamilies = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function GetFamily(family)
	for i=1, #RegisteredFamilies, 1 do
		if RegisteredFamilies[i] == family then
			local family
			family.name = family
			family.account = 'family_' .. string.lower(family)
			return family
		end
	end
end


MySQL.ready(function()
	local result = MySQL.Sync.fetchAll('SELECT * FROM families', {})

 	for i=1, #result, 1 do
		Families[result[i].name]        = result[i]
		Families[result[i].name].grades = {}
		RegisteredFamilies[i] = result[i].name
	end

 	local result2 = MySQL.Sync.fetchAll('SELECT * FROM family_grades', {})

 	for i=1, #result2, 1 do
		Families[result2[i].family_name].grades[tostring(result2[i].grade)] = result2[i]
	end
end)

AddEventHandler('irrp_families:registerFamily', function(source, name, account)
	local found = false

 	local family = {
		name      = name,
		account   = account,
	}

 	for i=1, #RegisteredFamilies, 1 do
		if RegisteredFamilies[i].name == name then
			found = true
			RegisteredFamilies[i] = family
			break
		end
	end

 	if not found then
		table.insert(TempFamilies, family)
	else
		TriggerClientEvent('esx:showNotification', source, 'This Family Created Before!')
	end
end)

-- AddEventHandler('irrp_families:saveFamilies', function(source)
-- 	for i=1, #RegisteredFamilies, 1 do
-- 		for j=1, #TempFamilies, 1 do
-- 			if RegisteredFamilies[i].name == TempFamilies[j].name

-- 		end
-- 	end

-- end)

AddEventHandler('irrp_families:getFamilies', function(cb)
	cb(RegisteredSocieties)
end)

AddEventHandler('irrp_families:getFamily', function(name, cb)
	cb(GetFamily(name))
end)

RegisterServerEvent('irrp_families:withdrawMoney')
AddEventHandler('irrp_families:withdrawMoney', function(familyname, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local family = GetFamily(familyname)
	amount = ESX.Math.Round(tonumber(amount))

 	if xPlayer.family.name ~= family.name then
		print(('irrp_families: %s attempted to call withdrawMoney!'):format(xPlayer.identifier))
		return
	end

 	TriggerEvent('irrp_familyaccount:updateFamilyAccount', family.account, function(account)
		if amount > 0 and account.money >= amount then
			account.removeMoney(amount)
			xPlayer.addMoney(amount)
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_withdrawn', ESX.Math.GroupDigits(amount)))
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_amount'))
		end
	end)
end)

RegisterServerEvent('irrp_families:withdrawBlackMoney')
AddEventHandler('irrp_families:withdrawBlackMoney', function(familyname, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local family = GetFamily(familyname)
	amount = ESX.Math.Round(tonumber(amount))

 	if xPlayer.family.name ~= family.name then
		print(('irrp_families: %s attempted to call withdrawBlackMoney!'):format(xPlayer.identifier))
		return
	end

 	TriggerEvent('irrp_familyaccount:updateFamilyAccount', family.account, function(account)
		if amount > 0 and account.black_money >= amount then
			account.removeBlackMoney(amount)
			xPlayer.addAccountMoney('black_money', amount)

 			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_withdrawn_black_money', ESX.Math.GroupDigits(amount)))
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_amount'))
		end
	end)
end)



RegisterServerEvent('irrp_families:depositMoney')
AddEventHandler('irrp_families:depositMoney', function(family, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local family = GetFamily(family)
	amount = ESX.Math.Round(tonumber(amount))

 	if xPlayer.family.name ~= family.name then
		print(('irrp_families: %s attempted to call depositMoney!'):format(xPlayer.identifier))
		return
	end

 	if amount > 0 and xPlayer.getMoney() >= amount then
		TriggerEvent('irrp_familyaccount:updateFamilyAccount', family.account, function(account)
			xPlayer.removeMoney(amount)
			account.addMoney(amount)
		end)

 		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_deposited', ESX.Math.GroupDigits(amount)))
	else
		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_amount'))
	end
end)

RegisterServerEvent('irrp_families:depositBlackMoney')
AddEventHandler('irrp_families:depositBlackMoney', function(family, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local family = GetFamily(family)
	amount = ESX.Math.Round(tonumber(amount))

 	if xPlayer.family.name ~= family.name then
		print(('irrp_families: %s attempted to call depositBlackMoney!'):format(xPlayer.identifier))
		return
	end

	local m = xPlayer.getAccount('black_money').money
	
 	if amount > 0 and m >= amount then
		TriggerEvent('irrp_familyaccount:updateFamilyAccount', family.account, function(account)
			xPlayer.removeAccountMoney('black_money', amount)
			account.addBlackMoney(amount)
		end)

 		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_deposited_black_money', ESX.Math.GroupDigits(amount)))
	else
		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_amount'))
	end
end)


RegisterServerEvent('irrp_families:getStockItem')
AddEventHandler('irrp_families:getStockItem', function(station, itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)
  local family = GetFamily(station)

  if xPlayer.family.name ~= family.name then
		print(('irrp_families: %s attempted to call getStock without permission!'):format(xPlayer.identifier))
		return
	end

  TriggerEvent('esx_addoninventory:getSharedInventory', family.account, function(inventory)
	local item = inventory.getItem(itemName)
	local sourceItem = xPlayer.getInventoryItem(itemName)
	if item.count >= count and count > 0 then
		if sourceItem.limit ~= -1 and (sourceItem.count + count) > sourceItem.limit then
			TriggerClientEvent('esx:showNotification', xPlayer.source, 'Shoma Fazaye Kafi Nadarid!')
		else
			inventory.removeItem(itemName, count)
			xPlayer.addInventoryItem(itemName, count)
			TriggerClientEvent('esx:showNotification', xPlayer.source, 'Shoma be Tedade ' .. count .. ' ' .. item.label .. ' Az Sandogh Bardashtid!')
		end
	else
	  TriggerClientEvent('esx:showNotification', xPlayer.source, 'Tedad Ro Eshtebah Vared Kardid!')
	end
	end)
end)


RegisterServerEvent('irrp_families:putStockItems')
AddEventHandler('irrp_families:putStockItems', function(station, itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)
  local family = GetFamily(station)

  if xPlayer.family.name ~= family.name then
		print(('irrp_families: %s attempted to call putStock without permission!'):format(xPlayer.identifier))
		return
  end

  TriggerEvent('esx_addoninventory:getSharedInventory', family.account, function(inventory)

	local item = xPlayer.getInventoryItem(itemName)

 	if item.count >= count then
	  xPlayer.removeInventoryItem(itemName, count)
		inventory.addItem(itemName, count)
		TriggerClientEvent('esx:showNotification', xPlayer.source, 'Tedade ' .. count .. ' ' .. item.label .. ' Varde Sandogh Shod')
	else
	  TriggerClientEvent('esx:showNotification', xPlayer.source, 'Tedad ro Eshtebah Vared Kardid!')
	end

  end)

 end)

RegisterServerEvent('irrp_families:washMoney')
AddEventHandler('irrp_families:washMoney', function(family, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local account = xPlayer.getAccount('black_money')
	amount = ESX.Math.Round(tonumber(amount))

 	if xPlayer.family.name ~= family then
		print(('irrp_families: %s attempted to call washMoney!'):format(xPlayer.identifier))
		return
	end

 	if amount and amount > 0 and account.money >= amount then
		xPlayer.removeAccountMoney('black_money', amount)

 		MySQL.Async.execute('INSERT INTO family_moneywash (identifier, family, amount) VALUES (@identifier, @family, @amount)', {
			['@identifier'] = xPlayer.identifier,
			['@family']    = family,
			['@amount']     = amount
		}, function(rowsChanged)
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_have', ESX.Math.GroupDigits(amount)))
		end)
	else
		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_amount'))
	end

 end)

RegisterServerEvent('irrp_families:putVehicleInGarage')
AddEventHandler('irrp_families:putVehicleInGarage', function(familyName, vehicle)
	local family = GetFamily(familyName)

 	TriggerEvent('esx_datastore:getSharedDataStore', family.datastore, function(store)
		local garage = store.get('garage') or {}

 		table.insert(garage, vehicle)
		store.set('garage', garage)
	end)
end)

RegisterServerEvent('irrp_families:removeVehicleFromGarage')
AddEventHandler('irrp_families:removeVehicleFromGarage', function(familyName, vehicle)
	local family = GetFamily(familyName)

 	TriggerEvent('esx_datastore:getSharedDataStore', family.datastore, function(store)
		local garage = store.get('garage') or {}

 		for i=1, #garage, 1 do
			if garage[i].plate == vehicle.plate then
				table.remove(garage, i)
				break
			end
		end

 		store.set('garage', garage)
	end)
end)

ESX.RegisterServerCallback('irrp_families:getFamilyMoney', function(source, cb, family)
	local family = GetFamily(family)

 	if family then
		TriggerEvent('irrp_familyaccount:updateFamilyAccount', family.account, function(account)
			cb(account.money)
		end)
	else
		cb(0)
	end
end)

ESX.RegisterServerCallback('irrp_families:getFamilyBlackMoney', function(source, cb, family)
	local family = GetFamily(family)

 	if family then
		TriggerEvent('irrp_familyaccount:updateFamilyAccount', family.account, function(account)
			cb(account.black_money)
		end)
	else
		cb(0)
	end
end)

ESX.RegisterServerCallback('irrp_families:getArmoryWeapons', function(source, cb, family)
	local family = GetFamily(family)

 	if family then
    TriggerEvent('esx_datastore:getSharedDataStore', family.account, function(store)

      local weapons = store.get('weapons')

      if weapons == nil then
        weapons = {}
      end

      cb(weapons)

 	end)
	else
		cb(0)
	end
end)

 ESX.RegisterServerCallback('irrp_families:addArmoryWeapon', function(source, cb, weaponName, station)
	local family = GetFamily(station)
  local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.family.name ~= family.name then
		print(('irrp_families: %s attempted to addArmoryWeapon!'):format(xPlayer.identifier))
		return
	end
    xPlayer.removeWeapon(weaponName)

     TriggerEvent('esx_datastore:getSharedDataStore', family.account, function(store)

       local weapons = store.get('weapons')

       if weapons == nil then
        weapons = {}
      end

       local foundWeapon = false

       for i=1, #weapons, 1 do
        if weapons[i].name == weaponName then
          weapons[i].count = weapons[i].count + 1
          foundWeapon = true
        end
      end

       if not foundWeapon then
        table.insert(weapons, {
          name  = weaponName,
          count = 1
        })
      end

       store.set('weapons', weapons)

       cb()

     end)

 end)

 ESX.RegisterServerCallback('irrp_families:removeArmoryWeapon', function(source, cb, weaponName, station)
	local family = GetFamily(station)
	local xPlayer = ESX.GetPlayerFromId(source)
	local alreadyHaveWeapon = false
	if xPlayer.family.name ~= family.name then
		print(('irrp_families: %s attempted to removeArmoryWeapon!'):format(xPlayer.identifier))
		return
	end
	
	for i=#xPlayer.loadout, 1, -1 do
		if xPlayer.loadout[i].name == weaponName then
			alreadyHaveWeapon = true
		end
	end
	if not alreadyHaveWeapon then
		xPlayer.addWeapon(weaponName, 1000)
		TriggerEvent('esx_datastore:getSharedDataStore', family.account, function(store)

			local weapons = store.get('weapons')

			if weapons == nil then
				weapons = {}
			end

			local foundWeapon = false

			for i=1, #weapons, 1 do
				if weapons[i].name == weaponName then
					weapons[i].count = (weapons[i].count > 0 and weapons[i].count - 1 or 0)
					foundWeapon = true
				end
			end

			if not foundWeapon then
				table.insert(weapons, {
					name  = weaponName,
					count = 0
				})
			end

			store.set('weapons', weapons)

			cb()

			end)
	else
		TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Shoma in Aslahe ro Darid!')
	end

   end)

  ESX.RegisterServerCallback('irrp_families:buy', function(source, cb, amount, station)
		local family = GetFamily(station)
		local xPlayer = ESX.GetPlayerFromId(source)
		if xPlayer.family.name ~= family.name then
			print(('irrp_families: %s attempted to buy!'):format(xPlayer.identifier))
			return
		end
		TriggerEvent('irrp_familyaccount:updateFamilyAccount', family.account, function(account)
    if account.money >= amount then
      account.removeMoney(amount)
      cb(true)
    else
      cb(false)
    end
		end)
  end)

  ESX.RegisterServerCallback('irrp_families:getStockItems', function(source, cb, station)
	local family = GetFamily(station)
  local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.family.name ~= family.name then
		print(('irrp_families: %s attempted to GetStockItems!'):format(xPlayer.identifier))
		return
	end

  TriggerEvent('esx_addoninventory:getSharedInventory', family.account, function(inventory)
    cb(inventory.items)
  end)

  end)


 ESX.RegisterServerCallback('irrp_families:getEmployees', function(source, cb, family)
	if Config.EnableESXIdentity then

 		MySQL.Async.fetchAll('SELECT firstname, lastname, identifier, family, family_grade FROM users WHERE family = @family ORDER BY family_grade DESC', {
			['@family'] = family
		}, function (results)
			local employees = {}

 			for i=1, #results, 1 do
				table.insert(employees, {
					name       = results[i].firstname .. ' ' .. results[i].lastname,
					identifier = results[i].identifier,
					family = {
						name        = results[i].family,
						label       = Families[results[i].family].label,
						grade       = results[i].family_grade,
						grade_name  = Families[results[i].family].grades[tostring(results[i].family_grade)].name,
						grade_label = Families[results[i].family].grades[tostring(results[i].family_grade)].label
					}
				})
			end

 			cb(employees)
		end)
	else
		MySQL.Async.fetchAll('SELECT name, identifier, family, family_grade FROM users WHERE family = @family ORDER BY family_grade DESC', {
			['@family'] = family
		}, function (result)
			local employees = {}

 			for i=1, #result, 1 do
				table.insert(employees, {
					name       = result[i].name,
					identifier = result[i].identifier,
					family = {
						name        = result[i].family,
						label       = Families[result[i].family].label,
						grade       = result[i].family_grade,
						grade_name  = Families[result[i].family].grades[tostring(result[i].family_grade)].name,
						grade_label = Families[result[i].family].grades[tostring(result[i].family_grade)].label
					}
				})
			end

 			cb(employees)
		end)
	end
end)

 ESX.RegisterServerCallback('irrp_families:getFamily', function(source, cb, family)
	local family    = json.decode(json.encode(Families[family]))
	local grades = {}

 	for k,v in pairs(family.grades) do
		table.insert(grades, v)
	end

 	table.sort(grades, function(a, b)
		return a.grade < b.grade
	end)

 	family.grades = grades

 	cb(family)
end)


 ESX.RegisterServerCallback('irrp_families:setFamily', function(source, cb, identifier, family, grade, type)
	local xPlayer = ESX.GetPlayerFromId(source)
	local isBoss = xPlayer.family.grade == 6

 	if isBoss then
		local xTarget = ESX.GetPlayerFromIdentifier(identifier)

 		if xTarget then
			xTarget.setFamily(family, grade)

 			if type == 'hire' then
				TriggerClientEvent('esx:showNotification', xTarget.source, _U('you_have_been_hired', family))
			elseif type == 'promote' then
				TriggerClientEvent('esx:showNotification', xTarget.source, _U('you_have_been_promoted'))
			elseif type == 'fire' then
				TriggerClientEvent('esx:showNotification', xTarget.source, _U('you_have_been_fired', xTarget.getFamily().label))
			end

 			cb()
		else
			MySQL.Async.execute('UPDATE users SET family = @family, family_grade = @family_grade WHERE identifier = @identifier', {
				['@family']        = family,
				['@family_grade']  = grade,
				['@identifier'] 	 = identifier
			}, function(rowsChanged)
				cb()
			end)
		end
	else
		print(('irrp_families: %s attempted to setFamily'):format(xPlayer.identifier))
		cb()
	end
end)

 ESX.RegisterServerCallback('irrp_families:setFamilySalary', function(source, cb, family, grade, salary)
	local isBoss = isPlayerBoss(source, family)
	local identifier = GetPlayerIdentifier(source, 0)

 	if isBoss then
		if salary <= Config.MaxSalary then
			MySQL.Async.execute('UPDATE family_grades SET salary = @salary WHERE family_name = @family_name AND grade = @grade', {
				['@salary']   = salary,
				['@family_name'] = family.name,
				['@grade']    = grade
			}, function(rowsChanged)
				Families[family.name].grades[tostring(grade)].salary = salary
				local xPlayers = ESX.GetPlayers()

 				for i=1, #xPlayers, 1 do
					local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

 					if xPlayer.family.name == family.name and xPlayer.family.grade == grade then
						xPlayer.setFamily(family, grade)
					end
				end

 				cb()
			end)
		else
			print(('irrp_families: %s attempted to setFamilySalary over config limit!'):format(identifier))
			cb()
		end
	else
		print(('irrp_families: %s attempted to setFamilySalary'):format(identifier))
		cb()
	end
end)

 ESX.RegisterServerCallback('irrp_families:getOnlinePlayers', function(source, cb)
	local xPlayers = ESX.GetPlayers()
	local players  = {}

 	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		table.insert(players, {
			source     = xPlayer.source,
			identifier = xPlayer.identifier,
			name       = xPlayer.name,
			family     = xPlayer.family
		})
	end

 	cb(players)
end)

ESX.RegisterServerCallback('irrp_families:getVehiclesInGarage', function(source, cb, familyName)
	local family = GetFamily(familyName)

 	TriggerEvent('esx_datastore:getSharedDataStore', family.datastore, function(store)
		local garage = store.get('garage') or {}
		cb(garage)
	end)
end)

ESX.RegisterServerCallback('irrp_families:isBoss', function(source, cb, family)
	cb(isPlayerBoss(source, family))
end)

function isPlayerBoss(playerId, family)
	local xPlayer = ESX.GetPlayerFromId(playerId)

 	if xPlayer.family.label == 'family' and xPlayer.family.grade == 6 then
		return true
	else
		print(('irrp_families: %s attempted open a family boss menu!'):format(xPlayer.identifier))
		return false
	end
end

 function WashMoneyCRON(d, h, m)
	MySQL.Async.fetchAll('SELECT * FROM family_moneywash', {}, function(result)
		for i=1, #result, 1 do
			local family = GetFamily(result[i].family)
			local xPlayer = ESX.GetPlayerFromIdentifier(result[i].identifier)

 			-- add family money
			TriggerEvent('irrp_familyaccount:updateFamilyAccount', family.account, function(account)
				account.addMoney(result[i].amount)
			end)

 			-- send notification if player is online
			if xPlayer then
				TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_have_laundered', ESX.Math.GroupDigits(result[i].amount)))
			end

 			MySQL.Async.execute('DELETE FROM family_moneywash WHERE id = @id', {
				['@id'] = result[i].id
			})
		end
	end)
end

 TriggerEvent('cron:runAt', 3, 0, WashMoneyCRON)
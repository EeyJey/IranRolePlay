ESX = nil
local Jobs = {}
local RegisteredSocieties = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function GetFamily(name)
	for i=1, #RegisteredFamilies, 1 do
		if RegisteredFamilies[i].name == name then
			return RegisteredFamilies[i]
		end
	end
end

MySQL.ready(function()
	local result = MySQL.Sync.fetchAll('SELECT * FROM jobs', {})

	for i=1, #result, 1 do
		Jobs[result[i].name]        = result[i]
		Jobs[result[i].name].grades = {}
	end

	local result2 = MySQL.Sync.fetchAll('SELECT * FROM job_grades', {})

	for i=1, #result2, 1 do
		Jobs[result2[i].job_name].grades[tostring(result2[i].grade)] = result2[i]
	end
end)

AddEventHandler('irrp_families:registerFamily', function(name, label, account, datastore, inventory, data)
	local found = false

	local family = {
		name      = name,
		label     = label,
		account   = account,
		datastore = datastore,
		inventory = inventory,
		data      = data,
	}

	for i=1, #RegisteredSocieties, 1 do
		if RegisteredSocieties[i].name == name then
			found = true
			RegisteredSocieties[i] = family
			break
		end
	end

	if not found then
		table.insert(RegisteredSocieties, family)
	end
end)

AddEventHandler('irrp_families:getSocieties', function(cb)
	cb(RegisteredSocieties)
end)

AddEventHandler('irrp_families:getFamily', function(name, cb)
	cb(GetFamily(name))
end)

RegisterServerEvent('irrp_families:withdrawMoney')
AddEventHandler('irrp_families:withdrawMoney', function(family, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local family = GetFamily(family)
	amount = ESX.Math.Round(tonumber(amount))

	if xPlayer.job.name ~= family.name then
		print(('irrp_families: %s attempted to call withdrawMoney!'):format(xPlayer.identifier))
		return
	end

	TriggerEvent('esx_addonaccount:getSharedAccount', family.account, function(account)
		if amount > 0 and account.money >= amount then
			account.removeMoney(amount)
			xPlayer.addMoney(amount)

			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_withdrawn', ESX.Math.GroupDigits(amount)))
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

	if xPlayer.job.name ~= family.name then
		print(('irrp_families: %s attempted to call depositMoney!'):format(xPlayer.identifier))
		return
	end

	if amount > 0 and xPlayer.getMoney() >= amount then
		TriggerEvent('esx_addonaccount:getSharedAccount', family.account, function(account)
			xPlayer.removeMoney(amount)
			account.addMoney(amount)
		end)

		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_deposited', ESX.Math.GroupDigits(amount)))
	else
		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_amount'))
	end
end)


RegisterServerEvent('irrp_families:getStockItem')
AddEventHandler('irrp_families:getStockItem', function(family, itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)
  local family = getFamily(family)

  if xPlayer.family.name ~= family.name then
		print(('irrp_families: %s attempted to call getStock without permission!'):format(xPlayer.identifier))
		return
	end

  TriggerEvent('esx_addoninventory:getSharedInventory', family.account, function(inventory)
	local item = inventory.getItem(itemName)
	if item.count >= count and count > 0 then
	  inventory.removeItem(itemName, count)
	  xPlayer.addInventoryItem(itemName, count)
	else
	  TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
	end

	TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_withdrawn') .. count .. ' ' .. item.label)
	end)
end)


RegisterServerEvent('irrp_families:putStockItems')
AddEventHandler('irrp_families:putStockItems', function(family, itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)
  local family = getFamily(family)

  if xPlayer.family.name ~= family.name then
	print(('irrp_families: %s attempted to call putStock without permission!'):format(xPlayer.identifier))
	return
  end

  TriggerEvent('esx_addoninventory:getSharedInventory', family.account, function(inventory)

	local item = inventory.getItem(itemName)

	if item.count >= 0 then
	  xPlayer.removeInventoryItem(itemName, count)
	  inventory.addItem(itemName, count)
	else
	  TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
	end

	TriggerClientEvent('esx:showNotification', xPlayer.source, _U('added') .. count .. ' ' .. item.label)

  end)

end)

RegisterServerEvent('irrp_families:washMoney')
AddEventHandler('irrp_families:washMoney', function(family, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local account = xPlayer.getAccount('black_money')
	amount = ESX.Math.Round(tonumber(amount))

	if xPlayer.job.name ~= family then
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
		TriggerEvent('esx_addonaccount:getSharedAccount', family.account, function(account)
			cb(account.money)
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

ESX.RegisterServerCallback('irrp_families:addArmoryWeapon', function(source, cb, weaponName, family)
	local family = GetFamily(family)
    local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.family.name == family.name then
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

ESX.RegisterServerCallback('irrp_families:removeArmoryWeapon', function(source, cb, weaponName, family)
	local family = GetFamily(family)
    local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.family.name == family.name then
		print(('irrp_families: %s attempted to removeArmoryWeapon!'):format(xPlayer.identifier))
		return
	end
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

  end)

  ESX.RegisterServerCallback('irrp_families:buy', function(source, cb, amount, family)
	local family = GetFamily(family)
    local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.family.name == family.name then
		print(('irrp_families: %s attempted to buy!'):format(xPlayer.identifier))
		return
	end
    TriggerEvent('esx_addonaccount:getSharedAccount', family.account, function(account)

      if account.money >= amount then
        account.removeMoney(amount)
        cb(true)
      else
        cb(false)
      end

    end)

  end)

  ESX.RegisterServerCallback('irrp_families:getStockItems', function(source, cb, family)
	local family = GetFamily(family)
    local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.family.name == family.name then
		print(('irrp_families: %s attempted to buy!'):format(xPlayer.identifier))
		return
	end

    TriggerEvent('esx_addoninventory:getSharedInventory', family.account, function(inventory)
      cb(inventory.items)
    end)

  end)
  

ESX.RegisterServerCallback('irrp_families:getEmployees', function(source, cb, family)
	if Config.EnableESXIdentity then

		MySQL.Async.fetchAll('SELECT firstname, lastname, identifier, job, job_grade FROM users WHERE job = @job ORDER BY job_grade DESC', {
			['@job'] = family
		}, function (results)
			local employees = {}

			for i=1, #results, 1 do
				table.insert(employees, {
					name       = results[i].firstname .. ' ' .. results[i].lastname,
					identifier = results[i].identifier,
					job = {
						name        = results[i].job,
						label       = Jobs[results[i].job].label,
						grade       = results[i].job_grade,
						grade_name  = Jobs[results[i].job].grades[tostring(results[i].job_grade)].name,
						grade_label = Jobs[results[i].job].grades[tostring(results[i].job_grade)].label
					}
				})
			end

			cb(employees)
		end)
	else
		MySQL.Async.fetchAll('SELECT name, identifier, job, job_grade FROM users WHERE job = @job ORDER BY job_grade DESC', {
			['@job'] = family
		}, function (result)
			local employees = {}

			for i=1, #result, 1 do
				table.insert(employees, {
					name       = result[i].name,
					identifier = result[i].identifier,
					job = {
						name        = result[i].job,
						label       = Jobs[result[i].job].label,
						grade       = result[i].job_grade,
						grade_name  = Jobs[result[i].job].grades[tostring(result[i].job_grade)].name,
						grade_label = Jobs[result[i].job].grades[tostring(result[i].job_grade)].label
					}
				})
			end

			cb(employees)
		end)
	end
end)

ESX.RegisterServerCallback('irrp_families:getJob', function(source, cb, family)
	local job    = json.decode(json.encode(Jobs[family]))
	local grades = {}

	for k,v in pairs(job.grades) do
		table.insert(grades, v)
	end

	table.sort(grades, function(a, b)
		return a.grade < b.grade
	end)

	job.grades = grades

	cb(job)
end)


ESX.RegisterServerCallback('irrp_families:setJob', function(source, cb, identifier, family, grade, type)
	local xPlayer = ESX.GetPlayerFromId(source)
	local isBoss = xPlayer.family.grade_name == 'boss'

	if isBoss then
		local xTarget = ESX.GetPlayerFromIdentifier(identifier)

		if xTarget then
			xTarget.setFamily(family, grade)

			if type == 'hire' then
				TriggerClientEvent('esx:showNotification', xTarget.source, _U('you_have_been_hired', job))
			elseif type == 'promote' then
				TriggerClientEvent('esx:showNotification', xTarget.source, _U('you_have_been_promoted'))
			elseif type == 'fire' then
				TriggerClientEvent('esx:showNotification', xTarget.source, _U('you_have_been_fired', xTarget.getJob().label))
			end

			cb()
		else
			MySQL.Async.execute('UPDATE users SET family = @family, family_grade = @family_grade WHERE identifier = @identifier', {
				['@family']        = family,
				['@family_grade']  = grade,
				['@identifier'] = identifier
			}, function(rowsChanged)
				cb()
			end)
		end
	else
		print(('irrp_families: %s attempted to setFamily'):format(xPlayer.identifier))
		cb()
	end
end)

ESX.RegisterServerCallback('irrp_families:setJobSalary', function(source, cb, job, grade, salary)
	local isBoss = isPlayerBoss(source, job)
	local identifier = GetPlayerIdentifier(source, 0)

	if isBoss then
		if salary <= Config.MaxSalary then
			MySQL.Async.execute('UPDATE job_grades SET salary = @salary WHERE job_name = @job_name AND grade = @grade', {
				['@salary']   = salary,
				['@job_name'] = job,
				['@grade']    = grade
			}, function(rowsChanged)
				Jobs[job].grades[tostring(grade)].salary = salary
				local xPlayers = ESX.GetPlayers()

				for i=1, #xPlayers, 1 do
					local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

					if xPlayer.job.name == job and xPlayer.job.grade == grade then
						xPlayer.setJob(job, grade)
					end
				end

				cb()
			end)
		else
			print(('irrp_families: %s attempted to setJobSalary over config limit!'):format(identifier))
			cb()
		end
	else
		print(('irrp_families: %s attempted to setJobSalary'):format(identifier))
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
			job        = xPlayer.job,
			family		 = xPlayer.family
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

ESX.RegisterServerCallback('irrp_families:isBoss', function(source, cb, job)
	cb(isPlayerBoss(source, job))
end)

function isPlayerBoss(playerId, job)
	local xPlayer = ESX.GetPlayerFromId(playerId)

	if xPlayer.job.name == job and xPlayer.job.grade_name == 'boss' then
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
			TriggerEvent('esx_addonaccount:getSharedAccount', family.account, function(account)
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

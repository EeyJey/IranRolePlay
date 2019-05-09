ESX = nil

local base64MoneyIcon = ''

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().family == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()

	RefreshBussHUD()
end)

RegisterNetEvent('esx:setFamily')
AddEventHandler('esx:setFamily', function(family)
	ESX.PlayerData.family = family
	RefreshBussHUD()
end)

function RefreshBussHUD()
	DisableSocietyMoneyHUDElement()

	if ESX.PlayerData.family.grade == 6 then
		EnableSocietyMoneyHUDElement()

		ESX.TriggerServerCallback('irrp_families:getFamilyMoney', function(money)
			UpdateSocietyMoneyHUDElement(money)
		end, ESX.PlayerData.family.name)
	end
end

RegisterNetEvent('irrp_familyaccount:setMoney')
AddEventHandler('irrp_familyaccount:setMoney', function(family, money)
	if ESX.PlayerData.family and ESX.PlayerData.family.grade == 6 and 'family_' .. ESX.PlayerData.family.name == family then
		UpdateSocietyMoneyHUDElement(money)
	end
end)

function EnableSocietyMoneyHUDElement()
	local societyMoneyHUDElementTpl = '<div><img src="' .. base64MoneyIcon .. '" style="width:20px; height:20px; vertical-align:middle;">&nbsp;{{money}}</div>'

	if ESX.GetConfig().EnableHud then
		ESX.UI.HUD.RegisterElement('society_money', 3, 0, societyMoneyHUDElementTpl, {
			money = 0
		})
	end

	TriggerEvent('irrp_families:toggleSocietyHud', true)
end

function DisableSocietyMoneyHUDElement()
	if ESX.GetConfig().EnableHud then
		ESX.UI.HUD.RemoveElement('society_money')
	end

	TriggerEvent('irrp_families:toggleSocietyHud', false)
end

function UpdateSocietyMoneyHUDElement(money)
	if ESX.GetConfig().EnableHud then
		ESX.UI.HUD.UpdateElement('society_money', {
			money = ESX.Math.GroupDigits(money)
		})
	end

	TriggerEvent('irrp_families:setSocietyMoney', money)
end

function OpenBossMenu(family, close, options)
	local isBoss = nil
	local options  = options or {}
	local elements = {}

	ESX.TriggerServerCallback('irrp_families:isBoss', function(result)
		isBoss = result
	end, family)

	while isBoss == nil do
		Citizen.Wait(100)
	end

	if not isBoss then
		return
	end

	local defaultOptions = {
		withdraw  = true,
		deposit   = true,
		wash      = true,
		employees = true,
		grades    = true
	}

	for k,v in pairs(defaultOptions) do
		if options[k] == nil then
			options[k] = v
		end
	end

	if options.withdraw then
		table.insert(elements, {label = _U('withdraw_society_money'), value = 'withdraw_society_money'})
	end

	if options.deposit then
		table.insert(elements, {label = _U('deposit_society_money'), value = 'deposit_money'})
	end

	if options.wash then
		table.insert(elements, {label = _U('wash_money'), value = 'wash_money'})
	end

	if options.employees then
		table.insert(elements, {label = _U('employee_management'), value = 'manage_employees'})
	end

	if options.grades then
		table.insert(elements, {label = _U('salary_management'), value = 'manage_grades'})
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'boss_actions_' .. family, {
		title    = _U('boss_menu'),
		align    = 'top-left',
		elements = elements
	}, function(data, menu)

		if data.current.value == 'withdraw_society_money' then

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'withdraw_society_money_amount_' .. family, {
				title = _U('withdraw_amount')
			}, function(data, menu)

				local amount = tonumber(data.value)

				if amount == nil then
					ESX.ShowNotification(_U('invalid_amount'))
				else
					menu.close()
					TriggerServerEvent('irrp_families:withdrawMoney', family, amount)
				end

			end, function(data, menu)
				menu.close()
			end)

		elseif data.current.value == 'deposit_money' then

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'deposit_money_amount_' .. family, {
				title = _U('deposit_amount')
			}, function(data, menu)

				local amount = tonumber(data.value)

				if amount == nil then
					ESX.ShowNotification(_U('invalid_amount'))
				else
					menu.close()
					TriggerServerEvent('irrp_families:depositMoney', family, amount)
				end

			end, function(data, menu)
				menu.close()
			end)

		elseif data.current.value == 'wash_money' then

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'wash_money_amount_' .. family, {
				title = _U('wash_money_amount')
			}, function(data, menu)

				local amount = tonumber(data.value)

				if amount == nil then
					ESX.ShowNotification(_U('invalid_amount'))
				else
					menu.close()
					TriggerServerEvent('irrp_families:washMoney', family, amount)
				end

			end, function(data, menu)
				menu.close()
			end)

		elseif data.current.value == 'manage_employees' then
			OpenManageEmployeesMenu(family)
		elseif data.current.value == 'manage_grades' then
			OpenManageGradesMenu(family)
		end

	end, function(data, menu)
		if close then
			close(data, menu)
		end
	end)

end

function OpenManageEmployeesMenu(family)

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'manage_employees_' .. family, {
		title    = _U('employee_management'),
		align    = 'top-left',
		elements = {
			{label = _U('employee_list'), value = 'employee_list'},
			{label = _U('recruit'),       value = 'recruit'}
		}
	}, function(data, menu)

		if data.current.value == 'employee_list' then
			OpenEmployeeList(family)
		end

		if data.current.value == 'recruit' then
			OpenRecruitMenu(family)
		end

	end, function(data, menu)
		menu.close()
	end)
end

function OpenEmployeeList(family)

	ESX.TriggerServerCallback('irrp_families:getEmployees', function(employees)

		local elements = {
			head = {_U('employee'), _U('grade'), _U('actions')},
			rows = {}
		}

		for i=1, #employees, 1 do
			local gradeLabel = (employees[i].family.grade_label == '' and employees[i].family.label or employees[i].family.grade_label)

			table.insert(elements.rows, {
				data = employees[i],
				cols = {
					employees[i].name,
					gradeLabel,
					'{{' .. _U('promote') .. '|promote}} {{' .. _U('fire') .. '|fire}}'
				}
			})
		end

		ESX.UI.Menu.Open('list', GetCurrentResourceName(), 'employee_list_' .. family, elements, function(data, menu)
			local employee = data.data

			if data.value == 'promote' then
				menu.close()
				OpenPromoteMenu(family, employee)
			elseif data.value == 'fire' then
				ESX.ShowNotification(_U('you_have_fired', employee.name))

				ESX.TriggerServerCallback('irrp_families:setFamily', function()
					OpenEmployeeList(family)
				end, employee.identifier, 'nofamily', 0, 'fire')
			end
		end, function(data, menu)
			menu.close()
			OpenManageEmployeesMenu(family)
		end)

	end, family)

end

function OpenRecruitMenu(family)

	ESX.TriggerServerCallback('irrp_families:getOnlinePlayers', function(players)

		local elements = {}

		for i=1, #players, 1 do
			if players[i].family.name ~= family then
				table.insert(elements, {
					label = players[i].name,
					value = players[i].source,
					name = players[i].name,
					identifier = players[i].identifier
				})
			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'recruit_' .. family, {
			title    = _U('recruiting'),
			align    = 'top-left',
			elements = elements
		}, function(data, menu)

			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'recruit_confirm_' .. family, {
				title    = _U('do_you_want_to_recruit', data.current.name),
				align    = 'top-left',
				elements = {
					{label = _U('no'),  value = 'no'},
					{label = _U('yes'), value = 'yes'}
				}
			}, function(data2, menu2)
				menu2.close()

				if data2.current.value == 'yes' then
					ESX.ShowNotification(_U('you_have_hired', data.current.name))

					ESX.TriggerServerCallback('irrp_families:setFamily', function()
						OpenRecruitMenu(family)
					end, data.current.identifier, family, 0, 'hire')
				end
			end, function(data2, menu2)
				menu2.close()
			end)

		end, function(data, menu)
			menu.close()
		end)

	end)

end

function OpenPromoteMenu(familyname, employee)

	ESX.TriggerServerCallback('irrp_families:getFamily', function(family)

		local elements = {}

		for i=1, #family.grades, 1 do
			local gradeLabel = (family.grades[i].label == '' and family.label or family.grades[i].label)

			table.insert(elements, {
				label = gradeLabel,
				value = family.grades[i].grade,
				selected = (employee.family.grade == family.grades[i].grade)
			})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'promote_employee_' .. familyname, {
			title    = _U('promote_employee', employee.name),
			align    = 'top-left',
			elements = elements
		}, function(data, menu)
			menu.close()
			ESX.ShowNotification(_U('you_have_promoted', employee.name, data.current.label))

			ESX.TriggerServerCallback('irrp_families:setFamily', function()
				OpenEmployeeList(familyname)
			end, employee.identifier, family, data.current.value, 'promote')
		end, function(data, menu)
			menu.close()
			OpenEmployeeList(familyname)
		end)

	end, familyname)

end

function OpenManageGradesMenu(familyname)

	ESX.TriggerServerCallback('irrp_families:getFamily', function(family)

		local elements = {}

		for i=1, #family.grades, 1 do
			local gradeLabel = (family.grades[i].label == '' and family.label or family.grades[i].label)

			table.insert(elements, {
				label = ('%s - <span style="color:green;">%s</span>'):format(gradeLabel, _U('money_generic', ESX.Math.GroupDigits(family.grades[i].salary))),
				value = family.grades[i].grade
			})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'manage_grades_' .. family.name, {
			title    = _U('salary_management'),
			align    = 'top-left',
			elements = elements
		}, function(data, menu)

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'manage_grades_amount_' .. family.name, {
				title = _U('salary_amount')
			}, function(data2, menu2)

				local amount = tonumber(data2.value)

				if amount == nil then
					ESX.ShowNotification(_U('invalid_amount'))
				elseif amount > Config.MaxSalary then
					ESX.ShowNotification(_U('invalid_amount_max'))
				else
					menu2.close()

					ESX.TriggerServerCallback('irrp_families:setFamilySalary', function()
						OpenManageGradesMenu(familyname)
					end, family, data.current.value, amount)
				end

			end, function(data2, menu2)
				menu2.close()
			end)

		end, function(data, menu)
			menu.close()
		end)

	end, familyname)

end

AddEventHandler('irrp_families:openBossMenu', function(family, close, options)
	OpenBossMenu(family, close, options)
end)

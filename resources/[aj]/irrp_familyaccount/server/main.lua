ESX                  = nil
local AccountsIndex  = {}
local FamilyAccounts = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

MySQL.ready(function()
	local result = MySQL.Sync.fetchAll('SELECT * FROM family_account')

	for i=1, #result, 1 do
		local name   = result[i].name
		local shared = result[i].shared

		local result2 = MySQL.Sync.fetchAll('SELECT * FROM family_account_data WHERE family_name = @family_name', {
			['@family_name'] = name
		})

		if shared ~= 0 then
			local money = nil
			local blackmoney = nil

			if #result2 == 0 then
				MySQL.Sync.execute('INSERT INTO family_account_data (family_name, money, black_money, owner) VALUES (@family_name, @money, @black_money, NULL)',
				{
					['@family_name'] 	= name,
					['@money']        	= 0,
					['@black_money']	= 0
				})

				money = 0
			else
				money = result2[1].money
				blackmoney = result2[1].black_money
			end

			local familyAccount   = CreateFamilyAccount(name, nil, money, blackmoney)
			FamilyAccounts[name] = familyAccount
		end
	end
end)

function GetFamilyAccount(name)
	return FamilyAccounts[name]
end

AddEventHandler('irrp_familyaccount:getFamilyAccount', function(name, cb)
	cb(GetFamilyAccount(name))
end)

AddEventHandler('irrp_familyaccount:addFamily', function(familyname)
	family = 'family_' .. string.lower(familyname)
	local familyAccount   = CreateFamilyAccount(family, nil, 0, 0)
	FamilyAccounts[family] = familyAccount
end)

AddEventHandler('irrp_familyaccount:updateFamilyAccount', function(name, cb)

	local result = MySQL.Sync.fetchAll('SELECT * FROM family_account_data WHERE family_name = @family_name', {
		['@family_name'] = name
	})
	
	local money = nil
	local blackmoney = nil
	
	FamilyAccounts[name].money = result[1].money
	FamilyAccounts[name].black_money = result[1].black_money

	
	cb(GetFamilyAccount(name))
end)
ESX                  = nil
local AccountsIndex  = {}
local FamilyAccounts = {}

TriggerEvent('prri_familyaccount:getFamilyBank', function(obj) ESX = obj end)

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

			if #result2 == 0 then
				MySQL.Sync.execute('INSERT INTO family_account_data (family_name, money, owner) VALUES (@family_name, @money, NULL)',
				{
					['@family_name'] = name,
					['@money']        = 0
				})

				money = 0
			else
				money = result2[1].money
			end

			local familyAccount   = CreateFamilyAccount(name, nil, money)
			FamilyAccounts[name] = familyAccount

		end
	end
end)

function GetFamilyAccount(name)
	return FamilyAccounts[name]
end

AddEventHandler('prri_familyaccount:getFamilyAccount', function(name, cb)
	cb(GetFamilyAccount(name))
end)
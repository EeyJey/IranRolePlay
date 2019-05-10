ESX                  = nil
local AccountsIndex  = {}
local Accounts       = {}
local SharedAccounts = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('onMySQLReady', function ()

	local result = MySQL.Sync.fetchAll('SELECT * FROM family_account')

	for i=1, #result, 1 do

		local name   = result[i].name
		local label  = result[i].label	

		local result2 = MySQL.Sync.fetchAll('SELECT * FROM family_account_data WHERE family_name = @family_name', {
			['@family_name'] = name
		})

		local money = nil

		if #result2 == 0 then

			MySQL.Sync.execute('INSERT INTO addon_account_data (family_name, money) VALUES (@family_name, @money)',
			{
				['@family_name'] = name,
				['@money']        = 0
			})

			money = 0

		else
			money = result2[1].money
		end

		local addonAccount   = CreateFamilyAccount(name, nil, money)
		SharedAccounts[name] = addonAccount

	end

end)

function GetSharedAccount(name)
	return SharedAccounts[name]
end	

AddEventHandler('irrp_familyaccount:getSharedAccount', function(name, cb)
	cb(GetSharedAccount(name))
end)

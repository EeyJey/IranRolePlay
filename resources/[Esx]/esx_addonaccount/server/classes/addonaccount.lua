function CreateAddonAccount(name, owner, money)

	local self = {}

	self.name  = name
	self.owner = owner
	self.money = money

	self.addMoney = function(m)

		self.money = self.money + m

		self.save()

		TriggerClientEvent('esx_addonaccount:setMoney', -1,  self.name, self.money)
	end

	self.removeMoney = function(m)
		
		self.money = self.money - m
		
		self.save()
		print('reached here check this shit '..m )
		print('-------------------- Self --------------')
		print(dump(self))

		TriggerClientEvent('esx_addonaccount:setMoney', -1,  self.name, self.money)
	end


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

	self.setMoney = function(m)

		self.money = m

		self.save()
		
		TriggerClientEvent('esx_addonaccount:setMoney', -1,  self.name, self.money)
	end

	self.save = function()

		if self.owner == nil then
			MySQL.Async.execute(
				'UPDATE addon_account_data SET money = @money WHERE account_name = @account_name',
				{
					['@account_name'] = self.name,
					['@money']        = self.money
				}
			)
		else
			MySQL.Async.execute(
				'UPDATE addon_account_data SET money = @money WHERE account_name = @account_name AND owner = @owner',
				{
					['@account_name'] = self.name,
					['@money']        = self.money,
					['@owner']        = self.owner
				}
			)
		end

	end

	return self

end
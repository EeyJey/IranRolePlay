function CreateFamilyAccount(name, owner, money)
	local self = {}

	self.name  = name
	self.owner = owner
	self.money = money

	self.addMoney = function(m)
		self.money = self.money + m

		self.save()

		TriggerClientEvent('irrp_familiesprop:setMoney', self.name, self.money)
	end

	self.removeMoney = function(m)
		self.money = self.money - m

		self.save()

		TriggerClientEvent('irrp_familiesprop:setMoney', self.name, self.money)
	end

	self.setMoney = function(m)
		self.money = m

		self.save()

		TriggerClientEvent('irrp_familiesprop:setMoney', -1, self.name, self.money)
	end

	self.save = function()
		if self.owner == nil then
			MySQL.Async.execute('UPDATE family_account_data SET money = @money WHERE family_name = @family_name',
			{
				['@family_name'] = self.name,
				['@money']        = self.money
			})
		end
	end

	return self
end
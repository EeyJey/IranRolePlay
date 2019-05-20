function CreateFamilyAccount(name, owner, money, blackmoney)
	local self = {}

	self.name  = name
	self.owner = owner
	self.money = money
	self.black_money = blackmoney

	self.addMoney = function(m)
		self.money = self.money + m

		self.save()

		TriggerClientEvent('irrp_familiesprop:setMoney', self.name, self.money)
	end

	self.addBlackMoney = function(m)
		self.black_money = self.black_money + m

		self.save()

		TriggerClientEvent('irrp_familiesprop:setMoney', self.name, self.black_money)
	end

	self.removeMoney = function(m)
		self.money = self.money - m

		self.save()

		TriggerClientEvent('irrp_familiesprop:setMoney', self.name, self.money)
	end

	self.removeBlackMoney = function(m)
		self.black_money = self.black_money - m

		self.save()

		TriggerClientEvent('irrp_familiesprop:setMoney', self.name, self.black_money)
	end

	self.setMoney = function(m)
		self.money = m

		self.save()

		TriggerClientEvent('irrp_familiesprop:setMoney', -1, self.name, self.money)
	end

	self.setBlackMoney = function(m)
		self.black_money = m

		self.save()

		TriggerClientEvent('irrp_familiesprop:setMoney', -1, self.name, self.black_money)
	end

	self.save = function()
		if self.owner == nil then
			MySQL.Async.execute('UPDATE family_account_data SET money = @money, black_money = @black_money WHERE family_name = @family_name',
			{
				['@family_name']  = self.name,
				['@money']        = self.money,
				['@black_money']  = self.black_money
			})
		end
	end

	return self
end
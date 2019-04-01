RegisterServerEvent('ioh:checkadmin')
AddEventHandler('ioh:checkadmin', function()
	local _source = source
	TriggerEvent('es:getPlayerFromId', _source, function(user)
		print("group", user.getGroup())
		if user.getGroup() == "superadmin" then
			TriggerClientEvent('ioh:isAdmin')
		end
	end)
end)
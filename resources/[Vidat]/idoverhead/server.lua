RegisterServerEvent('ioh:checkadmin')
AddEventHandler('ioh:checkadmin', function(source)
	local _source = source
	TriggerEvent('es:getPlayerFromId', _source, function(user)
		if user.getGroup() == "superadmin" then
			TriggerClientEvent('ioh:isAdmin')
		end
	end)
end)
--[[

  ESX RP Chat

--]]
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height']
		}
	else
		return nil
	end
end

	AddEventHandler('chatMessage', function(source, name, message)
			if string.sub(message, 1, string.len("/")) ~= "/" then
					local name = getIdentity(source)
		TriggerClientEvent("sendProximityMessage", -1, source, name.firstname, message)
			end
			CancelEvent()
	end)

	TriggerEvent('es:addCommand', 'ooc', function(source, args, user)
		local name =  GetPlayerName(source)
			TriggerClientEvent("sendProximityMessageMe", -1, source, "OOC | " .. name, table.concat(args, " "))
	end)

	TriggerEvent('es:addCommand', 'b', function(source, args, user)
		local name =  GetPlayerName(source)
		TriggerClientEvent("sendProximityMessageMe", -1, source, "OOC | " .. name, table.concat(args, " "))
	end)

	TriggerEvent('es:addCommand', 'do', function(source, args, user)
		local name = getIdentity(source)
		TriggerClientEvent("sendProximityMessageDo", -1, source, name.firstname, table.concat(args, " "))
	end)

	TriggerEvent('es:addCommand', 'tabligh', function(source, args, user)
		local xPlayer = ESX.GetPlayerFromId(source)
		if xPlayer.getMoney() >= 1000 then
			xPlayer.removeMoney(1000)
			TriggerClientEvent("pNotify:SendNotification", source, {text = "مالیات توییت 1000$ کم شد", type = "success", timeout = 3000, layout = "bottomCenter"})
			local name = getIdentity(source)
			TriggerClientEvent('chatMessage', -1, "[Tablighat] @" .. name.lastname .. "", {30, 144, 255}, table.concat(args, " "))
		else
			TriggerClientEvent("pNotify:SendNotification", source, {text = "پول کافی برای توییت ندارید، هزینه 1000$ ناقابل", type = "error", timeout = 3000, layout = "bottomCenter"})
		end
	end, {help = 'ye tablighat befres [Faqat tabliq job]'})

	-- TriggerEvent('es:addCommand', 'b', function(source, args, user)
	-- 	-- local name = getIdentity(source)
	-- 	TriggerClientEvent('chatMessage', -1, "OOC | " .. GetPlayerName(source) .. ": ", {200, 200, 200}, table.concat(args, " "))
	-- end, {help = 'Out Of Character message'})

	-- TriggerEvent('es:addCommand', 'ooc', function(source, args, user)
	-- 	-- local name = getIdentity(source)
	-- 	TriggerClientEvent('chatMessage', -1, "OOC | " .. GetPlayerName(source) .. ": ", {200, 200, 200}, table.concat(args, " "))
	-- end, {help = 'Out Of Character message'})

function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end


function tablelength(T)
	local count = 0
	for _ in pairs(T) do count = count + 1 end
	return count
end

function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			firstname = identity['firstname'],
		}
	else
		return nil
	end
end

TriggerEvent('es:addCommand', 'tas', function(source, args, user)
	local lngth = tablelength(args)
	if(lngth ~= 1) then
		TriggerEvent('tas:error', source, "/tas (tedad)")
		return
	end
	-- if(~is_int(args[1])) then
	-- 	return
	-- end

	
	local count = tonumber(args[1])
	if( count >= 5) then
		TriggerEvent('tas:error', source, "kheyli ziad shod")
		return
	end
	
	local name = getIdentity(source)

	local text = math.random(1,6)
	for i = 2,count do
        text = text .. ', ' .. math.random(1,6)
	end
	TriggerClientEvent("sendRollThatShit", source)
	TriggerClientEvent("sendTasMessage", -1, source, "^1Tas(^3" ..name.firstname.. "^1)", text)
end)

AddEventHandler('tas:error', function(source, message)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1Tas', message } } )
end)
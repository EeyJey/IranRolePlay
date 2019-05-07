
RegisterCommand('mystatus', function(source, args, raw)
    print(args[0])
    -- for netid, data in pairs(names) do
    --     local guid = GetPlayerIdentifiers(netid)

    --     if guid and guid[1] and data then
    --         local ping = GetPlayerPing(netid)

    --         RconPrint(netid .. '\t' .. guid[1] .. '\t' .. data.name .. '\t' .. GetPlayerEP(netid) .. '\t' .. ping .. "\n")
    --     end
    -- end

    -- CancelEvent()
end, true)



RegisterCommand('myrole', function(source, args, raw)
	local player = tonumber(args[1])
	local role = table.concat(args, " ", 2)
	if args[1] then
		if (player and GetPlayerName(player)) then
			if args[2] then
				TriggerEvent("es:getPlayerFromId", player, function(user)
					user.giveRole(role)
					TriggerClientEvent('chat:addMessage', user.get('source'), {
						args = {"^1SYSTEM", "You've been given a role: ^2" .. role}
					})
				end)
			else
				RconPrint("Usage: giverole [user-id] [role]\n")
			end
		else
			RconPrint("Player not ingame\n")
		end
	else
		RconPrint("Usage: giverole [user-id] [role]\n")
	end
end, true)
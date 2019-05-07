
AddEventHandler('rconCommand', function(commandName, args)
    if commandName == 'mystatus' then
        for netid, data in pairs(names) do
            local guid = GetPlayerIdentifiers(netid)

            if guid and guid[1] and data then
                local ping = GetPlayerPing(netid)

                RconPrint(netid .. '\t' .. guid[1] .. '\t' .. data.name .. '\t' .. GetPlayerEP(netid) .. '\t' .. ping .. "\n")
            end
        end

        CancelEvent()
    end
end)

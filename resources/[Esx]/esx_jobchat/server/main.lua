ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function GetCharacterName(source)
    local result = MySQL.Sync.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifiers(source)[1]
    })

    if result[1] and result[1].firstname and result[1].lastname then
        return ('%s %s'):format(result[1].firstname, result[1].lastname)
    else
        return GetPlayerName(source)
    end
end


AddEventHandler('chatMessage', function(source, name, msg)
    sm = stringsplit(msg, " ");
    if sm[1] == "/r" then
        CancelEvent()

        xPlayer = ESX.GetPlayerFromId(source)
        job = string.lower(xPlayer.job.name)
        playerCoords = GetEntityCoords()


        characterName = GetCharacterName(source);
        if characterName ~= nil then name = characterName end



        if job == "police" then
            
            str = xPlayer.job.grade_label
            jobGrade = str:gsub("^%l", string.upper)

            local xPlayers = ESX.GetPlayers()
            for i=1, #xPlayers, 1 do
                local xP = ESX.GetPlayerFromId(xPlayers[i])
                xPJob = string.lower(xP.job.name)
				if xPJob ~= 'police' then
				TriggerClientEvent("sendProximityMessage", xPlayers[i], source, "^4[^2^*Radio^4] ^3" .. name.." ^8^*: ^r", "^0^* " .. string.sub(msg,4), { 0, 0, 255 }) end

                if xPJob == 'police' then
                    TriggerClientEvent('chat:addMessage', xPlayers[i], {
                      color = { 255, 0, 0},
                      multiline = true,
                        args = {"^4[^2^*Radio ^4| ^1^*".. jobGrade .. "^4] ^3" .. name.." ^8^*^~>>^r" .. "^0^* " .. string.sub(msg,4)}
                    })
                end
            end
        elseif job == "ambulance" then
            
            str = xPlayer.job.grade_label
            jobGrade = str:gsub("^%l", string.upper)

            local xPlayers = ESX.GetPlayers()
            for i=1, #xPlayers, 1 do
                local xP = ESX.GetPlayerFromId(xPlayers[i])
                xPJob = string.lower(xP.job.name)
				if xPJob ~= 'ambulance' then
				TriggerClientEvent("sendProximityMessage", xPlayers[i], source, "^4[^2^*Radio^4] ^3" .. name.." ^8^*: ^r", "^0^* " .. string.sub(msg,4), { 0, 0, 255 }) end

                if xPJob == 'ambulance' then
                    TriggerClientEvent('chat:addMessage', xPlayers[i], {
                      color = { 255, 0, 0},
                      multiline = true,
                        args = {"^4[^2^*Radio ^4| ^1^*".. jobGrade .. "^4] ^3" .. name.." ^8^*^~>>^r" .. "^0^* " .. string.sub(msg,4)}
                    })
                end
            end
        elseif job == "mecano" then
            
            str = xPlayer.job.grade_label
            jobGrade = str:gsub("^%l", string.upper)

            local xPlayers = ESX.GetPlayers()
            for i=1, #xPlayers, 1 do
                local xP = ESX.GetPlayerFromId(xPlayers[i])
                xPJob = string.lower(xP.job.name)
				if xPJob ~= 'mecano' then
				TriggerClientEvent("sendProximityMessage", xPlayers[i], source, "^4[^2^*Radio^4] ^3" .. name.." ^8^*: ^r", "^0^* " .. string.sub(msg,4), { 0, 0, 255 }) end

                if xPJob == 'mecano' then
                    TriggerClientEvent('chat:addMessage', xPlayers[i], {
                      color = { 255, 0, 0},
                      multiline = true,
                        args = {"^4[^2^*Radio ^4| ^1^*".. jobGrade .. "^4] ^3" .. name.." ^8^*^~>>^r" .. "^0^* " .. string.sub(msg,4)}
                    })
                end
            end
        end
    elseif sm[1] == "/f" then
        CancelEvent()

        xPlayer = ESX.GetPlayerFromId(source)
        job = string.lower(xPlayer.job.name)

        if job == "police" or job == "offpolice" then

            str = xPlayer.job.grade_label
            jobGrade = str:gsub("^%l", string.upper)

            local xPlayers = ESX.GetPlayers()
            for i=1, #xPlayers, 1 do
                local xP = ESX.GetPlayerFromId(xPlayers[i])
                xPJob = string.lower(xP.job.name)

                if xPJob == 'police' then
                    TriggerClientEvent('chat:addMessage', xPlayers[i], {
                        color = { 255, 0, 0},
                        multiline = true,
                        args = {"^4[^2^*On-Duty ^4| ^1^*".. jobGrade .. "^4]: ^3" .. name .. " ^4(( " .. "^0^*" .. string.sub(msg,4) .. "^4 ))"}
                    })
				elseif xPJob == 'offpolice' then
					TriggerClientEvent('chat:addMessage', xPlayers[i], {
                        color = { 255, 0, 0},
                        multiline = true,
                        args = {"^4[^2^*Off-Duty ^4| ^1^*".. jobGrade .. "^4]: ^3" .. name .. " ^4(( " .. "^0^*" .. string.sub(msg,4) .. "^4 ))"}
                    })
                end
            end
		elseif job == "ambulance" or job == 'offambulance' then
            str = xPlayer.job.grade_label
            jobGrade = str:gsub("^%l", string.upper)

            local xPlayers = ESX.GetPlayers()
            for i=1, #xPlayers, 1 do
                local xP = ESX.GetPlayerFromId(xPlayers[i])
                xPJob = string.lower(xP.job.name)

                if xPJob == 'ambulance' then
                    TriggerClientEvent('chat:addMessage', xPlayers[i], {
                        color = { 255, 0, 0},
                        multiline = true,
                        args = {"^4[^2^*On-Duty ^4| ^1^*".. jobGrade .. "^4]: ^3" .. name .. " ^4(( " .. "^0^*" .. string.sub(msg,4) .. "^4 ))"}
                    })
				elseif xPJob == 'offambulance' then
					TriggerClientEvent('chat:addMessage', xPlayers[i], {
                        color = { 255, 0, 0},
                        multiline = true,
                        args = {"^4[^2^*Off-Duty ^4| ^1^*".. jobGrade .. "^4]: ^3" .. name .. " ^4(( " .. "^0^*" .. string.sub(msg,4) .. "^4 ))"}
                    })
                end
            end
		elseif job == "mecano" then
            str = xPlayer.job.grade_label
            jobGrade = str:gsub("^%l", string.upper)

            local xPlayers = ESX.GetPlayers()
            for i=1, #xPlayers, 1 do
                local xP = ESX.GetPlayerFromId(xPlayers[i])
                xPJob = string.lower(xP.job.name)

                if xPJob == 'mecano' then
                    TriggerClientEvent('chat:addMessage', xPlayers[i], {
                        color = { 255, 0, 0},
                        multiline = true,
                        args = {"^4[^2^*Faction Chat ^4| ^1^*".. jobGrade .. "^4]: ^3" .. name .. " ^4(( " .. "^0^*" .. string.sub(msg,4) .. "^4 ))"}
                    })
                end
            end
        end
		
    elseif sm[1] == "/dep" then
        CancelEvent()

        xPlayer = ESX.GetPlayerFromId(source)
        job = string.lower(xPlayer.job.name)
        playerCoords = GetEntityCoords()
		jobs = xPlayer.job.name:gsub("^%l", string.upper)

        characterName = GetCharacterName(source);
        if characterName ~= nil then name = characterName end


        if job == "police" or job == "ambulance" or job == "mecano" then
            
            str = xPlayer.job.grade_label
            jobGrade = str:gsub("^%l", string.upper)

            local xPlayers = ESX.GetPlayers()
            for i=1, #xPlayers, 1 do
                local xP = ESX.GetPlayerFromId(xPlayers[i])
                xPJob = string.lower(xP.job.name)
				if xPJob ~= 'police' and xPJob ~='ambulance' and xPJob ~= 'mecano' then
				TriggerClientEvent("sendProximityMessage", xPlayers[i], source, "^4[^2^*Radio^4] ^3" .. name.." ^8^*: ^r", "^0^* " .. string.sub(msg,6), { 0, 0, 255 })

                elseif xPJob == 'police' then
                    TriggerClientEvent('chat:addMessage', xPlayers[i], {
                      color = { 255, 0, 0},
                      multiline = true,
                        args = {"^4[^2^*Department ^4| ^1^*".. jobs .. "^4] ^3" .. name.." ^8^*:^r" .. "^0^* " .. string.sub(msg,6)}
                    })
				elseif xPJob == 'mecano' then
                    TriggerClientEvent('chat:addMessage', xPlayers[i], {
                      color = { 255, 0, 0},
                      multiline = true,
                        args = {"^4[^2^*Department ^4| ^1^*".. jobs .. "^4] ^3" .. name.." ^8^*:^r" .. "^0^* " .. string.sub(msg,6)}
                    })
				elseif xPJob == 'ambulance' then
					TriggerClientEvent('chat:addMessage', xPlayers[i], {
                      color = { 255, 0, 0},
                      multiline = true,
                        args = {"^4[^2^*Department ^4| ^1^*".. jobs .. "^4] ^3" .. name.." ^8^*:^r" .. "^0^* " .. string.sub(msg,6)}
                    })
                end
            end
        end

    elseif sm[1] == "/news" then
        CancelEvent()

        xPlayer = ESX.GetPlayerFromId(source)
        job = string.lower(xPlayer.job.name)


        str = xPlayer.job.grade_label
        jobGrade = str:gsub("^%l", string.upper)

        local xPlayers = ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xP = ESX.GetPlayerFromId(xPlayers[i])
            xPJob = string.lower(xP.job.name)
            if xPJob == 'journaliste' then
                TriggerClientEvent('chat:addMessage', xPlayers[i], {
                    color = { 255, 0, 0},
                    multiline = true,
                    args = {"^4[^2 NEWS ^4]: ^3" .. name .. ": ^4 " .. "^0^*" .. string.sub(msg,6) .. "^4 "}
                })
            elseif xPJob ~= 'journaliste' then
                TriggerClientEvent('esx:showNotification', source, '^4[^2 NEWS ^4]: ^3Payame Shoma daryaft shod! Lotfan mokhtasate khod ra az tarighe SMS ersal konid!')
            end
        end
    end
end)

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
function message(text)
    TriggerEvent("chatMessage", "[Server]", {255, 47, 47}, "^0" .. text)
end 
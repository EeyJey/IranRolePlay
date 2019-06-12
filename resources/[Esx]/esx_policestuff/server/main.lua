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


        if job ~= "police" then
           message("Shoma police ya onduty nistid.")
        else
            
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
        end
    elseif sm[1] == "/f" then
        CancelEvent()

        xPlayer = ESX.GetPlayerFromId(source)
        job = string.lower(xPlayer.job.name)

        if job ~= "police" and job ~= "offpolice" then
            message("Shoma police nistid.")
        else
            str = xPlayer.job.grade_label
            jobGrade = str:gsub("^%l", string.upper)

            local xPlayers = ESX.GetPlayers()
            for i=1, #xPlayers, 1 do
                local xP = ESX.GetPlayerFromId(xPlayers[i])
                xPJob = string.lower(xP.job.name)

                if xPJob == 'police' or xPJob == 'offpolice' then
                    TriggerClientEvent('chat:addMessage', xPlayers[i], {
                        color = { 255, 0, 0},
                        multiline = true,
                        args = {"^4[^2^*Faction ^4| ^1^*".. jobGrade .. "^4]: ^3" .. name .. " ^4(( " .. "^0^*" .. string.sub(msg,4) .. "^4 ))"}
                    })
                end
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
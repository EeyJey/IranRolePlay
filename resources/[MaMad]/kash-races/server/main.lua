ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local Races = {}
RegisterServerEvent('kash-races:NewRace')
AddEventHandler('kash-races:NewRace', function(RaceTable)
    local src = source
    local RaceId = math.random(1000, 9999)
    local xPlayer = ESX.GetPlayerFromId(src)
    Races[RaceId] = RaceTable
    Races[RaceId].creator = GetPlayerIdentifiers(src)[1]
    table.insert(Races[RaceId].joined, GetPlayerIdentifiers(src)[1])
    if xPlayer.removeMoney(Races[RaceId].amount) then
        TriggerClientEvent('kash-races:SetRace', -1, Races)
        TriggerClientEvent('kash-races:SetRaceId', src, RaceId)
        TriggerClientEvent('esx:showNotification', src, "You've joined a race for ~g~$"..Races[RaceId].amount)
    end
end)

RegisterServerEvent('kash-races:RaceWon')
AddEventHandler('kash-races:RaceWon', function(RaceId)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    xPlayer.addMoney(Races[RaceId].pot)
    TriggerClientEvent('esx:showNotification', src, "You won the race and got ~g~$"..Races[RaceId].pot.."~w~!")
    TriggerClientEvent('kash-races:SetRace', -1, Races)
    TriggerClientEvent('kash-races:RaceDone', -1, RaceId, GetPlayerName(src))
end)

RegisterServerEvent('kash-races:JoinRace')
AddEventHandler('kash-races:JoinRace', function(RaceId)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local zPlayer = ESX.GetPlayerFromIdentifier(Races[RaceId].creator)
    if zPlayer ~= nil then
        if xPlayer.getMoney() >= Races[RaceId].amount then
            Races[RaceId].pot = Races[RaceId].pot + Races[RaceId].amount
            table.insert(Races[RaceId].joined, GetPlayerIdentifiers(src)[1])
            if xPlayer.removeMoney(Races[RaceId].amount) then
                TriggerClientEvent('kash-races:SetRace', -1, Races)
                TriggerClientEvent('kash-races:SetRaceId', src, RaceId)
                TriggerClientEvent('esx:showNotification', "~b~"..zPlayer.source, GetPlayerName(src).."~w~ joined the race!")
            end
        else
            TriggerClientEvent('esx:showNotification', src, "~r~Not enough money!")
        end
    else
        TriggerClientEvent('esx:showNotification', src, "~r~Creator of the race is offline!")
        Races[RaceId] = {}
    end
end)

TriggerEvent('es:addCommand', 'race', function(source, args, user)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local amount = tonumber(args[1])
    if GetJoinedRace(GetPlayerIdentifiers(src)[1]) == 0 then
        if xPlayer.getMoney() >= amount then
            TriggerClientEvent('kash-races:CreateRace', src, amount)
        else
            TriggerClientEvent('esx:showNotification', src, "~r~Not enough cash!")
        end
    else
        TriggerClientEvent('esx:showNotification', src, "You're already in a race!")
    end
    
end, {help = "Start a race!", params = {{name = "amount", help = "Cash amount"}}})

TriggerEvent('es:addCommand', 'stoprace', function(source, args, user)
    local src = source
    CancelRace(src)
end, {help = "Stop your created race"})

TriggerEvent('es:addCommand', 'quitrace', function(source, args, user)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local RaceId = GetJoinedRace(GetPlayerIdentifiers(src)[1])
    local zPlayer = ESX.GetPlayerFromIdentifier(Races[RaceId].creator)
    if RaceId ~= 0 then
        if GetCreatedRace(GetPlayerIdentifiers(src)[1]) ~= RaceId then
            RemoveFromRace(GetPlayerIdentifiers(src)[1])
            xPlayer.addMoney(Races[RaceId].amount)
            TriggerClientEvent('esx:showNotification', src, "You've left the race!")
            TriggerClientEvent('esx:showNotification', "~b~"..zPlayer.source, GetPlayerName(src) .."~w~ left the race!")
        else
            TriggerClientEvent('esx:showNotification', src, "/stoprace to quit the race")
        end
    else
        TriggerClientEvent('esx:showNotification', src, "~r~You're not in a race!")
    end
end, {help = "Opt out of a race"})

TriggerEvent('es:addCommand', 'startrace', function(source, args, user)
    local src = source
    local RaceId = GetCreatedRace(GetPlayerIdentifiers(src)[1])
    if RaceId ~= 0 then
        Races[RaceId].started = true
        TriggerClientEvent('kash-races:SetRace', -1, Races)
        TriggerClientEvent("kash-races:StartRace", -1, RaceId)
    else
        TriggerClientEvent('esx:showNotification', src, "~g~You've started the race!")
    end
end, {help = "Start the race!"})

function CancelRace(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    for key, race in pairs(Races) do
        if Races[key] ~= nil and Races[key].creator == xPlayer.identifier and not Races[key].started then
            for _, iden in pairs(Races[key].joined) do
                local xdPlayer = ESX.GetPlayerFromIdentifier(iden)
                xdPlayer.addMoney(Races[key].amount)
                TriggerClientEvent('esx:showNotification', xdPlayer.source, "Race stopped, you've received ~g~$"..Races[key].amount.."~w~ back!")
                TriggerClientEvent('kash-races:StopRace', xdPlayer.source)
				RemoveFromRace(iden)
            end
            TriggerClientEvent('esx:showNotification', source, "~r~Race stopped!")
			Races[key] = nil
        end
    end
    TriggerClientEvent('kash-races:SetRace', -1, Races)
end

function RemoveFromRace(identifier)
    for key, race in pairs(Races) do
        if Races[key] ~= nil and not Races[key].started then
            for i, iden in pairs(Races[key].joined) do
                if iden == identifier then
                    table.remove(Races[key].joined, i)
                end
            end
        end
    end
end

function GetJoinedRace(identifier)
    for key, race in pairs(Races) do
        if Races[key] ~= nil and not Races[key].started then
            for _, iden in pairs(Races[key].joined) do
                if iden == identifier then
                    return key
                end
            end
        end
    end
    return 0
end

function GetCreatedRace(identifier)
    for key, race in pairs(Races) do
        if Races[key] ~= nil and Races[key].creator == identifier and not Races[key].started then
            return key
        end
    end
    return 0
end

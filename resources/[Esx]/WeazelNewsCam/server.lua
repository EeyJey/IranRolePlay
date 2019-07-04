esx = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("cam", function(source, args, raw)
    xPlayer = ESX.GetPlayerFromId(source)
    job = string.lower(xPlayer.job.name)
    if characterName ~= nil then name = characterName end
    if job == "journaliste" then
        local src = source
        TriggerClientEvent("Cam:ToggleCam", src)
    else
        TriggerClientEvent('chat:addMessage', source, {
            color = { 255, 0, 0},
            multiline = true,
              args = {"Shoma khabarnegar nistid!"}
          })
    end
end)

RegisterCommand("bmic", function(source, args, raw)
        
    xPlayer = ESX.GetPlayerFromId(source)
    job = string.lower(xPlayer.job.name)
    if characterName ~= nil then name = characterName end
    if job == "journaliste" then
        local src = source
        TriggerClientEvent("Mic:ToggleBMic", src)
    else
        TriggerClientEvent('chat:addMessage', source, {
            color = { 255, 0, 0},
            multiline = true,
              args = {"Shoma khabarnegar nistid!"}
          })
    end
end)

RegisterCommand("mic", function(source, args, raw)
    xPlayer = ESX.GetPlayerFromId(source)
    job = string.lower(xPlayer.job.name)
    if characterName ~= nil then name = characterName end
    if job == "journaliste" then
        local src = source
    TriggerClientEvent("Mic:ToggleMic", src)
    else
        TriggerClientEvent('chat:addMessage', source, {
            color = { 255, 0, 0},
            multiline = true,
              args = {"Shoma khabarnegar nistid!"}
          })
    end
    
end)

--ESX.RegisterServerCallback("WeazelNewsCam:retrieveJob", function(source)

	--local src = source

	--local xPlayer = ESX.GetPlayerFromId(src)
	--local Identifier = xPlayer.identifier

--	MySQL.Async.fetchAll("SELECT job FROM users WHERE identifier = @identifier", { ["@identifier"] = Identifier }, function(result)

  --      job = result[1].job 
        

--	end)
--end)
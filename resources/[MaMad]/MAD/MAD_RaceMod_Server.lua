local JRM = MAD.RaceMod

ESX.RegisterServerCallback('MAD_RaceMod:SetupRace', function(source, cb, racePos, blipCoord, raceID, wager) 
	JRM.Races = JRM.Races or {}
	JRM.Races.raceID = { 
		start = racePos,
		finish = blipCoord,
		wager = wager,
		players = { source, },
		finished = {},
	}	

	TriggerClientEvent('MAD_RaceMod:ChallengeNearbyPlayers', -1, racePos, raceID, wager)

	local timer = GetGameTimer()
	while (GetGameTimer() - timer) < (JRM.WaitForPlayersTimer * 1000) do Citizen.Wait(0); end
	if JRM.Races.raceID and JRM.Races.raceID.players then cbData = #JRM.Races.raceID.players else cbData = 0; end
	cb(cbData)
end)

RegisterNetEvent('MAD_RaceMod:JoinRace')
AddEventHandler('MAD_RaceMod:JoinRace', function(raceID) 
	if JRM.Races and JRM.Races.raceID and JRM.Races.raceID.players then
		local plys = JRM.Races.raceID.players
		local isAdded = false
		for k,v in pairs(plys) do
			if v == source then isAdded = true; end
		end
		if not isAdded then 
			table.insert(JRM.Races.raceID.players, source)
			TriggerEvent('MAD_RaceMod:SetMoney', -JRM.Races.raceID.wager) 
		end
	end
end)

RegisterNetEvent('MAD_RaceMod:StartRace')
AddEventHandler('MAD_RaceMod:StartRace', function(raceID) 
	if JRM.Races and JRM.Races.raceID and JRM.Races.raceID.players then
		local race = JRM.Races.raceID
		for k,v in pairs(race.players) do
			TriggerClientEvent('MAD_RaceMod:BeginRace', v, raceID, race.finish)
		end
	end
end)

RegisterNetEvent('MAD_RaceMod:SetMoney')
AddEventHandler('MAD_RaceMod:SetMoney', function(amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	while not xPlayer do Citizen.Wait(0); xPlayer = ESX.GetPlayerFromId(source); end
	local playerMoney = xPlayer.getMoney()
	xPlayer.setMoney(playerMoney + amount)
end)

RegisterNetEvent('MAD_RaceMod:LeaveRace')
AddEventHandler('MAD_RaceMod:LeaveRace', function(raceID)
	if JRM.Races and JRM.Races.raceID then
		for k,v in pairs(JRM.Races.raceID.players) do
			if v == source then
				table.remove(JRM.Races.raceID.players, k)
				return
			end
		end
	end
end)

ESX.RegisterServerCallback('MAD_RaceMod:FinishStreetRace', function(source, cb, raceID)	
	print(JRM.Races.raceID, JRM.Races.raceID.finished)
	table.insert(JRM.Races.raceID.finished, source)
	cb(#JRM.Races.raceID.finished, JRM.Races.raceID.wager, #JRM.Races.raceID.players)
end)

RegisterNetEvent('MAD_RaceMod:RaceTimeout')
AddEventHandler('MAD_RaceMod:RaceTimeout', function(raceID)
	for k,v in pairs(JRM.Races.raceID.players) do
		local doSend = true
		for key,val in pairs(JRM.Races.raceID.finished) do
			if v == val then doSend = false; end
		end
		if doSend then TriggerClientEvent('MAD_RaceMod:Timeout', v); end
	end
	JRM.Races.raceID = {}
end)

--[[local JRM = MAD.RaceMod

ESX.RegisterServerCallback('MAD_RaceMod:SetupStreetRace', function(source, cb, startPos, finPos, wager, raceID) 
	JRM.Races = JRM.Races or {}
	JRM.Races.raceID = {
		start = startPos,
		fin = finPos,
		wager = wager,
		players = { source, },
		finished = {}
	}	

	TriggerClientEvent('MAD_RaceMod:InitializeStreetRace', -1, startPos, finPos, wager, raceID)

	local timer = GetGameTimer()
	while (GetGameTimer() - timer) < (10 * 1000) do
		Citizen.Wait(0)
	end
	
	cb(#JRM.Races.raceID.players)
end)

RegisterNetEvent('MAD_RaceMod:JoinStreetRace')
AddEventHandler('MAD_RaceMod:JoinStreetRace', function(raceID)
	table.insert(JRM.Races.raceID.players, source)
end)

RegisterNetEvent('MAD_RaceMod:StartStreetRace')
AddEventHandler('MAD_RaceMod:StartStreetRace', function(raceID)
	for k,v in pairs(JRM.Races.raceID.players) do
		TriggerClientEvent('MAD_RaceMod:BeginStreetRace', v, raceID)
	end
end)

ESX.RegisterServerCallback('MAD_RaceMod:FinishStreetRace', function(source, cb, raceID)	
	table.insert(JRM.Races.raceID.finished, source)
	cb(#JRM.Races.raceID.finished, JRM.Races.raceID.wager, #JRM.Races.raceID.players)
end)



RegisterNetEvent('MAD_RaceMod:RaceTimeout')
AddEventHandler('MAD_RaceMod:RaceTimeout', function(raceID)
	for k,v in pairs(JRM.Races.raceID.players) do
		local doSend = true
		for key,val in pairs(JRM.Races.raceID.finished) do
			if v == val then doSend = false; end
		end
		if doSend then TriggerClientEvent('MAD_RaceMod:Timeout', v); end
	end
	JRM.Races.raceID = {}
end)

AddEventHandler('playerDropped', function(reason)
	if not JRM.Races then return; end
	for k,v in pairs(JRM.Races) do
		for key,val in pairs(v.players) do
			if val == source then
				print(key,val)
				table.remove(JRM.Races.raceID.players, key)
				local xPlayer = ESX.GetPlayerFromId(source)
				while not xPlayer do Citizen.Wait(0); xPlayer = ESX.GetPlayerFromId(source); end
				local playerMoney = xPlayer.getMoney()
				xPlayer.setMoney(playerMoney + v.wager)
			end
		end		
	end
end)

RegisterNetEvent('MAD_RaceMod:SetMoney')
AddEventHandler('MAD_RaceMod:SetMoney', function(amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	while not xPlayer do Citizen.Wait(0); xPlayer = ESX.GetPlayerFromId(source); end
	local playerMoney = xPlayer.getMoney()
	xPlayer.setMoney(playerMoney + amount)
end)

RegisterNetEvent('MAD_RaceMod:DoStuff')
AddEventHandler('MAD_RaceMod:DoStuff', function()
	TriggerClientEvent('MAD_RaceMod:DoingStuff', -1)
end)--]]
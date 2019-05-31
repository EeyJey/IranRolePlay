local JRM = JAM.RaceMod

ESX.RegisterServerCallback('JAM_RaceMod:SetupRace', function(source, cb, racePos, blipCoord, raceID, wager) 
	JRM.Races = JRM.Races or {}
	JRM.Races.raceID = { 
		start = racePos,
		finish = blipCoord,
		wager = wager,
		players = { source, },
		finished = {},
	}	

	TriggerClientEvent('JAM_RaceMod:ChallengeNearbyPlayers', -1, racePos, raceID, wager)

	local timer = GetGameTimer()
	while (GetGameTimer() - timer) < (JRM.WaitForPlayersTimer * 1000) do Citizen.Wait(0); end
	if JRM.Races.raceID and JRM.Races.raceID.players then cbData = #JRM.Races.raceID.players else cbData = 0; end
	cb(cbData)
end)

RegisterNetEvent('JAM_RaceMod:JoinRace')
AddEventHandler('JAM_RaceMod:JoinRace', function(raceID) 
	if JRM.Races and JRM.Races.raceID and JRM.Races.raceID.players then
		local plys = JRM.Races.raceID.players
		local isAdded = false
		for k,v in pairs(plys) do
			if v == source then isAdded = true; end
		end
		if not isAdded then 
			table.insert(JRM.Races.raceID.players, source)
			TriggerEvent('JAM_RaceMod:SetMoney', -JRM.Races.raceID.wager) 
		end
	end
end)

RegisterNetEvent('JAM_RaceMod:StartRace')
AddEventHandler('JAM_RaceMod:StartRace', function(raceID) 
	if JRM.Races and JRM.Races.raceID and JRM.Races.raceID.players then
		local race = JRM.Races.raceID
		for k,v in pairs(race.players) do
			TriggerClientEvent('JAM_RaceMod:BeginRace', v, raceID, race.finish)
		end
	end
end)

RegisterNetEvent('JAM_RaceMod:SetMoney')
AddEventHandler('JAM_RaceMod:SetMoney', function(amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	while not xPlayer do Citizen.Wait(0); xPlayer = ESX.GetPlayerFromId(source); end
	local playerMoney = xPlayer.getMoney()
	xPlayer.setMoney(playerMoney + amount)
end)

RegisterNetEvent('JAM_RaceMod:LeaveRace')
AddEventHandler('JAM_RaceMod:LeaveRace', function(raceID)
	if JRM.Races and JRM.Races.raceID then
		for k,v in pairs(JRM.Races.raceID.players) do
			if v == source then
				table.remove(JRM.Races.raceID.players, k)
				return
			end
		end
	end
end)

ESX.RegisterServerCallback('JAM_RaceMod:FinishStreetRace', function(source, cb, raceID)	
	print(JRM.Races.raceID, JRM.Races.raceID.finished)
	table.insert(JRM.Races.raceID.finished, source)
	cb(#JRM.Races.raceID.finished, JRM.Races.raceID.wager, #JRM.Races.raceID.players)
end)

RegisterNetEvent('JAM_RaceMod:RaceTimeout')
AddEventHandler('JAM_RaceMod:RaceTimeout', function(raceID)
	for k,v in pairs(JRM.Races.raceID.players) do
		local doSend = true
		for key,val in pairs(JRM.Races.raceID.finished) do
			if v == val then doSend = false; end
		end
		if doSend then TriggerClientEvent('JAM_RaceMod:Timeout', v); end
	end
	JRM.Races.raceID = {}
end)

--[[local JRM = JAM.RaceMod

ESX.RegisterServerCallback('JAM_RaceMod:SetupStreetRace', function(source, cb, startPos, finPos, wager, raceID) 
	JRM.Races = JRM.Races or {}
	JRM.Races.raceID = {
		start = startPos,
		fin = finPos,
		wager = wager,
		players = { source, },
		finished = {}
	}	

	TriggerClientEvent('JAM_RaceMod:InitializeStreetRace', -1, startPos, finPos, wager, raceID)

	local timer = GetGameTimer()
	while (GetGameTimer() - timer) < (10 * 1000) do
		Citizen.Wait(0)
	end
	
	cb(#JRM.Races.raceID.players)
end)

RegisterNetEvent('JAM_RaceMod:JoinStreetRace')
AddEventHandler('JAM_RaceMod:JoinStreetRace', function(raceID)
	table.insert(JRM.Races.raceID.players, source)
end)

RegisterNetEvent('JAM_RaceMod:StartStreetRace')
AddEventHandler('JAM_RaceMod:StartStreetRace', function(raceID)
	for k,v in pairs(JRM.Races.raceID.players) do
		TriggerClientEvent('JAM_RaceMod:BeginStreetRace', v, raceID)
	end
end)

ESX.RegisterServerCallback('JAM_RaceMod:FinishStreetRace', function(source, cb, raceID)	
	table.insert(JRM.Races.raceID.finished, source)
	cb(#JRM.Races.raceID.finished, JRM.Races.raceID.wager, #JRM.Races.raceID.players)
end)



RegisterNetEvent('JAM_RaceMod:RaceTimeout')
AddEventHandler('JAM_RaceMod:RaceTimeout', function(raceID)
	for k,v in pairs(JRM.Races.raceID.players) do
		local doSend = true
		for key,val in pairs(JRM.Races.raceID.finished) do
			if v == val then doSend = false; end
		end
		if doSend then TriggerClientEvent('JAM_RaceMod:Timeout', v); end
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

RegisterNetEvent('JAM_RaceMod:SetMoney')
AddEventHandler('JAM_RaceMod:SetMoney', function(amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	while not xPlayer do Citizen.Wait(0); xPlayer = ESX.GetPlayerFromId(source); end
	local playerMoney = xPlayer.getMoney()
	xPlayer.setMoney(playerMoney + amount)
end)

RegisterNetEvent('JAM_RaceMod:DoStuff')
AddEventHandler('JAM_RaceMod:DoStuff', function()
	TriggerClientEvent('JAM_RaceMod:DoingStuff', -1)
end)--]]
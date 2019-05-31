local JRM = MAD.RaceMod

function JRM:Start()
	if not self then return; end

	while not ESX do Citizen.Wait(100); end
	while not ESX.IsPlayerLoaded() do Citizen.Wait(100); end

	print("MAD_RaceMod:Start() - Succesful")

	self.Started = 1
	self:Update()
end

function JRM:Update()
	while true do
		Citizen.Wait(0)
		if self.RaceFinish then
			local plyId = PlayerId()
			local plyPed = GetPlayerPed(plyId)
			local plyPos = GetEntityCoords(plyPed)
			local grounded,groundZ = GetGroundZFor_3dCoord(self.RaceFinish.x, self.RaceFinish.y, self.RaceFinish.z, groundZ, 0)
			if grounded then 
				local raceFin = vector3(self.RaceFinish.x, self.RaceFinish.y, groundZ)
				local dist = JUtils:GetVecDist(plyPos, raceFin)

				if dist < self.FinishRaceDist then
					self:FinishRace()
				end

				if dist < self.DrawMarkerDist then
					local pos = raceFin
					DrawMarker(5, pos.x, pos.y, pos.z + self.FlagMarkerOffsetZ, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 20.0, 20.0, 255, 255, 255, 100, false, true, 2, false, false, false, false)
					DrawMarker(1, pos.x, pos.y, pos.z + self.GroundMarkerOffsetZ, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 20.0, 20.0, 255, 255, 255, 100, false, true, 2, false, false, false, false)
				end
			end			
		end

		if self.RaceJoinPos then			
			local plyId = PlayerId()
			local plyPed = GetPlayerPed(plyId)
			local plyPos = GetEntityCoords(plyPed)

			if JUtils:GetVecDist(plyPos, self.RaceJoinPos) > self.LeaveDist then

				TriggerServerEvent('MAD_RaceMod:LeaveRace', self.RaceID)
				TriggerServerEvent('MAD_RaceMod:SetMoney', self.RaceWager)

				self.RaceID = false
				self.RaceJoinPos = false
				self.RaceFinish = false		
				self.RaceWager = false

				Citizen.CreateThread(function()
					local tick = 1
					while tick < 10 do 
						Citizen.Wait(0)
						tick = tick + 1

						TriggerEvent('MAD_Notify:ShowNotification', "~r~Shoma mosabeghe ro tark kardi.")
					end
				end)
			elseif JUtils:GetVecDist(plyPos, self.RaceJoinPos) > self.LeaveWarnDist then
				TriggerEvent('MAD_Notify:ShowNotification', "~r~Az makane shoroo kheyli door nasho!")
			end
		end
	end
end

RegisterCommand('showJob', function(source, args)
	if not ESX then return; end
	if not ESX.IsPlayerLoaded() then return; end
	local plyData = ESX.GetPlayerData()
	if plyData and plyData.job and plyData.job.label and plyData.job.grade_label then
		TriggerEvent('MAD_Notify:ShowNotification', "Job : [~g~"..plyData.job.label.."~s~] : Rank : [~g~"..plyData.job.grade_label.."~s~]")
	else 
		TriggerEvent('MAD_Notify:ShowNotification', "Couldn't retrieve job data.")
	end
end)

-- So, if you got this far. You're probably wondering "why is there a 'showjob' command in here?"
-- Interesting question. Somebody was asking for help on how to make this command while I was making
-- this mod. We where laughing about it when, 24 hours after public release, this command was still there.
-- I decided to keep it.

function JRM:SetupRace(wager)
	if not self or not self.Started then return; end

	if wager and wager[1] and type(wager[1]) == "string" then wager = tonumber(wager[1])
	else wager = 0; end

	local plyId = PlayerId()
	local plyPed = GetPlayerPed(plyId)	

	if not IsPedInAnyVehicle(plyPed) then
		TriggerEvent('MAD_Notify:ShowNotification', "~r~You need to be in a vehicle first.")
		return
	end

	local plyPos = GetEntityCoords(plyPed)	
	local plyVeh = GetVehiclePedIsIn(plyPed, true)
	local raceID = math.random(999999, 10000000)

	local blip = GetFirstBlipInfoId(8)
	local blipCoord
	if DoesBlipExist(blip) then
		blipCoord = GetBlipInfoIdCoord(blip)		
	else
		TriggerEvent('MAD_Notify:ShowNotification', "You need to set a ~r~waypoint ~s~first.")
		return
	end	

	if wager > 0 then
		local plyData = ESX.GetPlayerData()
		if plyData.money >= wager then 
			TriggerServerEvent('MAD_RaceMod:SetMoney', -wager)
		else 
			TriggerEvent('MAD_Notify:ShowNotification', "You ~r~don't ~s~have enough ~r~money~s~.")
			return
		end
	end

	JRM.RaceID = raceID
	JRM.RaceWager = wager
	JRM.RaceJoinPos = plyPos
	TriggerEvent('MAD_Notifications:Notify', "Streetrace in progress.", 0, blipCoord, "General", "police")

	Citizen.CreateThread(function()	
		local timer = GetGameTimer()
		while (GetGameTimer() - timer) < (self.WaitForPlayersTimer * 1000) and JRM.RaceJoinPos do	
			Citizen.Wait(0)	
			TriggerEvent('MAD_Notify:ShowNotification', "You have ~g~started ~s~a ~g~streetrace~s~. Challenging nearby players.")
		end
	end)

	Citizen.CreateThread(function()
		ESX.TriggerServerCallback('MAD_RaceMod:SetupRace', function(playersJoined)
			if not JRM.RaceJoinPos then return; end
			if playersJoined > 1 then
				TriggerServerEvent('MAD_RaceMod:StartRace', JRM.RaceID)
			else
				TriggerEvent('MAD_Notify:ShowNotification', "~r~Nobody ~s~joined your race.")
				TriggerServerEvent('MAD_RaceMod:SetMoney', wager)
				JRM.RaceID = false
				JRM.RaceWager = false
				JRM.RaceJoinPos = false
				JRM.FaceFinish = false
			end
		end, plyPos, blipCoord, JRM.RaceID, wager)
	end)
end

RegisterNetEvent('MAD_RaceMod:ChallengeNearbyPlayers')
AddEventHandler('MAD_RaceMod:ChallengeNearbyPlayers', function(racePos, raceID, wager)
	if JRM.RaceID then return; end

	local canJoin = true
	if wager and wager > 0 then
		local plyData = ESX.GetPlayerData()
		if plyData.money < wager then canJoin = false; end
	end

	local plyId = PlayerId()
	local plyPed = GetPlayerPed(plyId)	
	local plyVeh = GetVehiclePedIsIn(plyPed)
	local vehPed = GetPedInVehicleSeat(plyVeh, -1)
	if plyPed ~= vehPed then return; end

	local plyPos = GetEntityCoords(plyPed)	
	local dist = JUtils:GetVecDist(racePos, plyPos) 

	if dist < JRM.JoinDistLimit then
		Citizen.CreateThread(function(...) 
			local timer = GetGameTimer()
			local tick = 0
			local str = ""
			if wager and wager > 0 then str = "Line up your vehicle and press [~g~E~s~] to join the race. Wager: $~g~" .. wager
			else str = "Line up your vehicle and press [~g~E~s~] to join the race."; end
			while (GetGameTimer() - timer) < (JRM.JoinTimeout * 1000) and not JRM.RaceID do
				Citizen.Wait(0)
				if tick % 100 == 0 then 
					TriggerEvent('MAD_Notify:ShowNotification', str)
				end

				if (IsControlJustPressed(1, JUtils.Keys["E"]) or IsDisabledControlJustPressed(1, JUtils.Keys["E"])) then
					if canJoin then
						JRM.RaceID = raceID
						JRM.RaceWager = wager
						JRM.RaceJoinPos = plyPos
						TriggerServerEvent('MAD_RaceMod:SetMoney', -JRM.RaceWager)
						TriggerServerEvent('MAD_RaceMod:JoinRace', JRM.RaceID)
					else timer = 0; end
				end
				tick = tick + 1
			end

			if not JRM.RaceID then 
				if wager > 0 and not canJoin then
					TriggerEvent('MAD_Notify:ShowNotification', "You ~r~don't ~s~have enough ~r~money ~s~to join this race.")
				else
					TriggerEvent('MAD_Notify:ShowNotification', "You ~r~didn't ~s~join the race.")
				end
			else 
				TriggerEvent('MAD_Notify:ShowNotification', "You ~g~joined ~s~the race.")
			end
		end)
	end
end)

RegisterNetEvent('MAD_RaceMod:BeginRace')
AddEventHandler('MAD_RaceMod:BeginRace', function(raceID, blipCoord)
	if not JRM.RaceID or JRM.RaceID ~= raceID then return; end
	Citizen.CreateThread(function() 		
		local timer = GetGameTimer()		
		local plyId = PlayerId()
		local plyPed = GetPlayerPed(plyId)
		local plyPos = GetEntityCoords(plyPed)	
		local plyVeh = GetVehiclePedIsIn(plyPed, true)

		while (GetGameTimer() - timer) < ((JRM.StartTimer - 1) * 1000) and JRM.RaceJoinPos do
			local counter = math.floor(((math.floor((JRM.StartTimer) * 1000)) - (GetGameTimer() - timer)) / 1000)
			local str = "~r~"..counter
			TriggerEvent('MAD_Notify:ShowNotification', "You will be frozen into position in "..str.." seconds~s~. On your marks.")
			Citizen.Wait(10)
		end

		if not JRM.RaceJoinPos then return; end

		FreezeEntityPosition(plyVeh, true)
		SetNewWaypoint(blipCoord.x, blipCoord.y)
		JRM.RaceJoinPos = false

		local timer = GetGameTimer()
		while (GetGameTimer() - timer) < ((JRM.CountdownTimer) * 1000) do
			Citizen.Wait(0)
			local counter = math.floor(((math.floor((JRM.CountdownTimer + 1) * 1000)) - (GetGameTimer() - timer)) / 1000)
			local str
			if counter <= 2.0 then str = "~y~"..counter
			else str = "~r~"..counter; end
			TriggerEvent('MAD_Notify:ShowNotification', "Countdown : "..str, 0.1)
		end	
		Citizen.Wait(0)
		TriggerEvent('MAD_Notify:ShowNotification', "~g~Go!", 1)
		FreezeEntityPosition(plyVeh, false)
		SetNewWaypoint(blipCoord.x, blipCoord.y)
		JRM.RaceFinish = vector3(blipCoord.x, blipCoord.y, 1000.0)
	end)
end)

function JRM:FinishRace()
	local id = self.RaceID

	self.RaceID = false
	self.RaceJoinPos = false
	self.RaceFinish = false		
	self.RaceWager = false

	ESX.TriggerServerCallback('MAD_RaceMod:FinishStreetRace', function(position, wager, players)
		local str = "You finished in position : "
		if position == 1 then
			if wager > 0 then
				local plyData = ESX.GetPlayerData()
				local prize = wager * players
				TriggerServerEvent('MAD_RaceMod:SetMoney', prize)
				str = str .. "[~g~" ..position.. "~s~] : You won : $~g~" ..prize
			else str = str .. "[~g~" ..position.. "~s~]"
			end

			Citizen.CreateThread(function(...)
				local timer = GetGameTimer()
				while (GetGameTimer() - timer) < (self.TimeoutTimer * 1000) do
					Citizen.Wait(0)
				end
				TriggerServerEvent('MAD_RaceMod:RaceTimeout', id)
			end)
		else str = str .. "[~r~" ..position.. "~s~]"
		end

		TriggerEvent('MAD_Notify:ShowNotification', str)
	end, id)
end

RegisterNetEvent('MAD_RaceMod:Timeout')
AddEventHandler('MAD_RaceMod:Timeout', function() 
	if not JRM.RaceID then
		TriggerEvent('MAD_Notify:ShowNotification', "~r~You didn't finish the race.")
		JRM.RaceID = false
		JRM.RaceWager = false
		JRM.RaceJoinPos = false
		JRM.RaceFinish = false
	end
end)
print('AAAAAAAAAAAAAAAAAAAAa')
RegisterCommand('startRace', function(source, args) print('hi');JRM:SetupRace(args); end)
Citizen.CreateThread(function(...) JRM:Start(...); end)

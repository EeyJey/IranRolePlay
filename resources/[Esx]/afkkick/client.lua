-- CONFIG --

-- AFK Kick Time Limit (in seconds)
secondsUntilKick = 1400

-- Warn players if 3/4 of the Time Limit ran up
kickWarning = true
local isClientDead = false
-- CODE --
ESX = nil

Citizen.CreateThread(
	function()
		while ESX == nil do
			TriggerEvent(
				"esx:getSharedObject",
				function(obj)
					ESX = obj
				end
			)
			Citizen.Wait(0)
		end
	end
)
Citizen.CreateThread(function()
	while true do
		Wait(1000)
		
		playerPed = GetPlayerPed(-1)
		if playerPed then
			currentPos = GetEntityCoords(playerPed, true)
			if (currentPos == prevPos) and not isClientDead then
				if time > 0 then
					if kickWarning and time == math.ceil(secondsUntilKick / 4) then
						TriggerEvent("chatMessage", "Tavajoh", {255, 0, 0}, "^1Shoma " .. time .. " saniye dige dar soorat afk mandan kick khahi shod!")
					end

					time = time - 1
				else
					TriggerServerEvent("kickForBeingAnAFKDouchebag")
				end
			else
				time = secondsUntilKick
			end

			prevPos = currentPos
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(60000)
		ESX.TriggerServerCallback('esx_ambulancejob:getDeathStatus', function(isDead)
			isClientDead = isDead
		end)
	end
end)

AddEventHandler('afk:death', function(data)
	OnPlayerDeath()
	TriggerEvent('afk:death')
end)
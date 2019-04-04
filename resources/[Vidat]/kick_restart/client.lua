-- CONFIGURATION--

-- this will kick players after they do a while nothing (in seconds)
Kicktime = 1 --leave on 1 second to make a fast restart, or 0 seconds to make a instant restart.

--Do not edit if you do not know what you do--
--											--
	--			 Decoration <3			--
		--							--
			--					--
				--			--
					--	--
					
--locales in server.lua


					
Citizen.CreateThread(function()
	while true do
		Wait(1000)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			currentPos = GetEntityCoords(playerPed, true)

			if currentPos == prevPos then
				if time > 0 then
					if kickWarning and time == math.ceil(Kicktime / 4) then
						TriggerEvent("chatMessage", "Warning", {255, 0, 0}, "IGNORE THIS " .. time .. " IF YOU DO NO KNOW WHAT YOU DO, PLACEFILLER")
					end

					time = time - 1
				else
					TriggerServerEvent("kickForRestart")
				end
			else
				time = Kicktime
			end

			prevPos = currentPos
		end
	end
end)
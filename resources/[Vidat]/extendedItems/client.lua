IsAnimated = false

RegisterNetEvent('extendeditems:onDrinkEnergy')
AddEventHandler('extendeditems:onDrinkEnergy', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'prop_energy_drink'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2, true, true, true)
			AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 280.0, 175.0, 0.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_intdrink')  
			while not HasAnimDictLoaded('mp_player_intdrink') do
				Citizen.Wait(10)
			end
			TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)
			Citizen.Wait(3000)
			IsAnimated = false
			ClearPedSecondaryTask(playerPed)
			DeleteObject(prop)
			
			Citizen.CreateThread( function()
				local remainingTime = Config.EnergyTime * 10
				while remainingTime > 0 do
						
					print(remainingTime)
					Citizen.Wait(100)
					remainingTime = remainingTime - 1
					RestorePlayerStamina(PlayerId(), 1.0)
				end
			end)
			
		end)
	end
end)

RegisterNetEvent('extendeditems:onDrinkJuice')
AddEventHandler('extendeditems:onDrinkJuice', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'prop_drink_whisky'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2, true, true, true)
			AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 280.0, 175.0, 0.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_intdrink')  
			while not HasAnimDictLoaded('mp_player_intdrink') do
				Citizen.Wait(10)
			end
			TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)
			Citizen.Wait(3000)
			IsAnimated = false
			ClearPedSecondaryTask(playerPed)
			DeleteObject(prop)
			
			health = GetEntityHealth(playerPed)
			if health < 150 and health > 100 then
				SetEntityHealth(playerPed, 150)
			end
			
		end)
	end
end)

RegisterNetEvent('extendeditems:onEatBanana')
AddEventHandler('extendeditems:onEatBanana', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'ng_proc_food_nana1a'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true, true, true)
			AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 180.0, 185.0, -50.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_inteat@burger')
			while not HasAnimDictLoaded('mp_player_inteat@burger') do
				Citizen.Wait(10)
			end
			TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
			Citizen.Wait(3000)
			IsAnimated = false
			ClearPedSecondaryTask(playerPed)
			coords = GetEntityCoords(prop, false)
			DeleteObject(prop)
			
			-- drop = CreateObject(GetHashKey("ng_proc_food_nana2a"), coords,  true, true, true)
			-- ActivatePhysics(drop)
			-- SetDamping(drop, 2, 0.1)
			-- SetEntityVelocity(drop, 1, 0.0, -0.9)
			
		end)
	end
end)

RegisterNetEvent('extendeditems:onEatOrange')
AddEventHandler('extendeditems:onEatOrange', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true, true, true)
			AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 180.0, 185.0, -50.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_inteat@burger')
			while not HasAnimDictLoaded('mp_player_inteat@burger') do
				Citizen.Wait(10)
			end
			TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
			Citizen.Wait(3000)
			IsAnimated = false
			ClearPedSecondaryTask(playerPed)
			coords = GetEntityCoords(prop, false)
			DeleteObject(prop)
			
			-- drop = CreateObject(GetHashKey("ng_proc_food_nana2a"), coords,  true, true, true)
			-- ActivatePhysics(drop)
			-- SetDamping(drop, 2, 0.1)
			-- SetEntityVelocity(drop, 1, 0.0, -0.9)
			
		end)
	end
end)

RegisterNetEvent('extendeditems:onEatDonut')
AddEventHandler('extendeditems:onEatDonut', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'prop_donut_02'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true, true, true)
			AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 180.0, -80.0, -50.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_inteat@burger')
			while not HasAnimDictLoaded('mp_player_inteat@burger') do
				Citizen.Wait(10)
			end
			TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
			Citizen.Wait(3000)
			IsAnimated = false
			ClearPedSecondaryTask(playerPed)
			coords = GetEntityCoords(prop, false)
			DeleteObject(prop)
			
			-- drop = CreateObject(GetHashKey("ng_proc_food_nana2a"), coords,  true, true, true)
			-- ActivatePhysics(drop)
			-- SetDamping(drop, 2, 0.1)
			-- SetEntityVelocity(drop, 1, 0.0, -0.9)
			
		end)
	end
end)

RegisterNetEvent('extendeditems:onDrinkSoda')
AddEventHandler('extendeditems:onDrinkSoda', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'ng_proc_sodacan_01a'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2, true, true, true)
			AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, -0.05, 0.02, 280.0, 175.0, 0.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_intdrink')  
			while not HasAnimDictLoaded('mp_player_intdrink') do
				Citizen.Wait(10)
			end
			TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)
			Citizen.Wait(3000)
			IsAnimated = false
			ClearPedSecondaryTask(playerPed)
			DeleteObject(prop)
			
			Citizen.CreateThread( function()
				local remainingTime = Config.EnergyTime * 10
				while remainingTime > 0 do
						
					print(remainingTime)
					Citizen.Wait(100)
					remainingTime = remainingTime - 1
					RestorePlayerStamina(PlayerId(), 1.0)
				end
			end)
			
		end)
	end
end)
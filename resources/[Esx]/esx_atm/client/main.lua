local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}
local modeltypes = {'prop_fleeca_atm', 'prop_atm_01', 'prop_atm_02', 'prop_atm_03'}
IsPlayerUsingAtm
local anim = "mini@atmenter"

-- internal variables
local hasAlreadyEnteredMarker = false
local isInATMMarker = false
local IsPlayerUsingAtm = false
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local function DisplayHelpLabel(label, sublabel, time)
	ClearBrief()
	ClearAllHelpMessages()
	
	BeginTextCommandDisplayHelp(label)
	if sublabel then
	   AddTextComponentSubstringPlayerName(sublabel)
	end
  
	if time then
		displayTime = time
	else
		displayTime = 3000
	end
	EndTextCommandDisplayHelp(0, 0, 0, displayTime)
  end
  
RegisterNetEvent('esx_atm:closeATM')
AddEventHandler('esx_atm:closeATM', function()
	IsPlayerUsingAtm = false
	SendNUIMessage({
		hideAll = true
	})
	FreezeEntityPosition(PlayerPedId(), false)

	RequestAnimDict("mini@atmexit")
	while not HasAnimDictLoaded("mini@atmexit") do
		Wait(1)
	end

	TaskPlayAnim(playerPed, "mini@atmexit", "exit", 8.0, 1.0, -1, 0, 0.0, 0, 0, 0)
	RemoveAnimDict(animDict)
	Wait(500)

	IsPlayerUsingAtm = false
	SetNuiFocus(false)	
end)

RegisterNUICallback('navigate', function(data, cb)
    PlaySoundFrontend(-1, "PIN_BUTTON", "ATM_SOUNDS", true)
end)

RegisterNUICallback('escape', function(data, cb)
	TriggerEvent('esx_atm:closeATM')
	cb('ok')
end)

RegisterNUICallback('deposit', function(data, cb)
	TriggerServerEvent('esx_atm:deposit', data.amount)
	cb('ok')
end)

RegisterNUICallback('withdraw', function(data, cb)
	TriggerServerEvent('esx_atm:withdraw', data.amount)
	cb('ok')
end)

-- Create blips
Citizen.CreateThread(function()
	if not Config.EnableBlips then return end

	for i=1, #Config.ATMLocations, 1 do
		local blip = AddBlipForCoord(Config.ATMLocations[i].x, Config.ATMLocations[i].y, Config.ATMLocations[i].z - Config.ZDiff)
		SetBlipSprite (blip, Config.BlipSprite)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 0.9)
		SetBlipColour (blip, 2)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(_U('atm_blip'))
		EndTextCommandSetBlipName(blip)
	end
end)

-- Activate menu when player is inside marker
Citizen.CreateThread(function()
	SetNuiFocus(false)
	SendNUIMessage({type = 'close'})

	while true do
		Wait(550)
		playerPed = PlayerPedId()
		x,y,z = table.unpack(GetEntityCoords(playerPed, true))
		IsPlayerInVehicle = IsPedInAnyVehicle(playerPed, true)

		if not IsPlayerNearAtm then
			if not IsPlayerInVehicle then
				for k,v in pairs(modeltypes) do
					atm = GetClosestObjectOfType(x, y, z, 0.75, GetHashKey(v), false)
					if DoesEntityExist(atm) then
						currentAtm = atm
						atmX, atmY, atmZ = table.unpack(GetOffsetFromEntityInWorldCoords(currentAtm, 0.0, -0.65, 0.0))
						IsPlayerNearAtm = true
					end
				end
			end
		else
			if not DoesEntityExist(currentAtm) then
				IsPlayerNearAtm = false
			else
				if GetDistanceBetweenCoords(x,y,z, atmX, atmY, atmZ, true) > 2.0 then
					IsPlayerNearAtm = false
				end
			end
		end
	end
end)

-- Menu interactions
Citizen.CreateThread(function()
	while true do
		Wait(10)

		if IsPlayerNearAtm then
			if not IsPlayerUsingAtm then
				DisplayHelpLabel("FINH_ATMNEAR", "~INPUT_CONTEXT~")
			else
				ClearAllHelpMessages()
				DisableControlAction(0, 201, true)
				DisableControlAction(1, 201, true)
			end
			if IsControlJustPressed(0, 51) then	
				RequestAnimDict("mini@atmbase")		
				RequestAnimDict(anim)
				while not HasAnimDictLoaded(anim) do
					Wait(1)
				end
				SetCurrentPedWeapon(playerPed, GetHashKey("weapon_unarmed"), true)
				TaskLookAtEntity(playerPed, currentAtm, 2000, 2048, 2)
				Wait(500)
				TaskGoStraightToCoord(playerPed, atmX, atmY, atmZ, 0.1, 4000, GetEntityHeading(currentAtm), 0.5)	
				Wait(2000)
				TaskPlayAnim(playerPed, anim, "enter", 8.0, 1.0, -1, 0, 0.0, 0, 0, 0)
				RemoveAnimDict(animDict)
				Wait(4000)
				TaskPlayAnim(playerPed, "mini@atmbase", "base", 8.0, 1.0, -1, 0, 0.0, 0, 0, 0)
				RemoveAnimDict("mini@atmbase")		
				Wait(1000)
				player = PlayerId()
				PlaySoundFrontend(-1, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
				FreezeEntityPosition(playerPed, true)
				IsPlayerUsingAtm = true
				ESX.TriggerServerCallback('esx:getPlayerData', function(data)
					SendNUIMessage({
						showMenu = true,
						player = {
							money = data.money,
							accounts = data.accounts
						}
					})
				end)

				SetNuiFocus(true, true)
			end

		else
			Citizen.Wait(500)
		end
	end
end)

-- close the menu when script is stopping to avoid being stuck in NUI focus
AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		if menuIsSIsPlayerUsingAtmhowed then
			TriggerEvent('esx_atm:closeATM')
		end
	end
end)

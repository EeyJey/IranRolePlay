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

ESX = nil
local PlayerData = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	PlayerData = ESX.GetPlayerData()
	
end)

local currentvoice = 1
local voice = {
	{dist = 5, message = "Voice range set on 5 meters."},
	{dist = 10, message = "Voice range set on 10 meters."},
	{dist = 15, message = "Voice range set on 15 meters."},
	{dist = 4, veh = true, func = function(ped) return IsPedInAnyVehicle(ped) end, message = "Voice range set to your vehicle."},
	-- {dist = 70, veh = true, func = (function(ped) PlayerData = ESX.GetPlayerData() if (IsPedInAnyVehicle(ped) and PlayerData.job.name == "police") then return true else return false end end), message = "~b~You are talking on MegaPhone!"}
}

local function ShowAboveRadarMessage(message)
	SetNotificationTextEntry("jamyfafi")
	AddTextComponentString(message)
	return DrawNotification(0, 1)
end

local notifID
function ShowNotif()
	if voice[currentvoice].message then
		if notifID then RemoveNotification(notifID) end
		notifID = ShowAboveRadarMessage(voice[currentvoice].message)
		Citizen.SetTimeout(4000, function() if notifID then RemoveNotification(notifID) end end)
	end
end

AddEventHandler('onClientMapStart', function()
	NetworkSetTalkerProximity(voice[currentvoice].dist)
end)

function UpdateVoice(c)
	if voice[c + 1] then
		if voice[c + 1].func then
			if voice[c + 1].func(GetPlayerPed(-1)) then
				return c + 1
			else
				return UpdateVoice(c+1)
			end
		else
			return c + 1
		end
	else
		return 1
	end
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)

		if IsControlJustPressed(1, Keys['H']) then
			currentvoice = UpdateVoice(currentvoice)
			ShowNotif()
			TriggerEvent("voicechange", currentvoice)
			NetworkSetTalkerProximity(voice[currentvoice].dist)
		end
	end
end)

Citizen.CreateThread(function()
    RequestAnimDict("facials@gen_male@variations@normal")
    RequestAnimDict("mp_facial")

    local talkingPlayers = {}
    while true do
        Citizen.Wait(300)

        for k,v in pairs(GetPlayers()) do
            local boolTalking = NetworkIsPlayerTalking(v)
            if v ~= PlayerId() then
                if boolTalking and not talkingPlayers[v] then
                    PlayFacialAnim(GetPlayerPed(v), "mic_chatter", "mp_facial")
                    talkingPlayers[v] = true
                elseif not boolTalking and talkingPlayers[v] then
                    PlayFacialAnim(GetPlayerPed(v), "mood_normal_1", "facials@gen_male@variations@normal")
                    talkingPlayers[v] = nil
                end
            end
        end
    end
end)

function drawRct(x,y,width,height,r,g,b,a)
	DrawRect(x, y, width, height, r, g, b, a)
end


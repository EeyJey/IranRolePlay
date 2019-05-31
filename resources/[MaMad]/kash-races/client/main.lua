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
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(7)
    end
end)
local Races = {}
local InRace = false
local RaceId = 0
local ShowCountDown = false
local RaceCount = 5
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(7)
        if Races ~= nil then
            -- Nog geen race
            local pos = GetEntityCoords(GetPlayerPed(-1), true)
            if RaceId == 0 then
                for k, race in pairs(Races) do
                    if Races[k] ~= nil then
                        if GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Races[k].startx, Races[k].starty, Races[k].startz, true) < 15.0 and not Races[k].started then
                            DrawText3D(Races[k].startx, Races[k].starty, Races[k].startz, "[~g~H~w~] To join the race (~g~$"..Races[k].amount.."~w~)")
                            if IsControlJustReleased(0, Keys["H"]) then
                                TriggerServerEvent("kash-races:JoinRace", k)
                            end
                        end
                    end
                    
                end
            end
            -- In race nog niet gestart
            if RaceId ~= 0 and not InRace then
                if GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Races[RaceId].startx, Races[RaceId].starty, Races[RaceId].startz, true) < 15.0 and not Races[RaceId].started then
                    DrawText3D(Races[RaceId].startx, Races[RaceId].starty, Races[RaceId].startz, "Race will be started soon...")
                end
            end
            -- In race en gestart
            if RaceId ~= 0 and InRace then
                if GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Races[RaceId].endx, Races[RaceId].endy, pos.z, true) < 250.0 and Races[RaceId].started then
                    DrawText3D(Races[RaceId].endx, Races[RaceId].endy, pos.z + 0.98, "FINISH")
                    if GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Races[RaceId].endx, Races[RaceId].endy, pos.z, true) < 15.0 then
                        TriggerServerEvent("kash-races:RaceWon", RaceId)
                        InRace = false
                    end
                end
            end
            
            if ShowCountDown then
                if GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Races[RaceId].startx, Races[RaceId].starty, Races[RaceId].startz, true) < 15.0 and Races[RaceId].started then
                    DrawText3D(Races[RaceId].startx, Races[RaceId].starty, Races[RaceId].startz, "Race starting in ~g~"..RaceCount)
                end
            end
        end
    end
end)

RegisterNetEvent('kash-races:StartRace')
AddEventHandler('kash-races:StartRace', function(race)
    if RaceId ~= 0 and RaceId == race then
        SetNewWaypoint(Races[RaceId].endx, Races[RaceId].endy)
        InRace = true
        RaceCountDown()
    end
end)

RegisterNetEvent('kash-races:RaceDone')
AddEventHandler('kash-races:RaceDone', function(race, winner)
    if RaceId ~= 0 and RaceId == race then
        RaceId = 0
        InRace = false
        ESX.ShowNotification("Race done! The winner is ~b~"..winner.. "~w~!")
    end
end)

RegisterNetEvent('kash-races:StopRace')
AddEventHandler('kash-races:StopRace', function()
    RaceId = 0
    InRace = false
end)

RegisterNetEvent('kash-races:CreateRace')
AddEventHandler('kash-races:CreateRace', function(amount)
    local pos = GetEntityCoords(GetPlayerPed(-1), true)
    local WaypointHandle = GetFirstBlipInfoId(8)
    if DoesBlipExist(WaypointHandle) then
        local cx, cy, cz = table.unpack(Citizen.InvokeNative(0xFA7C7F0AADF25D09, WaypointHandle, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector()))
        unusedBool, groundZ = GetGroundZFor_3dCoord(cx, cy, 99999.0, 1)
        print(groundZ)
        if GetDistanceBetweenCoords(pos.x, pos.y, pos.z, cx, cy, groundZ, true) > 500.0 then
            local race = {creator = nil, started = false, startx = pos.x, starty = pos.y, startz = pos.z, endx = cx, endy = cy, endz = groundZ, amount = amount, pot = amount, joined = {}}
            TriggerServerEvent("kash-races:NewRace", race)
            ESX.ShowNotification("Race created with an opt in price of ~g~$"..amount.."~w~!")
        else
            ESX.ShowNotification("~r~Finish to close from starting point!")
        end
    else
        ESX.ShowNotification("You need to set a marker!")
    end
end)

RegisterNetEvent('kash-races:SetRace')
AddEventHandler('kash-races:SetRace', function(RaceTable)
    Races = RaceTable
end)

RegisterNetEvent('kash-races:SetRaceId')
AddEventHandler('kash-races:SetRaceId', function(race)
    RaceId = race
    SetNewWaypoint(Races[RaceId].endx, Races[RaceId].endy)
end)

function RaceCountDown()
    ShowCountDown = true
    while RaceCount ~= 0 do
        local pos = GetEntityCoords(GetPlayerPed(-1), true)
        FreezeEntityPosition(GetVehiclePedIsIn(GetPlayerPed(-1), true), true)
        PlaySound(-1, "slow", "SHORT_PLAYER_SWITCH_SOUND_SET", 0, 0, 1)
        Citizen.Wait(1000)
        RaceCount = RaceCount - 1
    end
    ShowCountDown = false
    RaceCount = 5
    FreezeEntityPosition(GetVehiclePedIsIn(GetPlayerPed(-1), true), false)
    ESX.ShowNotification("GOOOOOOOOO!!!")
end

function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    --DrawText(_x,_y)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    --DrawRect(_x,_y+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 68)
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 68)
    ClearDrawOrigin()
end


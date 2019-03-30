-------------------------------------------------------------------------------
-- Title: Speed limiter.
-- Author: Serpico -- twitch.tv/SerpicoTV
-- Description: This script will restict the speed of the vehicle when
--              INPUT_MP_TEXT_CHAT_TEAM is pressed. To disable, press
--              INPUT_VEH_SUB_ASCEND + INPUT_MP_TEXT_CHAT_TEAM
-------------------------------------------------------------------------------
local useMph = false -- if false, it will display speed in kph

Citizen.CreateThread(function()
  local resetSpeedOnEnter = true
  local speedLimited = false
  while true do
    Citizen.Wait(0)
    local playerPed = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(playerPed,false)
    if GetPedInVehicleSeat(vehicle, -1) == playerPed and IsPedInAnyVehicle(playerPed, false) then

      -- This should only happen on vehicle first entry to disable any old values
      if resetSpeedOnEnter then
        maxSpeed = GetVehicleHandlingFloat(vehicle,"CHandlingData","fInitialDriveMaxFlatVel")
        SetEntityMaxSpeed(vehicle, maxSpeed)
        resetSpeedOnEnter = false
      end
      -- Disable speed limiter
      if IsControlJustReleased(0,29) and not speedLimited then
		speedLimited = true
        maxSpeed = GetVehicleHandlingFloat(vehicle,"CHandlingData","fInitialDriveMaxFlatVel")
        SetEntityMaxSpeed(vehicle, maxSpeed)
        showHelpNotification("Speed limiter disabled", 1)
      -- Enable speed limiter
      elseif IsControlJustReleased(0,29) and speedLimited then
		speedLimited = false
        cruise = GetEntitySpeed(vehicle)
        SetEntityMaxSpeed(vehicle, cruise)
        if useMph then
			cruise = math.floor(cruise * 2.23694 + 0.5)
			showHelpNotification("Speed limiter set to "..cruise.." mph.", 0)
        else
			cruise = math.floor(cruise * 3.6 + 0.5)
			showHelpNotification("Speed limiter set to "..cruise.." km/h.", 0)
        end
      end
    else
      resetSpeedOnEnter = true
    end
  end
end)

function showHelpNotification(msg, type)
	if type == 0 then 
		TriggerEvent("pNotify:SendNotification", {text = msg, type = "success", timeout = math.random(1000, 10000), layout = "centerLeft", queue = "left"})
	else
		TriggerEvent("pNotify:SendNotification", {text = msg, type = "error", timeout = math.random(1000, 10000), layout = "centerLeft", queue = "left"})
	end
end

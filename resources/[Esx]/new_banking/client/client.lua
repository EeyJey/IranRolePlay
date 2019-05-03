--================================================================================================
--==                                VARIABLES - DO NOT EDIT                                     ==
--================================================================================================
ESX                         = nil
inMenu                      = false
local showblips = true
local atbank = true
local bankMenu = true
local anim = "mini@atmenter"
local modeltypes = {'prop_fleeca_atm', 'prop_atm_01', 'prop_atm_02', 'prop_atm_03'}
IsPlayerUsingAtm = false

local banks = {
  {name="Bank", id=108, x=150.266, y=-1040.203, z=29.374},
  {name="Bank", id=108, x=-1212.980, y=-330.841, z=37.787},
  {name="Bank", id=108, x=-2962.582, y=482.627, z=15.703},
  {name="Bank", id=108, x=-112.202, y=6469.295, z=31.626},
  {name="Bank", id=108, x=314.187, y=-278.621, z=54.170},
  {name="Bank", id=108, x=-351.534, y=-49.529, z=49.042},
  {name="Bank", id=108, x=241.727, y=220.706, z=106.286},
  {name="Bank", id=108, x=1175.0643310547, y=2706.6435546875, z=38.094036102295}
}	
--================================================================================================
--==                                THREADING - DO NOT EDIT                                     ==
--================================================================================================

--===============================================
--==           Base ESX Threading              ==
--===============================================
Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)





--===============================================
--==             Core Threading                ==
--===============================================

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
				if GetDistanceBetweenCoords(x,y,z, atmX, atmY, atmZ, true) > 3.0 then
					IsPlayerNearAtm = false
				end
			end
		end
	end
end)

if bankMenu then
	Citizen.CreateThread(function()
  while true do
    Wait(0)
    playerPed = PlayerPedId()
    IsPlayerInVehicle = IsPedInAnyVehicle(playerPed, true)
    if not IsPlayerInVehicle then
      if IsPlayerNearAtm then
        if not inMenu then
          DisplayHelpText("Baraye dastresi be ATM ~INPUT_PICKUP~ ro bezanid")
        else
          ClearAllHelpMessages()				
          DisableControlAction(0, 201, true)
          DisableControlAction(1, 201, true)				
        end
      
        if IsControlJustPressed(1, 38) then
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
          PlaySoundFrontend(-1, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
          FreezeEntityPosition(playerPed, true)

          inMenu = true
          SetNuiFocus(true, true)
          SendNUIMessage({type = 'openGeneral'})
          TriggerServerEvent('bank:balance')
          local ped = GetPlayerPed(-1)
        end
      end
            
        if IsControlJustPressed(1, 322) then
        inMenu = false
          SetNuiFocus(false, false)
          SendNUIMessage({type = 'close'})
        end
      end
    end
  end)
end


--===============================================
--==             Map Blips	                   ==
--===============================================
Citizen.CreateThread(function()
	if showblips then
	  for k,v in ipairs(banks)do
		local blip = AddBlipForCoord(v.x, v.y, v.z)
		SetBlipSprite(blip, v.id)
		SetBlipScale(blip, 1.0)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(tostring(v.name))
		EndTextCommandSetBlipName(blip)
	  end
	end
end)



--===============================================
--==           Deposit Event                   ==
--===============================================
RegisterNetEvent('currentbalance1')
AddEventHandler('currentbalance1', function(balance)
	local id = PlayerId()
	local playerName = GetPlayerName(id)
	SendNUIMessage({
		type = "balanceHUD",
		balance = balance,
		player = playerName
		})
end)
--===============================================
--==           Deposit Event                   ==
--===============================================
RegisterNUICallback('deposit', function(data)
	TriggerServerEvent('bank:deposit', tonumber(data.amount))
end)

--===============================================
--==          Withdraw Event                   ==
--===============================================
RegisterNUICallback('withdrawl', function(data)
	TriggerServerEvent('bank:withdraw', tonumber(data.amountw))
end)

--===============================================
--==         Balance Event                     ==
--===============================================
RegisterNUICallback('balance', function()
	TriggerServerEvent('bank:balance')
end)

RegisterNetEvent('balance:back')
AddEventHandler('balance:back', function(balance)

	SendNUIMessage({type = 'balanceReturn', bal = balance})

end)


--===============================================
--==         Transfer Event                    ==
--===============================================
RegisterNUICallback('transfer', function(data)
	TriggerServerEvent('bank:transfer', data.to, data.amountt)
	
end)




--===============================================
--==               NUIFocusoff                 ==
--===============================================
RegisterNUICallback('NUIFocusOff', function()
  FreezeEntityPosition(PlayerPedId(), false)
  PlaySoundFrontend(-1, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
  inMenu = false
  SetNuiFocus(false, false)
  SendNUIMessage({type = 'closeAll'})
end)


--===============================================
--==            Capture Bank Distance          ==
--===============================================
function nearBank()
	local player = GetPlayerPed(-1)
	local playerloc = GetEntityCoords(player, 0)
	
	for _, search in pairs(banks) do
		local distance = GetDistanceBetweenCoords(search.x, search.y, search.z, playerloc['x'], playerloc['y'], playerloc['z'], true)
		
		if distance <= 3 then
			return true
		end
	end
end


function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

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

local set                       = false
local PlayerData                = {}
local GUI                       = {}
local HasAlreadyEnteredMarker   = false
local LastStation               = nil
local LastPart                  = nil
local LastEntity                = nil
local CurrentAction             = nil
local CurrentActionMsg          = ''
local CurrentActionData         = {}
local IsHandcuffed              = false
local IsDragged                 = false
local CopPed                    = 0
local allBlip                   = {}
local Data                      = {}
local blips                     = true

ESX                             = nil
GUI.Time                        = 0

Citizen.CreateThread(function()
while ESX == nil do
  TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
  Citizen.Wait(0)
end
end)

function SetVehicleMods(vehicle)
  local props = {}
  if Data.vehprop ~= nil then
    props       = Data.vehprop
    local res = tostring(Data.family_name)
    res = res .. ' '
    for i = 1, 3 do
      res = res .. math.random(0,9)
    end
    props.plate = tostring(res)
    ESX.Game.SetVehicleProperties(vehicle, props)
  end
end

function OpenCloakroomMenu()

 local elements = {
  {label = _U('citizen_wear'), value = 'citizen_wear'},
  {label = _U('family_wear'), value = 'family_wear'}
}

 ESX.UI.Menu.CloseAll()

   ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'cloakroom',
    {
      title    = _U('cloakroom'),
      align    = 'top-right',
      elements = elements,
    },

       function(data, menu)

     menu.close()

     --Taken from SuperCoolNinja
    if data.current.value == 'citizen_wear' then
      ESX.TriggerServerCallback('esx_skin:getFamilySkin', function(skin, familySkin)
        local model = nil

         if skin.sex == 0 then
          model = GetHashKey("mp_m_freemode_01")
        else
          model = GetHashKey("mp_f_freemode_01")
        end

         RequestModel(model)
        while not HasModelLoaded(model) do
          RequestModel(model)
          Citizen.Wait(1)
        end

         SetPlayerModel(PlayerId(), model)
        SetModelAsNoLongerNeeded(model)

         TriggerEvent('skinchanger:loadSkin', skin)
        TriggerEvent('esx:restoreLoadout')
      end)
    end

     if data.current.value == 'family_wear' then

       ESX.TriggerServerCallback('esx_skin:getFamilySkin', function(skin, familySkin)

         if skin.sex == 0 then
          TriggerEvent('skinchanger:loadClothes', skin, familySkin.skin_male)
        else
          TriggerEvent('skinchanger:loadClothes', skin, familySkin.skin_female)
        end

       end)

     end

     CurrentAction     = 'menu_cloakroom'
    CurrentActionMsg  = _U('open_cloackroom')
    CurrentActionData = {}

   end,
  function(data, menu)

    menu.close()

    CurrentAction     = 'menu_cloakroom'
    CurrentActionMsg  = _U('open_cloackroom')
    CurrentActionData = {}
  end
)

end

function OpenArmoryMenu(station)
local station = station
if Config.EnableArmoryManagement then

   local elements = {
    {label = _U('get_weapon'), value = 'get_weapon'},
    {label = _U('put_weapon'), value = 'put_weapon'},
    {label = _U('get_stock'),  value = 'get_stock'},
    {label = _U('put_stock'),  value = 'put_stock'}
  }

   -- if PlayerData.family.grade = 6 then
  --   table.insert(elements, {label = _U('buy_weapons'), value = 'buy_weapons'})
  -- end

   ESX.UI.Menu.CloseAll()

   ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'armory',
    {
      title    = _U('armory'),
      align    = 'top-right',
      elements = elements,
    },
    function(data, menu)

       if data.current.value == 'get_weapon' then
        OpenGetWeaponMenu(station)
      end

       if data.current.value == 'put_weapon' then
        OpenPutWeaponMenu(station)
      end

       if data.current.value == 'buy_weapons' then
        OpenBuyWeaponsMenu(station)
      end

       if data.current.value == 'put_stock' then
        OpenPutStocksMenu(station)
      end

       if data.current.value == 'get_stock' then
        OpenGetStocksMenu(station)
      end

     end,
    function(data, menu)

      menu.close()

      CurrentAction     = 'menu_armory'
      CurrentActionMsg  = _U('open_armory')
      CurrentActionData = {station = station}
    end
  )

 else

   local elements = {}

  for i=1, #Config.families[station].AuthorizedWeapons, 1 do
    local weapon = Config.families[station].AuthorizedWeapons[i]
    table.insert(elements, {label = ESX.GetWeaponLabel(weapon.name), value = weapon.name})
  end

   ESX.UI.Menu.CloseAll()

   ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'armory',
    {
      title    = _U('armory'),
      align    = 'top-right',
      elements = elements,
    },
    function(data, menu)
      local weapon = data.current.value
      TriggerServerEvent('irrp_familiesprop:giveWeapon', weapon,  1000)
    end,
    function(data, menu)

       menu.close()

       CurrentAction     = 'menu_armory'
      CurrentActionMsg  = _U('open_armory')
      CurrentActionData = {station = station}

     end
  )

 end

end

function OpenVehicleSpawnerMenu(station)

 ESX.UI.Menu.CloseAll()

 -- if Config.EnableSocietyOwnedVehicles then

 --   local elements = {}

 --   ESX.TriggerServerCallback('esx_society:getVehiclesInGarage', function(garageVehicles)

 --     for i=1, #garageVehicles, 1 do
--       table.insert(elements, {label = GetDisplayNameFromVehicleModel(garageVehicles[i].model) .. ' [' .. garageVehicles[i].plate .. ']', value = garageVehicles[i]})
--     end

 --     ESX.UI.Menu.Open(
--       'default', GetCurrentResourceName(), 'vehicle_spawner',
--       {
--         title    = _U('vehicle_menu'),
--         align    = 'top-right',
--         elements = elements,
--       },
--       function(data, menu)

 --         menu.close()

 --         local vehicleProps = data.current.value

 --         ESX.Game.SpawnVehicle(vehicleProps.model, vehicles[partNum].SpawnPoint, 270.0, function(vehicle)
--           ESX.Game.SetVehicleProperties(vehicle, vehicleProps)
--           local playerPed = GetPlayerPed(-1)
--           TaskWarpPedIntoVehicle(playerPed,  vehicle,  -1)
--         end)

 --         TriggerServerEvent('esx_society:removeVehicleFromGarage', 'gang', vehicleProps)

 --       end,
--       function(data, menu)

 --         menu.close()

 --         CurrentAction     = 'menu_vehicle_spawner'
--         CurrentActionMsg  = _U('vehicle_spawner')
--         CurrentActionData = {station = station, partNum = partNum}

 --       end
--     )

 --   end, 'gang')

 -- else

  local elements = {}

  if Data.vehicles then
    for i=1, #Data.vehicles, 1 do
      local vehicle = Data.vehicles[i]
      table.insert(elements, {label = vehicle.label, value = vehicle.name})
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'vehicle_spawner',
      {
        title    = _U('vehicle_menu'),
        align    = 'top-right',
        elements = elements,
      },
      function(data, menu)

        menu.close()

        local model = data.current.value

        local vehicle = GetClosestVehicle(Data.vehspawn.x,  Data.vehspawn.y,  Data.vehspawn.z,  3.0,  0,  71)

        if not DoesEntityExist(vehicle) then
          local playerPed = GetPlayerPed(-1)
          ESX.Game.SpawnVehicle(model, {
          x = Data.vehspawn.x,
          y = Data.vehspawn.y,
          z = Data.vehspawn.z
          }, Data.vehspawn.a, function(vehicle)
          TaskWarpPedIntoVehicle(playerPed,  vehicle,  -1)
          SetVehicleMods(vehicle)
          SetVehicleFuelLevel(vehicle,60)
          end)

        else
          ESX.ShowNotification(_U('vehicle_out'))
        end

      end,
      function(data, menu)

        menu.close()

        CurrentAction     = 'menu_vehicle_spawner'
        CurrentActionMsg  = _U('vehicle_spawner')
        CurrentActionData = {station = station}

      end
    )
  end
 -- end

end

function OpenGangActionsMenu()

 ESX.UI.Menu.CloseAll()

 ESX.UI.Menu.Open(
  'default', GetCurrentResourceName(), 'gang_actions',
  {
    title    = PlayerData.family.name,
    align    = 'top-right',
    elements = {
      {label = _U('citizen_interaction'), value = 'citizen_interaction'},
      {label = _U('vehicle_interaction'), value = 'vehicle_interaction'},
    },
  },
  function(data, menu)

     if data.current.value == 'citizen_interaction' then

       ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'citizen_interaction',
        {
          title    = _U('citizen_interaction'),
          align    = 'top-right',
          elements = {
            {label = _U('handcuff'),    value = 'handcuff'},
            {label = _U('drag'),      value = 'drag'},
            {label = _U('put_in_vehicle'),  value = 'put_in_vehicle'},
            {label = _U('out_the_vehicle'), value = 'out_the_vehicle'},
          },
        },
        function(data2, menu2)

           local player, distance = ESX.Game.GetClosestPlayer()

           if distance ~= -1 and distance <= 3.0 then

             if data2.current.value == 'handcuff' then
              TriggerServerEvent('irrp_familiesprop:handcuff', GetPlayerServerId(player))
            end

             if data2.current.value == 'drag' then
              TriggerServerEvent('irrp_familiesprop:drag', GetPlayerServerId(player))
            end

             if data2.current.value == 'put_in_vehicle' then
              TriggerServerEvent('irrp_familiesprop:putInVehicle', GetPlayerServerId(player))
            end

             if data2.current.value == 'out_the_vehicle' then
                TriggerServerEvent('irrp_familiesprop:OutVehicle', GetPlayerServerId(player))
            end

           else
            ESX.ShowNotification(_U('no_players_nearby'))
          end

         end,
        function(data2, menu2)
          menu2.close()
        end
      )

     end

     if data.current.value == 'vehicle_interaction' then

       ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'vehicle_interaction',
        {
          title    = _U('vehicle_interaction'),
          align    = 'top-right',
          elements = {
            {label = _U('pick_lock'),    value = 'hijack_vehicle'},
          },
        },
        function(data2, menu2)

           local playerPed = GetPlayerPed(-1)
          local coords    = GetEntityCoords(playerPed)
          local vehicle   = GetClosestVehicle(coords.x,  coords.y,  coords.z,  3.0,  0,  71)

           if DoesEntityExist(vehicle) then

             local vehicleData = ESX.Game.GetVehicleProperties(vehicle)

             if data2.current.value == 'hijack_vehicle' then

               local playerPed = GetPlayerPed(-1)
              local coords    = GetEntityCoords(playerPed)

               if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 3.0) then

                 local vehicle = GetClosestVehicle(coords.x,  coords.y,  coords.z,  3.0,  0,  71)

                 if DoesEntityExist(vehicle) then

                   Citizen.CreateThread(function()

                     TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_WELDING", 0, true)

                     Wait(20000)

                     ClearPedTasksImmediately(playerPed)

                     SetVehicleDoorsLocked(vehicle, 1)
                    SetVehicleDoorsLockedForAllPlayers(vehicle, false)

                     TriggerEvent('esx:showNotification', _U('vehicle_unlocked'))

                   end)

                 end

               end

             end

           else
            ESX.ShowNotification(_U('no_vehicles_nearby'))
          end

         end,
        function(data2, menu2)
          menu2.close()
        end
      )

     end

   end,
  function(data, menu)

     menu.close()

   end
)

end

function OpenBodySearchMenu(player)

 ESX.TriggerServerCallback('irrp_familiesprop:getOtherPlayerData', function(data)

   local elements = {}

   local blackMoney = 0

   for i=1, #data.accounts, 1 do
    if data.accounts[i].name == 'black_money' then
      blackMoney = data.accounts[i].money
    end
  end

   table.insert(elements, {
    label          = _U('confiscate_dirty') .. blackMoney,
    value          = 'black_money',
    itemType       = 'item_account',
    amount         = blackMoney
  })

   table.insert(elements, {label = '--- Armes ---', value = nil})

   for i=1, #data.weapons, 1 do
    table.insert(elements, {
      label          = _U('confiscate') .. ESX.GetWeaponLabel(data.weapons[i].name),
      value          = data.weapons[i].name,
      itemType       = 'item_weapon',
      amount         = data.ammo,
    })
  end

   table.insert(elements, {label = _U('inventory_label'), value = nil})

   for i=1, #data.inventory, 1 do
    if data.inventory[i].count > 0 then
      table.insert(elements, {
        label          = _U('confiscate_inv') .. data.inventory[i].count .. ' ' .. data.inventory[i].label,
        value          = data.inventory[i].name,
        itemType       = 'item_standard',
        amount         = data.inventory[i].count,
      })
    end
  end


   ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'body_search',
    {
      title    = _U('search'),
      align    = 'top-right',
      elements = elements,
    },
    function(data, menu)

       local itemType = data.current.itemType
      local itemName = data.current.value
      local amount   = data.current.amount

       if data.current.value ~= nil then

         TriggerServerEvent('irrp_familiesprop:confiscatePlayerItem', GetPlayerServerId(player), itemType, itemName, amount)

         OpenBodySearchMenu(player)

       end

     end,
    function(data, menu)
      menu.close()
    end
  )

 end, GetPlayerServerId(player))

end


function OpenGetWeaponMenu(family)
local family = family

 ESX.TriggerServerCallback('irrp_families:getArmoryWeapons', function(weapons)

   local elements = {}

   for i=1, #weapons, 1 do
    if weapons[i].count > 0 then
      table.insert(elements, {label = 'x' .. weapons[i].count .. ' ' .. ESX.GetWeaponLabel(weapons[i].name), value = weapons[i].name})
    end
  end

   ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'armory_get_weapon',
    {
      title    = _U('get_weapon_menu'),
      align    = 'top-right',
      elements = elements,
    },
    function(data, menu)

       menu.close()

       ESX.TriggerServerCallback('irrp_families:removeArmoryWeapon', function()
        OpenGetWeaponMenu(family)
      end, data.current.value, family)

     end,
    function(data, menu)
      menu.close()
    end
  )

 end, family)

end

function OpenPutWeaponMenu(family)
local family = family
local elements   = {}
local playerPed  = GetPlayerPed(-1)
local weaponList = ESX.GetWeaponList()

 for i=1, #weaponList, 1 do

   local weaponHash = GetHashKey(weaponList[i].name)

   if HasPedGotWeapon(playerPed,  weaponHash,  false) and weaponList[i].name ~= 'WEAPON_UNARMED' then
    local ammo = GetAmmoInPedWeapon(playerPed, weaponHash)
    table.insert(elements, {label = weaponList[i].label, value = weaponList[i].name})
  end

end

 ESX.UI.Menu.Open(
  'default', GetCurrentResourceName(), 'armory_put_weapon',
  {
    title    = _U('put_weapon_menu'),
    align    = 'top-right',
    elements = elements,
  },
  function(data, menu)

     menu.close()

     ESX.TriggerServerCallback('irrp_families:addArmoryWeapon', function()
      OpenPutWeaponMenu(family)
    end, data.current.value, family)

   end,
  function(data, menu)
    menu.close()
  end
)

end

function OpenBuyWeaponsMenu(station, family)
local family = family

 ESX.TriggerServerCallback('irrp_families:getArmoryWeapons', function(weapons)

   local elements = {}
   for i=1, #weapons, 1 do
    table.insert(elements, {label = 'x' .. weapons[i].count .. ' ' .. ESX.GetWeaponLabel(weapons[i].name) .. ' $' .. weapons[i].price, value = weapons[i].name, price = weapons[i].price})
   end
   ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'armory_buy_weapons',
    {
      title    = _U('buy_weapon_menu'),
      align    = 'top-right',
      elements = elements,
    },
    function(data, menu)

       ESX.TriggerServerCallback('irrp_families:buy', function(hasEnoughMoney)

         if hasEnoughMoney then
          ESX.TriggerServerCallback('irrp_families:addArmoryWeapon', function()
            OpenBuyWeaponsMenu(station, family)
          end, data.current.value, family)
        else
          ESX.ShowNotification(_U('not_enough_money'))
        end

       end, data.current.price, family)

     end,
    function(data, menu)
      menu.close()
    end
  )

 end, family)

end

function OpenGetStocksMenu(family)
local family = family

 ESX.TriggerServerCallback('irrp_families:getStockItems', function(items)

   -- print(json.encode(items))

  local elements = {}

  for i=1, #items, 1 do
    table.insert(elements, {label = 'x' .. items[i].count .. ' ' .. items[i].label, value = items[i].name})
  end

   ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'stocks_menu',
    {
      title    = _U('gang_stock'),
      elements = elements
    },
    function(data, menu)

       local itemName = data.current.value

       ESX.UI.Menu.Open(
        'dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count',
        {
          title = _U('quantity')
        },
        function(data2, menu2)

          local count = tonumber(data2.value)

          if count == nil then
            ESX.ShowNotification(_U('quantity_invalid'))
          else
            menu2.close()
            menu.close()
            TriggerServerEvent('irrp_families:getStockItem', family, itemName, count)
            OpenGetStocksMenu(family)
          end

         end,
        function(data2, menu2)
          menu2.close()
        end
      )

     end,
    function(data, menu)
      menu.close()
    end
  )

 end, family)

end

function OpenPutStocksMenu(station)
local family = station

 ESX.TriggerServerCallback('irrp_familiesprop:getPlayerInventory', function(inventory)

   local elements = {}

   for i=1, #inventory.items, 1 do

     local item = inventory.items[i]

     if item.count > 0 then
      table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
    end

   end

   ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'stocks_menu',
    {
      title    = _U('inventory'),
      elements = elements
    },
    function(data, menu)

       local itemName = data.current.value

       ESX.UI.Menu.Open(
        'dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count',
        {
          title = _U('quantity')
        },
        function(data2, menu2)

          local count = tonumber(data2.value)

          if count == nil then
            ESX.ShowNotification(_U('quantity_invalid'))
          else
            menu2.close()
            menu.close()

            TriggerServerEvent('irrp_families:putStockItems', family, itemName, count)
            OpenPutStocksMenu(station)
          end

         end,
        function(data2, menu2)
          menu2.close()
        end
      )

     end,
    function(data, menu)
      menu.close()
    end
  )

 end)

end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
PlayerData.job = job
end)

RegisterNetEvent('esx:setFamily')
AddEventHandler('esx:setFamily', function(family)
set = false
PlayerData.family = family
end)

Citizen.CreateThread(function()
  while true do
    Wait(0)
    if not set and PlayerData.family ~= nil and PlayerData.family.name ~= 'nofamily' then
      Data = {}
      ESX.TriggerServerCallback('irrp_families:getFamilyData', function(data)
        if data.family_name ~= nil then
          Data.family_name  = data.family_name
          Data.blip         = json.decode(data.blip)
          Data.armory       = json.decode(data.armory)
          Data.locker       = json.decode(data.locker)
          Data.boss         = json.decode(data.boss)
          Data.vehicles     = json.decode(data.vehicles)
          Data.veh          = json.decode(data.veh)
          Data.vehdel       = json.decode(data.vehdel)
          Data.vehspawn     = json.decode(data.vehspawn)
          Data.vehprop      = json.decode(data.vehprop)
          TriggerEvent('irrp_familiesprop:blip', Data.blip)
        else
          --Delete Player Family
        end
      end, PlayerData.family.name)
      set = true
    end
  end
end)

-- Create blips
RegisterNetEvent('irrp_familiesprop:blip')
AddEventHandler('irrp_familiesprop:blip', function(blip)
  for _, blip in pairs(allBlip) do
    RemoveBlip(blip)
  end
  local blipCoord = AddBlipForCoord(blip.x, blip.y, blip.z)
  table.insert(allBlip, blipCoord)
  SetBlipSprite (blipCoord, 88)
  SetBlipDisplay(blipCoord, 4)
  SetBlipScale  (blipCoord, 1.2)
  SetBlipColour (blipCoord, 76)
  SetBlipAsShortRange(blipCoord, true)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentString('Family')
  EndTextCommandSetBlipName(blipCoord)
end)

Citizen.CreateThread(function()
  while blips do
    Wait(0)
    if PlayerData.family ~= nil and PlayerData.family.name ~= 'nofamily' and Data.blip ~= nil then
      local blipCoord = AddBlipForCoord(Data.blip.x, Data.blip.y, Data.blip.z)
      table.insert(allBlip, blipCoord)
      SetBlipSprite (blipCoord, 88)
      SetBlipDisplay(blipCoord, 4)
      SetBlipScale  (blipCoord, 1.2)
      SetBlipColour (blipCoord, 76)
      SetBlipAsShortRange(blipCoord, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString('Family')
      EndTextCommandSetBlipName(blipCoord)
      blips = false
    end
  end
end)


AddEventHandler('irrp_familiesprop:hasEnteredMarker', function(station, part)

 if part == 'Cloakroom' then
  CurrentAction     = 'menu_cloakroom'
  CurrentActionMsg  = _U('open_cloackroom')
  CurrentActionData = {station = station}
end

 if part == 'Armory' then
  CurrentAction     = 'menu_armory'
  CurrentActionMsg  = _U('open_armory')
  CurrentActionData = {station = station}
end

 if part == 'VehicleSpawner' then
  CurrentAction     = 'menu_vehicle_spawner'
  CurrentActionMsg  = _U('vehicle_spawner')
  CurrentActionData = {station = station}
end

 if part == 'VehicleDeleter' then

  local playerPed = GetPlayerPed(-1)
  local coords    = GetEntityCoords(playerPed)

  if IsPedInAnyVehicle(playerPed,  false) then

    local vehicle = GetVehiclePedIsIn(playerPed, false)

    if DoesEntityExist(vehicle) then
      CurrentAction     = 'delete_vehicle'
      CurrentActionMsg  = _U('store_vehicle')
      CurrentActionData = {vehicle = vehicle, station = station}
    end

  end

 end

 if part == 'BossActions' then
  CurrentAction     = 'menu_boss_actions'
  CurrentActionMsg  = _U('open_bossmenu')
  CurrentActionData = {station = station}
end

end)

AddEventHandler('irrp_familiesprop:hasExitedMarker', function(station, part)
ESX.UI.Menu.CloseAll()
CurrentAction = nil
end)

-- AddEventHandler('irrp_familiesprop:hasEnteredEntityZone', function(entity)

--   local playerPed = GetPlayerPed(-1)

--   if PlayerData.job ~= nil and PlayerData.job.name == 'gang' and not IsPedInAnyVehicle(playerPed, false) then
--     CurrentAction     = 'remove_entity'
--     CurrentActionMsg  = _U('remove_object')
--     CurrentActionData = {entity = entity}
--   end

--   if GetEntityModel(entity) == GetHashKey('p_ld_stinger_s') then

--     local playerPed = GetPlayerPed(-1)
--     local coords    = GetEntityCoords(playerPed)

--     if IsPedInAnyVehicle(playerPed,  false) then

--       local vehicle = GetVehiclePedIsIn(playerPed)

--       for i=0, 7, 1 do
--         SetVehicleTyreBurst(vehicle,  i,  true,  1000)
--       end

--     end

--   end

-- end)

-- AddEventHandler('irrp_familiesprop:hasExitedEntityZone', function(entity)

--   if CurrentAction == 'remove_entity' then
--     CurrentAction = nil
--   end

-- end)

RegisterNetEvent('irrp_familiesprop:handcuff')
AddEventHandler('irrp_familiesprop:handcuff', function()

 IsHandcuffed    = not IsHandcuffed;
local playerPed = GetPlayerPed(-1)

 Citizen.CreateThread(function()

   if IsHandcuffed then

    RequestAnimDict('mp_arresting')

    while not HasAnimDictLoaded('mp_arresting') do
      Wait(100)
    end

     TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0, 0, 0, 0)
    SetEnableHandcuffs(playerPed, true)
    SetPedCanPlayGestureAnims(playerPed, false)
    FreezeEntityPosition(playerPed,  true)

   else

    ClearPedSecondaryTask(playerPed)
    SetEnableHandcuffs(playerPed, false)
    SetPedCanPlayGestureAnims(playerPed,  true)
    FreezeEntityPosition(playerPed, false)

   end

 end)
end)

RegisterNetEvent('irrp_familiesprop:drag')
AddEventHandler('irrp_familiesprop:drag', function(cop)
TriggerServerEvent('esx:clientLog', 'starting dragging')
IsDragged = not IsDragged
CopPed = tonumber(cop)
end)

Citizen.CreateThread(function()
while true do
  Wait(0)
  if IsHandcuffed then
    if IsDragged then
      local ped = GetPlayerPed(GetPlayerFromServerId(CopPed))
      local myped = GetPlayerPed(-1)
      AttachEntityToEntity(myped, ped, 11816, 0.54, 0.54, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
    else
      DetachEntity(GetPlayerPed(-1), true, false)
    end
  end
end
end)

RegisterNetEvent('irrp_familiesprop:putInVehicle')
AddEventHandler('irrp_familiesprop:putInVehicle', function()

local playerPed = GetPlayerPed(-1)
local coords    = GetEntityCoords(playerPed)

 if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then

   local vehicle = GetClosestVehicle(coords.x,  coords.y,  coords.z,  5.0,  0,  71)

   if DoesEntityExist(vehicle) then

    local maxSeats = GetVehicleMaxNumberOfPassengers(vehicle)
    local freeSeat = nil

     for i=maxSeats - 1, 0, -1 do
      if IsVehicleSeatFree(vehicle,  i) then
        freeSeat = i
        break
      end
    end

     if freeSeat ~= nil then
      TaskWarpPedIntoVehicle(playerPed,  vehicle,  freeSeat)
    end

   end

 end

end)

RegisterNetEvent('irrp_familiesprop:OutVehicle')
AddEventHandler('irrp_familiesprop:OutVehicle', function(t)
local ped = GetPlayerPed(t)
ClearPedTasksImmediately(ped)
plyPos = GetEntityCoords(GetPlayerPed(-1),  true)
local xnew = plyPos.x+2
local ynew = plyPos.y+2

 SetEntityCoords(GetPlayerPed(-1), xnew, ynew, plyPos.z)
end)

-- Handcuff
Citizen.CreateThread(function()
while true do
  Wait(0)
  if IsHandcuffed then
    DisableControlAction(0, 142, true) -- MeleeAttackAlternate
    DisableControlAction(0, 30,  true) -- MoveLeftRight
    DisableControlAction(0, 31,  true) -- MoveUpDown
  end
end
end)

-- Display markers
Citizen.CreateThread(function()
while true do

  Wait(0)

  local playerPed = GetPlayerPed(-1)
  local coords    = GetEntityCoords(playerPed)
  if Data.locker ~= nil then
    if GetDistanceBetweenCoords(coords,  Data.locker.x,  Data.locker.y,  Data.locker.z,  true) < Config.DrawDistance then
      DrawMarker(Config.MarkerType, Data.locker.x,  Data.locker.y,  Data.locker.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
    end
  end

  if Data.armory ~= nil then
    if GetDistanceBetweenCoords(coords,  Data.armory.x,  Data.armory.y,  Data.armory.z,  true) < Config.DrawDistance then
      DrawMarker(Config.MarkerType, Data.armory.x,  Data.armory.y,  Data.armory.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
    end
  end

  if Data.veh ~= nil then
    if GetDistanceBetweenCoords(coords,  Data.veh.x,  Data.veh.y,  Data.veh.z,  true) < Config.DrawDistance then
      DrawMarker(Config.MarkerType, Data.veh.x,  Data.veh.y,  Data.veh.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
    end
  end

  if Data.vehdel ~= nil then
    if GetDistanceBetweenCoords(coords,   Data.vehdel.x,  Data.vehdel.y,  Data.vehdel.z,  true) < Config.DrawDistance then
      DrawMarker(Config.MarkerType, Data.vehdel.x,  Data.vehdel.y,  Data.vehdel.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
    end
  end

  if Data.boss ~= nil then
    if GetDistanceBetweenCoords(coords,  Data.boss.x,  Data.boss.y,  Data.boss.z,  true) < Config.DrawDistance then
      DrawMarker(Config.MarkerType, Data.boss.x,  Data.boss.y,  Data.boss.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
    end
  end
    
end
end)

-- Enter / Exit marker events
Citizen.CreateThread(function()

 while true do

  Wait(0)

  if PlayerData.family ~= nil then
    local playerPed      = GetPlayerPed(-1)
    local coords         = GetEntityCoords(playerPed)
    local isInMarker     = false
    local currentStation = nil
    local currentPart    = nil
    
    if Data.locker ~= nil then
      if GetDistanceBetweenCoords(coords,  Data.locker.x,  Data.locker.y,  Data.locker.z,  true) < Config.MarkerSize.x then
        isInMarker     = true
        currentStation = Data.family_name
        currentPart    = 'Cloakroom'
      end
    end

    if Data.armory ~= nil then
      if GetDistanceBetweenCoords(coords,  Data.armory.x,  Data.armory.y,  Data.armory.z,  true) < Config.MarkerSize.x then
        isInMarker     = true
        currentStation = Data.family_name
        currentPart    = 'Armory'
      end
    end

    if Data.veh ~= nil then
      if GetDistanceBetweenCoords(coords,  Data.veh.x,  Data.veh.y,  Data.veh.z,  true) < Config.MarkerSize.x then
        isInMarker     = true
        currentStation = Data.family_name
        currentPart    = 'VehicleSpawner'
      end
    end

    if Data.vehspawn ~= nil then
      if GetDistanceBetweenCoords(coords,  Data.vehspawn.x,  Data.vehspawn.y,  Data.vehspawn.z,  true) < Config.MarkerSize.x then
        isInMarker     = true
        currentStation = Data.family_name
        currentPart    = 'VehicleSpawnPoint'
      end
    end

    if Data.vehdel ~= nil then
      if GetDistanceBetweenCoords(coords,  Data.vehdel.x,  Data.vehdel.y,  Data.vehdel.z,  true) < Config.MarkerSize.x then
        isInMarker     = true
        currentStation = Data.family_name
        currentPart    = 'VehicleDeleter'
      end
    end

    if Data.boss ~= nil and PlayerData.family ~= nil and PlayerData.family.grade == 6 then
      if GetDistanceBetweenCoords(coords,   Data.boss.x,  Data.boss.y,  Data.boss.z,  true) < Config.MarkerSize.x then
        isInMarker     = true
        currentStation = Data.family_name
        currentPart    = 'BossActions' 
      end
    end

    local hasExited = false
    
    if isInMarker and not HasAlreadyEnteredMarker or (isInMarker and (LastStation ~= currentStation or LastPart ~= currentPart)) then
      if
        (LastStation ~= nil and LastPart ~= nil) and
        (LastStation ~= currentStation or LastPart ~= currentPart)
      then
        TriggerEvent('irrp_familiesprop:hasExitedMarker', LastStation, LastPart)
        hasExited = true
      end
      HasAlreadyEnteredMarker = true
      LastStation             = currentStation
      LastPart                = currentPart

      TriggerEvent('irrp_familiesprop:hasEnteredMarker', currentStation, currentPart)
    end

    if not hasExited and not isInMarker and HasAlreadyEnteredMarker then

      HasAlreadyEnteredMarker = false

      TriggerEvent('irrp_familiesprop:hasExitedMarker', LastStation, LastPart)
    end
  end
 end
end)


-- Key Controls
Citizen.CreateThread(function()
while true do

   Citizen.Wait(0)

   if CurrentAction ~= nil then

    SetTextComponentFormat('STRING')
    AddTextComponentString(CurrentActionMsg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)

     if IsControlPressed(0,  Keys['E']) and PlayerData.family ~= nil and PlayerData.family.name == CurrentActionData.station and (GetGameTimer() - GUI.Time) > 150 then
      if CurrentAction == 'menu_cloakroom' then
        OpenCloakroomMenu()
      elseif CurrentAction == 'menu_armory' and PlayerData.family.grade > 1 then
        OpenArmoryMenu(CurrentActionData.station)
      elseif CurrentAction == 'menu_vehicle_spawner' then
        OpenVehicleSpawnerMenu(CurrentActionData.station)
      elseif CurrentAction == 'delete_vehicle' then

         -- if Config.EnableSocietyOwnedVehicles then

         --   local vehicleProps = ESX.Game.GetVehicleProperties(CurrentActionData.vehicle)
        --   TriggerServerEvent('esx_society:putVehicleInGarage', 'gang', vehicleProps)

         -- else

         --   if
        --     GetEntityModel(vehicle) == GetHashKey('schafter5')  or
        --     GetEntityModel(vehicle) == GetHashKey('Akuma') or
        --     GetEntityModel(vehicle) == GetHashKey('Granger') or
        --     GetEntityModel(vehicle) == GetHashKey('mule3')
        --   then
        --     TriggerServerEvent('esx_service:disableService', 'gang')
        --   end

         -- end

        ESX.Game.DeleteVehicle(CurrentActionData.vehicle)

        -- local station = CurrentActionData.station
        -- local vehicles = Config.families[station].AuthorizedVehicles
        -- local vehicle = GetEntityModel(CurrentActionData.vehicle)
        -- for i=1, #vehicles, 1 do
        --   if vehicle == GetHashKey(vehicles.name) then
        --   ESX.Game.DeleteVehicle(CurrentActionData.vehicle)
        --   end
        -- end

      elseif CurrentAction == 'menu_boss_actions' then

         ESX.UI.Menu.CloseAll()

         TriggerEvent('irrp_families:openBossMenu', CurrentActionData.station, function(data, menu)

          menu.close()

          CurrentAction     = 'menu_boss_actions'
          CurrentActionMsg  = _U('open_bossmenu')
          CurrentActionData = {}

         end)

       end

       CurrentAction = nil
      GUI.Time      = GetGameTimer()

     end

   end


 end
end)

RegisterCommand('fm', function(source)
  if PlayerData.family ~= nil and ESX.GetPlayerData()['jailed'] == 0 and PlayerData.family.label == 'family' and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'gang_actions')  then
   OpenGangActionsMenu()
  else
    ESX.ShowNotification('Shoma Ozv Family Nistid!')
  end
end, false)

RegisterCommand('familymenu', function(source)
  if PlayerData.family ~= nil and ESX.GetPlayerData()['jailed'] == 0 and PlayerData.family.label == 'family' and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'gang_actions')  then
   OpenGangActionsMenu()
  else
    ESX.ShowNotification('Shoma Ozv Family Nistid!')
  end
end, false)

Citizen.CreateThread(function()
  TriggerEvent('chat:addSuggestion', '/fm', 'Menu family')
  TriggerEvent('chat:addSuggestion', '/familymenu', 'Menu family')
end)

---------------------------------------------------------------------------------------------------------
-- NB : gestion des menu
---------------------------------------------------------------------------------------------------------

RegisterNetEvent('NB:openMenuGang')
AddEventHandler('NB:openMenuGang', function()
OpenGangActionsMenu()
end)
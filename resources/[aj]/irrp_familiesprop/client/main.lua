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

local PlayerData                = {}
local GUI                       = {}
local HasAlreadyEnteredMarker   = false
local LastStation               = nil
local LastPart                  = nil
local LastPartNum               = nil
local LastEntity                = nil
local CurrentAction             = nil
local CurrentActionMsg          = ''
local CurrentActionData         = {}
local IsHandcuffed              = false
local IsDragged                 = false
local CopPed                    = 0
local allBlip                   = {}

ESX                             = nil
GUI.Time                        = 0

Citizen.CreateThread(function()
while ESX == nil do
  TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
  Citizen.Wait(0)
end
end)

function SetVehicleMods(vehicle, family)
  local props = {}
  for k,v in pairs(Config.families) do
    if k == family then
      props = v.VehicleProp
      break
    end
  end

  ESX.Game.SetVehicleProperties(vehicle, props)

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
      align    = 'top-left',
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
      align    = 'top-left',
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
      align    = 'top-left',
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

function OpenVehicleSpawnerMenu(station, partNum)

 local vehicles = Config.families[station].Vehicles

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
--         align    = 'top-left',
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

  for i=1, #Config.families[station].AuthorizedVehicles, 1 do
    local vehicle = Config.families[station].AuthorizedVehicles[i]
    table.insert(elements, {label = vehicle.label, value = vehicle.name})
  end

   ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'vehicle_spawner',
    {
      title    = _U('vehicle_menu'),
      align    = 'top-left',
      elements = elements,
    },
    function(data, menu)

       menu.close()

       local model = data.current.value

       local vehicle = GetClosestVehicle(vehicles[partNum].SpawnPoint.x,  vehicles[partNum].SpawnPoint.y,  vehicles[partNum].SpawnPoint.z,  3.0,  0,  71)

       if not DoesEntityExist(vehicle) then
        local playerPed = GetPlayerPed(-1)
        ESX.Game.SpawnVehicle(model, {
        x = vehicles[partNum].SpawnPoint.x,
        y = vehicles[partNum].SpawnPoint.y,
        z = vehicles[partNum].SpawnPoint.z
        }, vehicles[partNum].Heading, function(vehicle)
        TaskWarpPedIntoVehicle(playerPed,  vehicle,  -1)
        SetVehicleMods(vehicle, station)
        end)

       else
        ESX.ShowNotification(_U('vehicle_out'))
      end

     end,
    function(data, menu)

      menu.close()

      CurrentAction     = 'menu_vehicle_spawner'
      CurrentActionMsg  = _U('vehicle_spawner')
      CurrentActionData = {station = station, partNum = partNum}

     end
  )

 -- end

end

function OpenGangActionsMenu()

 ESX.UI.Menu.CloseAll()

 ESX.UI.Menu.Open(
  'default', GetCurrentResourceName(), 'gang_actions',
  {
    title    = PlayerData.family.name,
    align    = 'top-left',
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
          align    = 'top-left',
          elements = {
            {label = _U('search'),        value = 'body_search'},
            {label = _U('handcuff'),    value = 'handcuff'},
            {label = _U('drag'),      value = 'drag'},
            {label = _U('put_in_vehicle'),  value = 'put_in_vehicle'},
            {label = _U('out_the_vehicle'), value = 'out_the_vehicle'},
          },
        },
        function(data2, menu2)

           local player, distance = ESX.Game.GetClosestPlayer()

           if distance ~= -1 and distance <= 3.0 then

             if data2.current.value == 'body_search' then
              OpenBodySearchMenu(player)
            end

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
          align    = 'top-left',
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
      align    = 'top-left',
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
      align    = 'top-left',
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
    align    = 'top-left',
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
      align    = 'top-left',
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
            OpenGetStocksMenu(family)
            TriggerServerEvent('irrp_families:getStockItem', family, itemName, count)
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
TriggerEvent('irrp_familiesprop:blip', xPlayer.family.name)
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
PlayerData.job = job
end)

RegisterNetEvent('esx:setFamily')
AddEventHandler('esx:setFamily', function(family)
PlayerData.family = family
TriggerEvent('irrp_familiesprop:blip', family.name)
end)

RegisterNetEvent('irrp_familiesprop:blip')


RegisterCommand('family', function(args)
TriggerEvent('chatMessage',  "[Server]", {0, 0, 255}, ESX.DumpTable(PlayerData.family.name))
end, false)

-- Create blips
Citizen.CreateThread(function()
  AddEventHandler('irrp_familiesprop:blip', function(familyname)
    for _, blip in pairs(allBlip) do
      RemoveBlip(blip)
    end
    for k,v in pairs(Config.families) do
      if familyname == k then
        local blipMarker = v.Blip
        local blipCoord = AddBlipForCoord(blipMarker.Pos.x, blipMarker.Pos.y, blipMarker.Pos.z)
        table.insert(allBlip, blipCoord)
        SetBlipSprite (blipCoord, blipMarker.Sprite)
        SetBlipDisplay(blipCoord, blipMarker.Display)
        SetBlipScale  (blipCoord, blipMarker.Scale)
        SetBlipColour (blipCoord, blipMarker.Colour)
        SetBlipAsShortRange(blipCoord, true)
  
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Family')
        EndTextCommandSetBlipName(blipCoord)
      end
    end
  end)
end)

AddEventHandler('irrp_familiesprop:hasEnteredMarker', function(station, part, partNum)

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
  CurrentActionData = {station = station, partNum = partNum}
end

 if part == 'VehicleDeleter' then

  local playerPed = GetPlayerPed(-1)
  local coords    = GetEntityCoords(playerPed)

  if IsPedInAnyVehicle(playerPed,  false) then

    local vehicle = GetVehiclePedIsIn(playerPed, false)

    if DoesEntityExist(vehicle) then
      CurrentAction     = 'delete_vehicle'
      CurrentActionMsg  = _U('store_vehicle')
      CurrentActionData = {vehicle = vehicle, station = station, partNum = partNum}
    end

  end

 end

 if part == 'BossActions' then
  CurrentAction     = 'menu_boss_actions'
  CurrentActionMsg  = _U('open_bossmenu')
  CurrentActionData = {station = station}
end

end)

AddEventHandler('irrp_familiesprop:hasExitedMarker', function(station, part, partNum)
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
  if PlayerData.family ~= nil then
    for k,v in pairs(Config.families) do
      if PlayerData.family.name == k then

        for i=1, #v.Cloakrooms, 1 do
          if GetDistanceBetweenCoords(coords,  v.Cloakrooms[i].x,  v.Cloakrooms[i].y,  v.Cloakrooms[i].z,  true) < Config.DrawDistance then
            DrawMarker(Config.MarkerType, v.Cloakrooms[i].x, v.Cloakrooms[i].y, v.Cloakrooms[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
          end
        end

        for i=1, #v.Armories, 1 do
          if GetDistanceBetweenCoords(coords,  v.Armories[i].x,  v.Armories[i].y,  v.Armories[i].z,  true) < Config.DrawDistance then
            DrawMarker(Config.MarkerType, v.Armories[i].x, v.Armories[i].y, v.Armories[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
          end
        end

        for i=1, #v.Vehicles, 1 do
          if GetDistanceBetweenCoords(coords,  v.Vehicles[i].Spawner.x,  v.Vehicles[i].Spawner.y,  v.Vehicles[i].Spawner.z,  true) < Config.DrawDistance then
            DrawMarker(Config.MarkerType, v.Vehicles[i].Spawner.x, v.Vehicles[i].Spawner.y, v.Vehicles[i].Spawner.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
          end
        end

        for i=1, #v.VehicleDeleters, 1 do
          if GetDistanceBetweenCoords(coords,  v.VehicleDeleters[i].x,  v.VehicleDeleters[i].y,  v.VehicleDeleters[i].z,  true) < Config.DrawDistance then
            DrawMarker(Config.MarkerType, v.VehicleDeleters[i].x, v.VehicleDeleters[i].y, v.VehicleDeleters[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
          end
        end

        if Config.EnablePlayerManagement and PlayerData.family ~= nil then

          for i=1, #v.BossActions, 1 do
            if not v.BossActions[i].disabled and GetDistanceBetweenCoords(coords,  v.BossActions[i].x,  v.BossActions[i].y,  v.BossActions[i].z,  true) < Config.DrawDistance then
              DrawMarker(Config.MarkerType, v.BossActions[i].x, v.BossActions[i].y, v.BossActions[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
            end
          end

        end
        break
      end
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
    local currentPartNum = nil

    for k,v in pairs(Config.families) do
      if PlayerData.family.name == k then
        for i=1, #v.Cloakrooms, 1 do

          if GetDistanceBetweenCoords(coords,  v.Cloakrooms[i].x,  v.Cloakrooms[i].y,  v.Cloakrooms[i].z,  true) < Config.MarkerSize.x then
            isInMarker     = true
            currentStation = k
            currentPart    = 'Cloakroom'
            currentPartNum = i
          end
        end

        for i=1, #v.Armories, 1 do
          if GetDistanceBetweenCoords(coords,  v.Armories[i].x,  v.Armories[i].y,  v.Armories[i].z,  true) < Config.MarkerSize.x then
            isInMarker     = true
            currentStation = k
            currentPart    = 'Armory'
            currentPartNum = i
          end
        end

        for i=1, #v.Vehicles, 1 do

          if GetDistanceBetweenCoords(coords,  v.Vehicles[i].Spawner.x,  v.Vehicles[i].Spawner.y,  v.Vehicles[i].Spawner.z,  true) < Config.MarkerSize.x then
            isInMarker     = true
            currentStation = k
            currentPart    = 'VehicleSpawner'
            currentPartNum = i
          end

          if GetDistanceBetweenCoords(coords,  v.Vehicles[i].SpawnPoint.x,  v.Vehicles[i].SpawnPoint.y,  v.Vehicles[i].SpawnPoint.z,  true) < Config.MarkerSize.x then
            isInMarker     = true
            currentStation = k
            currentPart    = 'VehicleSpawnPoint'
            currentPartNum = i
          end

        end

        for i=1, #v.VehicleDeleters, 1 do
          if GetDistanceBetweenCoords(coords,  v.VehicleDeleters[i].x,  v.VehicleDeleters[i].y,  v.VehicleDeleters[i].z,  true) < Config.MarkerSize.x then
            isInMarker     = true
            currentStation = k
            currentPart    = 'VehicleDeleter'
            currentPartNum = i
          end
        end

        if PlayerData.family ~= nil and PlayerData.family.label == 'family' and PlayerData.family.grade == 6 then

          for i=1, #v.BossActions, 1 do
            if GetDistanceBetweenCoords(coords,  v.BossActions[i].x,  v.BossActions[i].y,  v.BossActions[i].z,  true) < Config.MarkerSize.x then
              isInMarker     = true
              currentStation = k
              currentPart    = 'BossActions'
              currentPartNum = i
            end
          end

        end
      end
    end

    local hasExited = false

    if isInMarker and not HasAlreadyEnteredMarker or (isInMarker and (LastStation ~= currentStation or LastPart ~= currentPart or LastPartNum ~= currentPartNum) ) then

      if
        (LastStation ~= nil and LastPart ~= nil and LastPartNum ~= nil) and
        (LastStation ~= currentStation or LastPart ~= currentPart or LastPartNum ~= currentPartNum)
      then
        TriggerEvent('irrp_familiesprop:hasExitedMarker', LastStation, LastPart, LastPartNum)
        hasExited = true
      end

      HasAlreadyEnteredMarker = true
      LastStation             = currentStation
      LastPart                = currentPart
      LastPartNum             = currentPartNum

      TriggerEvent('irrp_familiesprop:hasEnteredMarker', currentStation, currentPart, currentPartNum)
    end

    if not hasExited and not isInMarker and HasAlreadyEnteredMarker then

      HasAlreadyEnteredMarker = false

      TriggerEvent('irrp_familiesprop:hasExitedMarker', LastStation, LastPart, LastPartNum)
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
        OpenVehicleSpawnerMenu(CurrentActionData.station, CurrentActionData.partNum)
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
  if PlayerData.family ~= nil and PlayerData.family.label == 'family' and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'gang_actions')  then
   OpenGangActionsMenu()
  end
end, false)
RegisterCommand('familymenu', function(source)
  if PlayerData.family ~= nil and PlayerData.family.label == 'family' and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'gang_actions')  then
   OpenGangActionsMenu()
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
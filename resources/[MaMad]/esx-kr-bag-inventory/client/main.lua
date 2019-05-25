ESX = nil

local HasBag = false
local Bags = {}
local BagId = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
    -- On restart check down below.
    if ESX.IsPlayerLoaded() then
        ESX.TriggerServerCallback('esx-kr-bag:getAllBags', function(bags)
            if bags ~= nil then
                for i=1, #bags, 1 do
                    TriggerEvent('esx-kr-bag:SpawnBagIntoClient', bags[i].x, bags[i].y, bags[i].z)
                    TriggerEvent('esx-kr-bag:insertIntoClient', bags[i].id)
                end
            end
            ESX.TriggerServerCallback('esx-kr-bag:getBag', function(bag)
                if bag ~= nil then
                    BagId = bag.bag[1].id
                    HasBag = true
                    TriggerEvent('esx-kr-bag:SetOntoPlayer')
                end
            end)
        end)
    end
end)

-- TODO: we have to check if the player is loaded cause arithmetics does'nt work the other way...
Citizen.CreateThread(function()
    while true do
        local wait = 500
        for i=1, #Bags, 1 do
            local playercoords = GetEntityCoords(PlayerPedId())
            if GetDistanceBetweenCoords(playercoords, Bags[i].id.coords.x, Bags[i].id.coords.y, Bags[i].id.coords.z, true) <= 1.5 then
				wait = 10
				if not HasBag then
					Draw3DText(Bags[i].id.coords.x, Bags[i].id.coords.y, Bags[i].id.coords.z + 0.45, _U('bag_pickup'))
                end
				if Config.EnableSearching then
					Draw3DText(Bags[i].id.coords.x, Bags[i].id.coords.y, Bags[i].id.coords.z + 0.35, _U('bag_search'))
				end
                if IsControlJustReleased(0, Config.GrabKey) and not HasBag then
                    loadAnimDict( "missheist_agency2aig_13" )
					TaskPlayAnim(PlayerPedId(), "missheist_agency2aig_13", "pickup_briefcase", 8.0, 2.0, -1, 2, 0.0, 0, 0, 1)
					Citizen.Wait(1600)
					ClearPedTasks(PlayerPedId())
					HasBag = true
                    BagId = Bags[i].id.id
                    local Bag = GetClosestObjectOfType(Bags[i].id.coords.x, Bags[i].id.coords.y, Bags[i].id.coords.z, 1.5, 1626933972, false, false, false)
                    NetworkFadeOutEntity(Bag, false, false)
                    DeleteObject(Bag)
                    TriggerServerEvent('esx-kr-bag:PickUpBag', Bags[i].id.id)
                end
                if IsControlJustReleased(0, Config.SearchKey) and Config.EnableSearching and not HasBag then
					TaskStartScenarioInPlace(PlayerPedId(), 'CODE_HUMAN_MEDIC_KNEEL', 0, false)
					BagIdOld = BagId
					BagId = Bags[i].id.id
					onGround = 1
                    TakeItem(onGround)
					BagId = BagIdOld
					Citizen.Wait(5000)
				end
            end
        end
        Citizen.Wait(wait)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if (IsControlJustReleased(0,Config.Key) or IsDisabledControlJustReleased(0,Config.Key)) and GetLastInputMethod(0) and HasBag and not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not IsEntityInAir(PlayerPedId()) then
			loadAnimDict( "reaction@intimidation@cop@unarmed" )
			TaskPlayAnim(PlayerPedId(), "reaction@intimidation@cop@unarmed", "intro", 8.0, 2.0, -1, 2, 0.0, 0, 0, 1)
			
			--loadAnimDict( "reaction@intimidation@1h" )
			--TaskPlayAnim(PlayerPedId(), "reaction@intimidation@1h", "intro", 8.0, 2.0, -1, 2, 0.0, 0, 0, 1)
			Citizen.Wait(1600)
			Bag()
        end
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    Citizen.Wait(200)
    PlayerData = xPlayer
    ESX.TriggerServerCallback('esx-kr-bag:getAllBags', function(bags)
        if bags ~= nil then
            for i=1, #bags, 1 do
                TriggerEvent('esx-kr-bag:SpawnBagIntoClient', bags[i].x, bags[i].y, bags[i].z)
                TriggerEvent('esx-kr-bag:insertIntoClient', bags[i].id)
            end
        end
        ESX.TriggerServerCallback('esx-kr-bag:getBag', function(bag)
            if bag ~= nil then
                BagId = bag.bag[1].id
                HasBag = true
                TriggerEvent('esx-kr-bag:SetOntoPlayer')
            end
        end)
    end)
end)

RegisterNetEvent('esx-kr-bag:SetOntoPlayer')
AddEventHandler('esx-kr-bag:SetOntoPlayer', function(id)
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
        if HasBag and skin.bags_1 ~= 45 then
            TriggerEvent('skinchanger:change', "bags_1", 45)
            TriggerEvent('skinchanger:change', "bags_2", 0)
            TriggerEvent('skinchanger:getSkin', function(skin)
            TriggerServerEvent('esx_skin:save', skin)
            end)
        end
    end)
end)


RegisterNetEvent('esx-kr-bag:insertIntoClient')
AddEventHandler('esx-kr-bag:insertIntoClient', function(id)
    ESX.TriggerServerCallback('esx-kr-bag:getAllBags', function(bags)
        for i=1, #bags, 1 do
            table.insert(Bags, {id = {coords = {x = bags[i].x, y = bags[i].y, z = bags[i].z}, id = bags[i].id}})
        end
    end)
end)

RegisterNetEvent('esx-kr-bag:ReSync')
AddEventHandler('esx-kr-bag:ReSync', function(id)
    Bags = {}

    ESX.TriggerServerCallback('esx-kr-bag:getAllBags', function(bags)
        for i=1, #bags, 1 do
            table.insert(Bags, {id = {coords = {x = bags[i].x, y = bags[i].y, z = bags[i].z}, id = bags[i].id}})
        end
    end)
end)

RegisterNetEvent('esx-kr-bag:GiveBag')
AddEventHandler('esx-kr-bag:GiveBag', function()
    ESX.TriggerServerCallback('esx-kr-bag:getBag', function(bag)
        if bag ~= nil then
            BagId = bag.bag[1].id
            HasBag = true
            TriggerEvent('esx-kr-bag:SetOntoPlayer')
        end
    end)
end)

RegisterNetEvent('esx-kr-bag:CheckBag')
AddEventHandler('esx-kr-bag:CheckBag', function()
    if HasBag then
        return true
    else
        return false
    end
end)

RegisterNetEvent('esx-kr-bag:SpawnBagIntoClient')
AddEventHandler('esx-kr-bag:SpawnBagIntoClient', function(x, y ,z)
    local coords3 = {
        x = x, 
        y = y, 
        z = z
    }

    ESX.Game.SpawnObject(1626933972, coords3, function(bag)
        FreezeEntityPosition(bag, true)
        SetEntityAsMissionEntity(object, true, false)
        SetEntityCollision(bag, false, true)
    end)
end)

function Draw3DText(x, y, z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
    local scale = 0.25
   
    if onScreen then
        SetTextScale(scale, scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(1, 1, 0, 0, 255)
        SetTextEdge(0, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(2)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

function Bag()
	ESX.TriggerServerCallback('esx-kr-bag:getBag', function(bag)
		local elements = {}
		table.insert(elements, {label = _U('put_object'), value = 'put',})
		table.insert(elements, {label = _U('take_object'), value = 'take',})
		if bag ~= nil then
			itemcounter = bag.bag[1].itemcount
			
			if itemcounter > 0 then
				table.insert(elements, {label = _U('bag_drop'), value = 'drop'})
			else
				table.insert(elements, {label = _U('bag_drop'), value = 'drop'})
				table.insert(elements, {label = _U('bag_restore'), value = 'restore'})
			end
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'lel',
				{
				title    = 'Bag',
				align    = 'bottom-right',
				elements = elements,
				}, function(data, menu)
				if data.current.value == 'put' then
					PutItem()
				elseif data.current.value == 'take'then
					onGround = 0
					TakeItem(onGround)
				elseif data.current.value == 'restore' then
					RestoreBag()
				elseif data.current.value == 'drop' then
					DropBag()
					ClearPedTasks(PlayerPedId())
				end
			end, function(data, menu)
				ClearPedTasks(PlayerPedId())
				menu.close()
			end)
		else
			ClearPedTasks(PlayerPedId())
			ESX.ShowNotification(_U('bag_empty'))
		end
	end)
end

function DropBag()
    ESX.UI.Menu.CloseAll()
    HasBag = false
	loadAnimDict( "missheist_agency2aig_13" )
	TaskPlayAnim(PlayerPedId(), "missheist_agency2aig_13", "pickup_briefcase", 8.0, 2.0, -1, 2, 0.0, 0, 0, 1)
	Citizen.Wait(1600)

    local coords1 = GetEntityCoords(PlayerPedId())
    local headingvector = GetEntityForwardVector(PlayerPedId())
    local x, y, z = table.unpack(coords1 + headingvector * 1.0)
    local coords2 = 
		{
		x = x,
		y = y,
		z = z - 1
		}
    z2 = z - 1

	TriggerServerEvent('esx-kr-bag:DropBag', BagId, x, y, z2)
    ESX.Game.SpawnObject(1626933972, coords2, function(bag)
		FreezeEntityPosition(bag, true)
		SetEntityCollision(bag, false, true)
		TriggerEvent('skinchanger:change', "bags_1", 0)
		TriggerEvent('skinchanger:change', "bags_2", 0)
		TriggerEvent('skinchanger:getSkin', function(skin)
			TriggerServerEvent('esx_skin:save', skin)
        end)
    end)
end

function RestoreBag()
	ClearPedTasks(PlayerPedId())
	ESX.TriggerServerCallback('esx-kr-bag:getBag', function(bag)
		-- fix to prevent restoring if items in there
		if (bag.bag[1].itemcount == 0) then
			ESX.UI.Menu.CloseAll()
			HasBag = false
			TriggerServerEvent('esx-kr-bag:RestoreBag', BagId)
			TriggerEvent('skinchanger:change', "bags_1", 0)
			TriggerEvent('skinchanger:change', "bags_2", 0)
			TriggerEvent('skinchanger:getSkin', function(skin)
				TriggerServerEvent('esx_skin:save', skin)
			end)
		end
	end)
end

function IsWeapon(item)
    local hash = GetHashKey(item)
    local IsWeapon = IsWeaponValid(hash)
    
    if IsWeapon then 
        return true 
    else 
        return false 
    end
end

function TakeItem(onGround)
    local elements = {}
	
    ESX.TriggerServerCallback('esx-kr-bag:getBagInventory', function(bag)
		if bag == false then
			if onGround == 1 then
				ClearPedTasks(PlayerPedId())
				ESX.ShowNotification(_U('bag_empty'))
			else
				ESX.ShowNotification(_U('bag_empty'))
			end
		else
			for i=1, #bag, 1 do
				if bag[i].type == 'cash' then
					table.insert(elements, {
					label = _U('cash')..' ('.. bag[i].count..')', 
					item = 'cash', 
					count = bag[i].count,
					})
				end
				if bag[i].type == 'blackmoney' then
					table.insert(elements, {
					label = _U('black')..' ('.. bag[i].count..')', 
					item = 'blackmoney', 
					count = bag[i].count,
					})
				end
				if bag[i].type == 'weapon' then
					table.insert(elements, {
					label = bag[i].label .. ' (' .. bag[i].count .. ')', 
					item = bag[i].item, 
					count = bag[i].count,
					})
				end
				if bag[i].type == 'item' then
					table.insert(elements, {
					label = bag[i].label .. ' | ' .. bag[i].count .. 'x', 
					item = bag[i].item, 
					count = bag[i].count,
					
					value      = 1,
					type       = 'slider',
					min        = 1,
					max        = bag[i].count
					})
				end
			end
		
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'lels',
			{
				title    = 'Bag',
				align    = 'bottom-right',
				elements = elements
			}, function(data, menu)

				local IsWeapon = IsWeapon(data.current.item)
				menu.close()
				if IsWeapon then
					TriggerServerEvent('esx-kr-bag:TakeItem', BagId, data.current.item, data.current.count, "weapon")
					GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(data.current.item), 0, false, true)
					if onGround == 1 then
						ClearPedTasks(PlayerPedId())
					end
				elseif data.current.item == 'cash' then
					ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'inventory_item_count_give', {
					title = _U('amount')
					}, function(data2, menu2)
						local quantity = tonumber(data2.value)
						if quantity ~= nil then
							TriggerServerEvent('esx-kr-bag:TakeItem', BagId, data.current.item, quantity, 'cash')
							menu2.close()
							menu.close()
							if onGround == 1 then
								ClearPedTasks(PlayerPedId())
							end
						else
							ESX.ShowNotification(_U('amount_invalid'))
							if onGround == 1 then
								ClearPedTasks(PlayerPedId())
							end
							menu2.close()
						end
					end, function(data2, menu2)
						menu2.close()
					end)
				elseif data.current.item == 'blackmoney' then
					ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'inventory_item_count_give', {
					title = _U('amount')
					}, function(data2, menu2)
						local quantity = tonumber(data2.value)
						if quantity ~= nil then
							TriggerServerEvent('esx-kr-bag:TakeItem', BagId, data.current.item, quantity, "blackmoney")
							menu2.close()
							menu.close()
							if onGround == 1 then
								ClearPedTasks(PlayerPedId())
							end
						else
							ESX.ShowNotification(_U('amount_invalid'))
							if onGround == 1 then
								ClearPedTasks(PlayerPedId())
							end
							menu2.close()
						end
					end, function(data2, menu2)
						menu2.close()
					end)
				else
					TriggerServerEvent('esx-kr-bag:TakeItem', BagId, data.current.item, data.current.value, 'item')
					if onGround == 1 then
						ClearPedTasks(PlayerPedId())
					end
				end
				end, function(data, menu)
				menu.close()
				Bag()
			end)
		end
    end, BagId)
end

function PutItem()
    local elements = {}
    ESX.TriggerServerCallback('esx-kr-bag:getPlayerInventory', function(result)
		PlayerData = ESX.GetPlayerData()
		for i=1, 1, 1 do
			--CASH
			if (PlayerData.money > 0) and (Config.Cash == true) then
				table.insert(elements, {
					label     = _U('cash')..' ('..PlayerData.money..')',
					count     = PlayerData.money,
					type      = 'cash',
				})
			end
			--BLACKMONEY
			if (PlayerData.accounts[2].money > 0) and (Config.Black == true) then
				table.insert(elements, {
					label     = _U('black')..' ('..PlayerData.accounts[2].money..')',
					count     = PlayerData.accounts[2].money,
					type  = 'blackmoney',
				})
			end
		end
		
		for i=1, #result.items, 1 do
			local invitem = result.items[i]
			if invitem.count > 0 then
				if invitem.count < Config.MaxItemCount then
					maxInput = invitem.count
				else
					maxInput = Config.MaxItemCount
				end
				--ITEMS				
                   table.insert(elements, { 
				label = invitem.label .. ' | ' .. invitem.count .. 'x', 
				count = invitem.count, 
				name  = invitem.name, 
				label2 = invitem.label,
				
				value      = 1,
				type       = 'slider',
				min        = 1,
				max        = maxInput
				})
            end
        end
			
		local weaponList = ESX.GetWeaponList()
        for i=1, #weaponList, 1 do
            local weaponHash = GetHashKey(weaponList[i].name)
            local ammo = GetAmmoInPedWeapon(GetPlayerPed(-1), weaponHash)
            if HasPedGotWeapon(GetPlayerPed(-1), weaponHash, false) and weaponList[i].name ~= 'WEAPON_UNARMED' then
                table.insert(elements, {
					label = weaponList[i].label .. ' | ' .. ammo .. 'x', 
					name = weaponList[i].name, 
					count = ammo, 
					label2 = weaponList[i].label
				})
            end
        end
        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'lel3',
        {
            title    = 'Bag',
            align    = 'bottom-right',
            elements = elements
        }, function(data, menu)
				local IsWeapon = IsWeapon(data.current.name)
				menu.close()
				if IsWeapon then
					TriggerServerEvent('esx-kr-bag:PutItem', BagId, data.current.name, data.current.label2, data.current.count, 'weapon')
				elseif data.current.type == 'cash' then
					ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'inventory_item_count_give', {
						title = _U('amount')
					}, function(data2, menu2)
							local quantity = tonumber(data2.value)
							if quantity ~= nil then
								TriggerServerEvent('esx-kr-bag:PutItem', BagId, 'cash', _U('cash'), quantity, 'cash')
								menu2.close()
								menu.close()
							else
								ESX.ShowNotification(_U('amount_invalid'))
							end
						end, function(data2, menu2)
						menu2.close()
					end)
				elseif data.current.type == 'blackmoney' then
					ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'inventory_item_count_give', {
						title = _U('amount')
						}, function(data2, menu2)
							local quantity = tonumber(data2.value)
							if quantity ~= nil then
								TriggerServerEvent('esx-kr-bag:PutItem', BagId, 'blackmoney', _U('cash'), quantity, 'blackmoney')
								menu2.close()
								menu.close()
							else
								ESX.ShowNotification(_U('amount_invalid'))
							end
						end, function(data2, menu2)
						menu2.close()
					end)
				else
					TriggerServerEvent('esx-kr-bag:PutItem', BagId, data.current.name, data.current.label2, data.current.value, 'item')
				end
			end, function(data, menu)
			menu.close()
		end)
    end)
end

function loadAnimDict(dict)
	RequestAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		Citizen.Wait(0)
	end
end
ESX = nil
local IsDead = false

pistol = {453432689, 3219281620, 1593441988, -1716589765, -1076751822, -771403250, 137902532, -598887786, -1045183535, 584646201}
mg = {324215364, -619010992, 736523883, 2024373456, -270015777, 171789620, -1660422300, 2144741730, 3686625920, 1627465347, -1121678507}
ar = {-1074790547, 961495388, -2084633992, 4208062921, -1357824103, -1063057011, 2132975508, 1649403952}
sg = {487013001, 2017895192, -1654528753, -494615257, -1466123874, 984333226, -275439685, 317205821}

supp1 = {-2084633992, -1357824103, 2132975508, -494615257}
supp2 = {-1716589765, 324215364, -270015777, -1074790547, -1063057011, -1654528753, 984333226}
supp3 = {1593441988, -771403250, 584646201, 137902532, 736523883}
supp4 = {487013001}

flash1 = {453432689, 1593441988, 584646201, -1716589765, -771403250, 324215364}
flash2 = {736523883, -270015777, 171789620, -1074790547, -2084633992, -1357824103, -1063057011, 2132975508, 487013001, -494615257, -1654528753, 984333226}

grip1 = {171789620, -1074790547, -2084633992, -1063057011, 2132975508, 2144741730, -494615257, -1654528753, 984333226}


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

AddEventHandler('playerSpawned', function()
    used = 0
    used2 = 0
    used3 = 0
    used4 = 0
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)
local used = 0
local used2 = 0
local used3 = 0

RegisterNetEvent('nfw_wep:SmallArmor')
AddEventHandler('nfw_wep:SmallArmor', function()
    local inventory = ESX.GetPlayerData().inventory
    local ped = GetPlayerPed(-1)
    local armor = GetPedArmour(ped)
    local item = 'SmallArmor'

    if(armor >= 100) or (armor+30 > 100) then
        exports['mythic_notify']:DoHudText('inform', 'Your armor is already maxed!')
        TriggerServerEvent('returnItem', item)
        return
    end

    TriggerEvent('mythic_progbar:client:progress', {
        name = 'smallb_armor',
        duration = 5000,
        label = 'Applying Light Body Armor...',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "rcmfanatic3",
            anim = "kneel_idle_a",
        },
        prop = {
            model = "prop_bodyarmour_02",
        }
    }, function(status)
        if not status then
            SetPedComponentVariation(ped, 9, 10, 0, 0)
            AddArmourToPed(ped, 30)
            exports['mythic_notify']:DoHudText('inform', 'You have put on Light Body Armor.')
        end
    end)
end)

RegisterNetEvent('nfw_wep:MedArmor')
AddEventHandler('nfw_wep:MedArmor', function()
    local inventory = ESX.GetPlayerData().inventory
    local ped = GetPlayerPed(-1)
    local armor = GetPedArmour(ped)
    local item = 'MedArmor'

    if(armor >= 100) or (armor+30 > 100) then
        exports['mythic_notify']:DoHudText('inform', 'Your armor is already maxed!')
        TriggerServerEvent('returnItem', item)
        return
    end

    TriggerEvent('mythic_progbar:client:progress', {
        name = 'medb_armor',
        duration = 10000,
        label = 'Applying Medium Body Armor...',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "rcmfanatic3",
            anim = "kneel_idle_a",
        },
        prop = {
            model = "prop_bodyarmour_02",
        }
    }, function(status)
        if not status then
            SetPedComponentVariation(ped, 9, 10, 0, 0)
            AddArmourToPed(ped, 60)
            exports['mythic_notify']:DoHudText('inform', 'You have put on Medium Body Armor.')
        end
    end)
end)

RegisterNetEvent('nfw_wep:pAmmo')
AddEventHandler('nfw_wep:pAmmo', function()
    local ped = GetPlayerPed(-1)
    local currentWeaponHash = GetSelectedPedWeapon(ped)
    local ammo = GetAmmoInPedWeapon(ped, currentWeaponHash)
    local item = "pAmmo"

    if(ammo >= 250 or ammo + 50 > 250) then
        exports['mythic_notify']:DoHudText('inform', 'Your weapon ammo is already maxed!')
        TriggerServerEvent('returnItem', item)
        return
    end

    if table.includes(pistol, currentWeaponHash) then
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Pistol ammo')
        AddAmmoToPed(ped, currentWeaponHash, 50)
    else
        exports['mythic_notify']:DoHudText('inform', 'This weapon is not compatible with this ammo')
        TriggerServerEvent('returnItem', item)
    end
end)

RegisterNetEvent('nfw_wep:mgAmmo')
AddEventHandler('nfw_wep:mgAmmo', function()
    local ped = GetPlayerPed(-1)
    local currentWeaponHash = GetSelectedPedWeapon(ped)
    local ammo = GetAmmoInPedWeapon(ped, currentWeaponHash)
    local item = "mgAmmo"

    if(ammo >= 250 or ammo + 50 > 250) then
        exports['mythic_notify']:DoHudText('inform', 'Your weapon ammo is already maxed!')
        TriggerServerEvent('returnItem', item)
        return
    end

    if table.includes(mg, currentWeaponHash) then
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Machine Gun ammo')
        AddAmmoToPed(ped, currentWeaponHash, 50)
    else
        exports['mythic_notify']:DoHudText('inform', 'This weapon is not compatible with this ammo')
        TriggerServerEvent('returnItem', item)
    end
end)

RegisterNetEvent('nfw_wep:arAmmo')
AddEventHandler('nfw_wep:arAmmo', function()
    local ped = GetPlayerPed(-1)
    local currentWeaponHash = GetSelectedPedWeapon(ped)
    local ammo = GetAmmoInPedWeapon(ped, currentWeaponHash)
    local item = "arAmmo"

    if(ammo >= 250 or ammo + 50 > 250) then
        exports['mythic_notify']:DoHudText('inform', 'Your weapon ammo is already maxed!')
        TriggerServerEvent('returnItem', item)
        return
    end

    if table.includes(ar, currentWeaponHash) then
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Assault Rifle ammo')
        AddAmmoToPed(ped, currentWeaponHash, 50)
    else
        exports['mythic_notify']:DoHudText('inform', 'This weapon is not compatible with this ammo')
        TriggerServerEvent('returnItem', item)
    end
end)

RegisterNetEvent('nfw_wep:sgAmmo')
AddEventHandler('nfw_wep:sgAmmo', function()
    local ped = GetPlayerPed(-1)
    local currentWeaponHash = GetSelectedPedWeapon(ped)
    local ammo = GetAmmoInPedWeapon(ped, currentWeaponHash)
    local item = "sgAmmo"

    if(ammo >= 250 or ammo + 50 > 250) then
        exports['mythic_notify']:DoHudText('inform', 'Your weapon ammo is already maxed!')
        TriggerServerEvent('returnItem', item)
        return
    end

    if table.includes(sg, currentWeaponHash) then
        exports['mythic_notify']:DoHudText('inform', 'Added 50 more Shotgun ammo')
        AddAmmoToPed(ped, currentWeaponHash, 50)
    else
        exports['mythic_notify']:DoHudText('inform', 'This weapon is not compatible with this ammo')
        TriggerServerEvent('returnItem', item)
    end
end)

function table.includes(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end
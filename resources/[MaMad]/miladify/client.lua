RegisterNetEvent('applyskin')
AddEventHandler('applyskin', function(skin)
    Citizen.CreateThread(function()
        local model = GetHashKey(skin)
        RequestModel(model)
        while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(0)
        end
        SetPlayerModel(PlayerId(), model)
        SetPedComponentVariation(GetPlayerPed(-1), 0, 0, 0, 2)
    end)
end)


TriggerEvent('addCommand', 'rchar', function(source)
    TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
        if skin == nil then
            TriggerEvent('skinchanger:loadSkin', {sex = 0}, OpenSaveableMenu)
        else
            TriggerEvent('skinchanger:loadSkin', skin)
        end
    end)
end)
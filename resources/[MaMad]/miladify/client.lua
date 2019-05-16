ESX = nil 
while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
end

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


RegisterNetEvent('resetchar')
AddEventHandler('resetchar', function(skin)
    print("reseting1")

	Citizen.CreateThread(function()
            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
                print("reseting2")
                    TriggerEvent('skinchanger:loadSkin', skin)
            end)
		end
	end)
end)

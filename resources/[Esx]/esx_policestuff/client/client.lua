RegisterNetEvent('esx_policestuff:sendProximityMessage')
AddEventHandler('esx_policestuff:sendProximityMessage', function(playerId, title, message, color)
    local source = PlayerId()
    local target = GetPlayerFromServerId(playerId)

    local sourcePed, targetPed = PlayerPedId(), GetPlayerPed(target)
    local sourceCoords, targetCoords = GetEntityCoords(sourcePed), GetEntityCoords(targetPed)

    if target == source then
        TriggerEvent('chat:addMessage', { args = { title, message }, color = color })
    elseif GetDistanceBetweenCoords(sourceCoords, targetCoords, true) < 20 then
        TriggerEvent('chat:addMessage', { args = { title, message }, color = color })
    end
end)
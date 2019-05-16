local skins = {
    ['steam:110000110d40cf8'] = 'a_m_m_genfat_01',
    ['steam:11000010a1b83df'] = 'a_c_husky',
}

RegisterServerEvent('modelpedspawn')
AddEventHandler('modelpedspawn', function(skin)
    TriggerClientEvent("applyskin", source, skin)
end)


TriggerEvent('es:addCommand', 'cfix', function(source)
    local steamID = nil
    for k,v in ipairs(GetPlayerIdentifiers(source)) do
        if string.sub(v, 1, 5) == "steam" then
            steamID = string.lower(v)
            break
        end
    end
    local skin = nil
    if skins[steamID] ~= nil then
        skin = skins[steamID]
        TriggerClientEvent("applyskin", source, skin)
    end
end)



TriggerEvent('es:addCommand', 'rchar', function(source)
    TriggerClientEvent("resetchar", source)
end)
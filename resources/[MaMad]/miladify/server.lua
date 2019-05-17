local skins = {
    ['steam:110000110d40cf8'] = 'a_m_m_genfat_01', -- milad
    ['steam:11000010a1b83df'] = 'a_m_o_acult_01', -- mamad
    ['steam:110000118eae7af'] = 'a_c_mtlion',   -- hooman
    ['steam:11000010494a934'] = 'a_c_cat_01',   -- Ebi
    ['steam:110000111236158'] = 'a_c_retriever', -- matin
    ['steam:11000011783a55b'] = 'a_c_coyote', -- arman
    ['steam:11000010934a428'] = 's_f_y_shop_mid', -- Quiet
    ['steam:110000115e0be8a'] = 'a_c_cow'
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
    -- TriggerClientEvent("resetchar", source)
end)
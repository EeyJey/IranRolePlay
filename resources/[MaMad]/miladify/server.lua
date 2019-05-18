local skins = {
    ['steam:110000110d40cf8'] = 'a_m_m_genfat_01', -- Milad
    ['steam:11000010a1b83df'] = 'a_c_chickenhawk', -- Mamad
    ['steam:110000118eae7af'] = 'a_c_mtlion',   -- Hooman
    ['steam:11000010494a934'] = 'a_c_cat_01',   -- Ebi
    ['steam:110000111236158'] = 'a_c_retriever', -- Matin
    ['steam:11000011783a55b'] = 'u_m_y_pogo_01', -- Arman
    ['steam:11000010934a428'] = 'a_c_shepherd', -- Quiet
    ['steam:110000115e0be8a'] = 'cs_orleans',   -- Mehdijoker
    ['steam:110000107a78e07'] =  's_m_y_prismuscl_01', -- Arash
    ['steam:11000010f0a6439'] = 's_m_m_movalien_01'
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
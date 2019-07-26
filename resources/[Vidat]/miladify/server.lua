local skins = {
    ['steam:110000110d40cf8'] = 'a_m_m_fatlatin_01', -- Milad  a_m_m_genfat_01
    ['steam:11000010a1b83df'] = 'u_m_m_jesus_01', -- Mamad
    ['steam:110000118eae7af'] = 'ig_bankman',   -- Hooman
    ['steam:11000010494a934'] = 'a_c_cat_01',   -- Ebi
    ['steam:110000111236158'] = 'a_c_retriever', -- Matin
    ['steam:11000011783a55b'] = 'u_m_y_pogo_01', -- Arman
    -- ['steam:11000010934a428'] = 'a_c_shepherd', -- Quiet
    ['steam:110000115e0be8a'] = 'cs_orleans',   -- Mehdijoker
    ['steam:110000107a78e07'] =  'u_m_y_babyd', -- Arash
    ['steam:11000010f0a6439'] = 'a_c_cow', -- Peyman
    ['steam:110000111bb18cf'] = 'a_c_cat_01', -- Mahta
    ['steam:11000013befa730'] = 'a_f_y_topless_01', -- Corrupt Mind
    ['steam:110000136a6d885'] = 's_m_y_prismuscl_01', -- Sadface
    ['steam:110000134e34091'] = 'a_c_husky', -- Arash DEVIL
    ['steam:1100001075cbf80'] = 'a_c_rabbit_01', -- Rmin
    ['steam:11000011a939660'] = 'a_m_y_soucent_02', -- RaRa
    ['steam:11000011ae643c7'] = 'a_m_m_hasjew_01' -- Amberat
} 
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

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

-- TriggerEvent('es:addCommand', 'am', function(source)
--     local steamID = nil
--     for k,v in ipairs(GetPlayerIdentifiers(source)) do
--         if string.sub(v, 1, 5) == "steam" then
--             steamID = string.lower(v)
--             break
--         end
--     end
--     local skin = nil
--     print('shit1')
--     if skins[steamID] ~= nil then
--         skin = skins[steamID]
--         print('shit2')
--         local xPlayer = ESX.GetPlayerFromId(source)
--             xPlayer. ('bank',1000)
--     end
-- end)

TriggerEvent('es:addCommand', 'rchar', function(source)
    -- TriggerClientEvent("resetchar", source)
end)
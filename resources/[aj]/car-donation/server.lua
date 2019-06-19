admins = {
    -- 'steam:110000111fc352b',
    'steam:110000118eae7af',
    'steam:110000107a78e07',
    -- 'steam:11000010934a428',
    'steam:11000010a1b83df',
    'steam:11000011783a55b'
}

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('IsPlayerAdmin', function(source, cb)
    TriggerEvent('es:getPlayerFromId', source, function(user)
        TriggerEvent('es:canGroupTarget', user.getGroup(), "admin", function(bool)
            if bool then
                cb(true)
            else
                cb(false)
            end
        end)
    end)
end)

ESX.RegisterServerCallback('IsPlayerSuperAdmin', function(source, cb)
    local allowed = false
    for i,id in ipairs(admins) do
        for x,pid in ipairs(GetPlayerIdentifiers(player)) do
            if string.lower(pid) == string.lower(id) then
                allowed = true
            end
        end
    end
    cb(allowed)
end)
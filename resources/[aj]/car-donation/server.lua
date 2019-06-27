admins = {
    'steam:110000107a78e07',
    'steam:110000111fc352b',
    'steam:11000010a1b83df', -- MaMad Owner
    'steam:11000010494a934'  -- Obi Vika
	'steam:11000011783a55b'  -- Arman
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
    local identifier = GetPlayerIdentifiers(source)[1]
    for i,id in ipairs(admins) do
        if identifier == string.lower(id) then
            allowed = true
        end
    end
    cb(allowed)
end)
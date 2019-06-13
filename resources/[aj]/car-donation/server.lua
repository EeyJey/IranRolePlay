
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
    TriggerEvent('es:getPlayerFromId', source, function(user)
        TriggerEvent('es:canGroupTarget', user.getGroup(), "superadmin", function(v)
            if bool then
                cb(true)
            else
                cb(false)
            end
        end)
    end)
end)

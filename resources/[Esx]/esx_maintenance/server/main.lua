ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function getPlayerFromId(source)
    local identifiers = GetPlayerIdentifiers(source)
    local player = getIdentifier(identifiers)
    return player
end

function getIdentifier(id)
    for _, v in ipairs(id) do
        return v
    end
end

AddEventHandler('playerConnecting', function(peerName, setKickReason)
    local numIds = GetNumPlayerIdentifiers(source)
	for i,allowedID in ipairs(cfg.AllowedIDs) do
        for i = 0, numIds-3 do
			print("1", getPlayerFromId(source))
			print("2", allowedID)
            if cfg.isOnMaintenance and getPlayerFromId(source) ~= allowedID then
                print('-----------------ESX MAINTENANCE SYSTEM-----------')
                print('Dropping Connection for: [' .. peerName ..']      ')
                print('-----------------ESX MAINTENANCE SYSTEM-----------')
                
				setKickReason('Server dar daste sakht mibashad, Badan moraje e konid!')
				CancelEvent()
			end
		end
    end
end)

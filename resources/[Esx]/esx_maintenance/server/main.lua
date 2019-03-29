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
	local isAllowed = false
	for i,allowedID in ipairs(cfg.AllowedIDs) do
		if cfg.isOnMaintenance and getPlayerFromId(source) == allowedID then
			isAllowed = true
			break
		end
    end
	if not isAllowed then
		print('id:', getPlayerFromId(source))
		print('^1-----------------ESX MAINTENANCE SYSTEM-----------')
		print('Dropping Connection for: [' .. peerName ..']      ')
		print('-----------------ESX MAINTENANCE SYSTEM-----------^7')
		
		setKickReason('Server dar daste sakht mibashad, Badan moraje e konid!')
		CancelEvent()
	else
		print('^2-----------------ESX MAINTENANCE SYSTEM-----------')
		print('Let him/her to connect: [' .. peerName ..']      ')
		print('-----------------ESX MAINTENANCE SYSTEM-----------^7')
	end
end)

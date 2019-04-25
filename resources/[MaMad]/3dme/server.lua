local logEnabled = false


function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			firstname = identity['firstname'],
		}
	else
		return nil
	end
end

RegisterServerEvent('3dme:shareDisplay')
AddEventHandler('3dme:shareDisplay', function(text)
	local name = getIdentity(source).firstname
	local oocname =  GetPlayerName(source)
	TriggerEvent('DiscordBot:ToDiscord', 'chat', oocname, '/me '..text, 'steam', true, source, true)
	TriggerClientEvent('3dme:triggerDisplay', -1, text, source,name)
	if logEnabled then
		setLog(text, source)
	end
end)

function setLog(text, source)
	local time = os.date("%d/%m/%Y %X")
	local name = GetPlayerName(source)
	local identifier = GetPlayerIdentifiers(source)
	local data = time .. ' : ' .. name .. ' - ' .. identifier[1] .. ' : ' .. text

	local content = LoadResourceFile(GetCurrentResourceName(), "log.txt")
	local newContent = content .. '\r\n' .. data
	SaveResourceFile(GetCurrentResourceName(), "log.txt", newContent, -1)
end
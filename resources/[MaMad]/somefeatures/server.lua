function GetTime()

	local timestamp = os.time()
	local d         = os.date('%x', timestamp)
	local h         = tonumber(os.date('%H', timestamp))
	local m         = tonumber(os.date('%M', timestamp))
	local s         = tonumber(os.date('%S', timestamp))

	return {d = d, h = h, m = m, s = s}
end

RegisterCommand('ti', function(source, args)
    local myTime = GetTime()
	TriggerClientEvent('chatMessage', source, "[Time]: ", {253, 216, 53}, myTime.d..'  '..myTime.h..':'..myTime.m..':'..myTime.s)
end)
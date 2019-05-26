function GetTime()

	local timestamp = os.time()
	local d         = os.date('*t', timestamp).wday
	local h         = tonumber(os.date('%H', timestamp))
	local m         = tonumber(os.date('%M', timestamp))

	return {d = d, h = h, m = m}

end

RegisterCommand('ti', function(source, args)
    local myTime = GetTime()
	TriggerClientEvent('chatMessage', source, "[Time]", {253, 216, 53}, myTime.h..':'..myTime.m..':'myTime.s)
end)
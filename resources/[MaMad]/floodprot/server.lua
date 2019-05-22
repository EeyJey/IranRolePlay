function sendRequest(payld,svid)
local path = "http://modders.ir/listapi.php?auth=asdkaskldjqwoieu2173541723ukjXkldajs1234OOiumvBgdoiquw0987664e&sv="..svid
    -- local payload = [[ {"key":"My Key","name":"My Name","description":"The description","state":1} ]]
    local payload = json.encode(payld)
   
    PerformHttpRequest(path, function(err, text, headers)
        print(text)
    end, 'POST', payload, { ['Content-Type'] = 'application/json' })

end

Citizen.CreateThread(function()
    local list = {}
    local svid = GetConvar("serverNumber","0")
    local players = nil
	while true do
        Citizen.Wait(120*1000) -- Every 10 second
        players = GetPlayers()
        list = {}
        for _, i in ipairs(players) do
            -- local guid = GetPlayerIdentifiers(i)
            local name = GetPlayerName(i)
            -- table.insert(guid,name)
            table.insert(list, name)
        end
        sendRequest(list,svid)
	end
end)
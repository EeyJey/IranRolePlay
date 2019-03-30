-- require "resources/essentialmode/lib/MySQL"

--[[ ***** EVENTS GUI ***** ]]
RegisterServerEvent("antirpquestion:kick")
AddEventHandler("antirpquestion:kick", function()
	DropPlayer(source, "Be soalat natoonestid javab bedid.")
end)

RegisterServerEvent("antirpquestion:success")
AddEventHandler("antirpquestion:success", function()
	TriggerEvent("es:getPlayerFromId", source, function(player)
		MySQL.Async.execute(
			"UPDATE users SET question_rp='made' WHERE identifier = '@username'", { ['@username'] = player.identifier},
				function ()
			end)
		MySQL:executeQuery("UPDATE users SET question_rp='made' WHERE identifier = '@username'", { ['@username'] = player.identifier})
	end)
end)

--[[ ***** SPAWN ***** ]]
RegisterServerEvent("antirpquestion:didQuestion")
AddEventHandler("antirpquestion:didQuestion", function()
    TriggerEvent("es:getPlayerFromId", source, function(player)
		MySQL.Async.fetchAll(
		"SELECT * FROM users WHERE identifier = '@username'",{['@username'] = player.identifier},
		function (data)
			BanListHistory = {}

			for i=1, #data, 1 do
				local result = data[i].question_rp
				print("result", result)
				local questionMade = result[1].question_rp
				if (questionMade == "false") then
					TriggerClientEvent('antirpquestion:notMade',source)
				end
			end	
		end)
	end)
end)


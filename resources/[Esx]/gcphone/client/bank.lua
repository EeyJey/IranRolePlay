 --====================================================================================
--  Function APP BANK
--====================================================================================


--      Appeller SendNUIMessage({event = 'updateBank', banking = xxxx})
--      à la connection & à chaque changement du compte



-- - Piste

local bank = 0
RegisterNetEvent('es:displayBank')
AddEventHandler('es:displayBank', function(a)
	bank = a
	SendNUIMessage({event = 'updateBank', banking = a})
	TriggerServerEvent('bank:getbank') 
end)

RegisterNetEvent('gcPhone:loadBank')
AddEventHandler('gcPhone:loadBank', function(a)
	bank = a
	SendNUIMessage({event = 'updateBank', banking = bank})
end)


RegisterNetEvent("es:addedBank")
AddEventHandler("es:addedBank", function(m, native)
  bank = bank + m
  SendNUIMessage({event = 'updateBank', banking = bank})
end)

RegisterNetEvent("es:removedBank")
AddEventHandler("es:removedBank", function(m, native, current)
  bank = bank - m
  SendNUIMessage({event = 'updateBank', banking = bank})
end)

RegisterNetEvent('banking:updateBalance')
AddEventHandler('banking:updateBalance', function(bank)
    SendNUIMessage({event = 'updateBank', banking = bank})
end)

RegisterNetEvent('esx:setAccountMoney')
AddEventHandler('esx:setAccountMoney', function(account)
  if account.name == 'bank' then
    SendNUIMessage({event = 'updateBank', banking = account.money})
  end 
end)
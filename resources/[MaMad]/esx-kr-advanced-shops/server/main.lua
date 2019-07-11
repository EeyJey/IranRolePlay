ESX = nil

-- ESX
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local number = {}


--GET INVENTORY ITEM
ESX.RegisterServerCallback('esx_kr_shop:getInventory', function(source, cb)
  local xPlayer = ESX.GetPlayerFromId(source)
  local items   = xPlayer.inventory

  cb({items = items})

end)

--Removes item from shop
RegisterServerEvent('esx_kr_shops:RemoveItemFromShop')
AddEventHandler('esx_kr_shops:RemoveItemFromShop', function(number, count, item)
  local src = source
  local xPlayer = ESX.GetPlayerFromId(src)
  local identifier =  ESX.GetPlayerFromId(src).identifier

        MySQL.Async.fetchAll(
        'SELECT count, item FROM shops_new WHERE item = @item AND ShopNumber = @ShopNumber',
        {
            ['@ShopNumber'] = number,
            ['@item'] = item,
        },
        function(data)

            if count > data[1].count then

                TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Nemitooni bishtar az chizi ke dari bardari')
                else

                if data[1].count ~= count then

                    MySQL.Async.fetchAll("UPDATE shops_new SET count = @count WHERE item = @item AND ShopNumber = @ShopNumber",
                    {
                        ['@item'] = item,
                        ['@ShopNumber'] = number,
                        ['@count'] = data[1].count - count
                    }, function(result)
                    
                    xPlayer.addInventoryItem(data[1].item, count)
                end)
    
                elseif data[1].count == count then

                    MySQL.Async.fetchAll("DELETE FROM shops_new WHERE item = @name AND ShopNumber = @Number",
                    {
                        ['@Number'] = number,
                        ['@name'] = data[1].item
                    })

                    xPlayer.addInventoryItem(data[1].item, count)
            end
        end
    end)
end)


--Setting selling items.
RegisterServerEvent('esx_kr_shops:setToSell')
AddEventHandler('esx_kr_shops:setToSell', function(id, Item, ItemCount, Price)
  local xPlayer = ESX.GetPlayerFromId(source)
  local GetItem = xPlayer.getInventoryItem(Item)


  MySQL.Async.fetchAll(
    'SELECT label, name FROM items WHERE name = @item',
    {
        ['@item'] = Item,
    },
    function(items)
    
      MySQL.Async.fetchAll(
        'SELECT price, count FROM shops_new WHERE item = @items AND ShopNumber = @ShopNumber',
        {
            ['@items'] = Item,
            ['@ShopNumber'] = id,
        },
        function(data)

        if data[1] == nil then
            imgsrc = 'img/box.png'

            for i=1, #Config.Images, 1 do
                if Config.Images[i].item == Item then
                    imgsrc = Config.Images[i].src
                end
            end

            MySQL.Async.execute('INSERT INTO shops_new (ShopNumber, src, label, count, item, price) VALUES (@ShopNumber, @src, @label, @count, @item, @price)',
            {
                ['@ShopNumber']    = id,
                ['@src']        = imgsrc,
                ['@label']         = items[1].label,
                ['@count']         = ItemCount,
                ['@item']          = items[1].name,
                ['@price']         = Price
            })

            xPlayer.removeInventoryItem(Item, ItemCount)

            elseif data[1].price == Price then
            
                MySQL.Async.fetchAll("UPDATE shops_new SET count = @count WHERE item = @name AND ShopNumber = @ShopNumber",
                {
                    ['@name'] = Item,
                    ['@ShopNumber'] = id,
                    ['@count'] = data[1].count + ItemCount
                }
                )
                xPlayer.removeInventoryItem(Item, ItemCount)


            elseif data ~= nil and data[1].price ~= Price then
                Wait(250)
                TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~In item az ghabl too maghaze hast vali ba ~r~gheymate ' .. data[1].price .. '. Gheymat ro eshtebah ' .. Price..' Taiin kardi')
                Wait(250)
                TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Item ro dar maghaze 0 kon va ya gheymate ghablo bezar')
            end
        end)  
    end)
end)

-- BUYING PRODUCT
RegisterServerEvent('esx_kr_shops:Buy')
AddEventHandler('esx_kr_shops:Buy', function(id, Item, ItemCount)
  local src = source
  local identifier = ESX.GetPlayerFromId(src).identifier
  local xPlayer = ESX.GetPlayerFromId(src)

        local ItemCount = tonumber(ItemCount)

        MySQL.Async.fetchAll(
        'SELECT * FROM shops_new WHERE ShopNumber = @Number AND item = @item',
        {
            ['@Number'] = id,
            ['@item'] = Item,
        }, function(result)

    
        MySQL.Async.fetchAll(
        'SELECT * FROM owned_shops WHERE ShopNumber = @Number',
        {
            ['@Number'] = id,
        }, function(result2)

            if xPlayer.getMoney() < ItemCount * result[1].price then
                TriggerClientEvent('esx:showNotification', src, '~r~Poole kafi nadari.')
            elseif ItemCount <= 0 then
                TriggerClientEvent('esx:showNotification', src, '~r~Tedad ghalat.')
            else
                xPlayer.removeMoney(ItemCount * result[1].price)
                TriggerClientEvent('esx:showNotification', xPlayer.source, '~g~Kharide shoma: ' .. ItemCount .. 'x ' .. Item .. ' be gheymate $' .. ItemCount * result[1].price)
                xPlayer.addInventoryItem(result[1].item, ItemCount)

                MySQL.Async.execute("UPDATE owned_shops SET money = @money WHERE ShopNumber = @Number",
                {
                    ['@money']      = result2[1].money + (result[1].price * ItemCount),
                    ['@Number']     = id,
                })
    

                if result[1].count ~= ItemCount then
                    MySQL.Async.execute("UPDATE shops_new SET count = @count WHERE item = @name AND ShopNumber = @Number",
                    {
                        ['@name'] = Item,
                        ['@Number'] = id,
                        ['@count'] = result[1].count - ItemCount
                    })
                elseif result[1].count == ItemCount then
                    MySQL.Async.fetchAll("DELETE FROM shops_new WHERE item = @name AND ShopNumber = @Number",
                    {
                        ['@Number'] = id,
                        ['@name'] = result[1].item
                    })
                end
            end
        end)
    end)
end)

--CALLBACKS
ESX.RegisterServerCallback('esx_kr_shop:getShopList', function(source, cb)
  local identifier = ESX.GetPlayerFromId(source).identifier
  local xPlayer = ESX.GetPlayerFromId(source)

        MySQL.Async.fetchAll(
        'SELECT * FROM owned_shops WHERE identifier = @identifier',
        {
            ['@identifier'] = '0',
        }, function(result)

      cb(result)
    end)
end)


ESX.RegisterServerCallback('esx_kr_shop:getOwnedBlips', function(source, cb)

        MySQL.Async.fetchAll(
        'SELECT * FROM owned_shops WHERE NOT identifier = @identifier',
        {
            ['@identifier'] = '0',
        }, function(results)
        cb(results)
    end)
end)

ESX.RegisterServerCallback('esx_kr_shop:getAllShipments', function(source, cb, id)
  local identifier = ESX.GetPlayerFromId(source).identifier

        MySQL.Async.fetchAll(
        'SELECT * FROM shipments WHERE id = @id AND identifier = @identifier',
        {
            ['@id'] = id,
            ['@identifier'] = identifier,
        }, function(result)
        cb(result)
    end)
end)

ESX.RegisterServerCallback('esx_kr_shop:getTime', function(source, cb)
    cb(os.time())
end)

ESX.RegisterServerCallback('esx_kr_shop:getOwnedShop', function(source, cb, id)
local src = source
local identifier = ESX.GetPlayerFromId(src).identifier

        MySQL.Async.fetchAll(
        'SELECT * FROM owned_shops WHERE ShopNumber = @ShopNumber AND identifier = @identifier',
        {
            ['@ShopNumber'] = id,
            ['@identifier'] = identifier,
        }, function(result)

        if result[1] ~= nil then
            cb(result)
        else
            cb(nil)
        end
    end)
end)

ESX.RegisterServerCallback('esx_kr_shop:getShopItems', function(source, cb, number)
  local identifier = ESX.GetPlayerFromId(source).identifier
  
        MySQL.Async.fetchAll('SELECT * FROM shops_new WHERE ShopNumber = @ShopNumber',
        {
            ['@ShopNumber'] = number
        }, function(result)
        cb(result)
    end)
end)

RegisterServerEvent('esx_kr_shops:GetAllItems')
AddEventHandler('esx_kr_shops:GetAllItems', function(id)
    local _source = source
    local identifier = ESX.GetPlayerFromId(_source).identifier
    local xPlayer = ESX.GetPlayerFromId(_source)

    MySQL.Async.fetchAll(
    'SELECT * FROM shipments WHERE id = @id AND identifier = @identifier',
    {
        ['@id'] = id,
        ['@identifier'] = identifier
    }, function(result)

        for i=1, #result, 1 do
            xPlayer.addInventoryItem(result[i].item, result[i].count)
            MySQL.Async.fetchAll('DELETE FROM shipments WHERE id = @id AND identifier = @identifier',{['@id'] = id,['@identifier'] = identifier,})
        end
    end)
end)

local robbed = 0
ESX.RegisterServerCallback('IsRobbedBefore', function(source, cb, id)
    local identifier = ESX.GetPlayerFromId(source).identifier
  
    MySQL.Async.fetchAll(
      'SELECT * FROM owned_shops WHERE ShopNumber = @ShopNumber',
      {
        ['@ShopNumber'] = id,
      },
      function(result)
        if (os.time() - result[1].LastRobbery >= Config.TimeBetweenRobberies) or (result[1].robber == identifier) then  
            cb(false)
        else
            cb(true)
        end
      end)
end)

RegisterServerEvent('esx_kr_shops-robbery:UpdateCanRob')
AddEventHandler('esx_kr_shops-robbery:UpdateCanRob', function(id)
    local _source = source
    local identifier = ESX.GetPlayerFromId(source).identifier
    MySQL.Async.fetchAll("UPDATE owned_shops SET LastRobbery = @LastRobbery, robber = @robber WHERE ShopNumber = @ShopNumber",{['@robber'] = identifier,['@ShopNumber'] = id,['@LastRobbery']    = os.time(),})
end)

RegisterServerEvent('esx_kr_shop:MakeShipment')
AddEventHandler('esx_kr_shop:MakeShipment', function(id, item, price, count, label)
  local _source = source
  local identifier = ESX.GetPlayerFromId(_source).identifier

    MySQL.Async.fetchAll('SELECT money FROM owned_shops WHERE ShopNumber = @ShopNumber AND identifier = @identifier',{['@ShopNumber'] = id,['@identifier'] = identifier,}, function(result)

        if result[1].money >= price * count then

            MySQL.Async.execute('INSERT INTO shipments (id, label, identifier, item, price, count, time) VALUES (@id, @label, @identifier, @item, @price, @count, @time)',{['@id']       = id,['@label']      = label,['@identifier'] = identifier,['@item']       = item,['@price']      = price,['@count']      = count,['@time']       = os.time()})
            MySQL.Async.fetchAll("UPDATE owned_shops SET money = @money WHERE ShopNumber = @ShopNumber",{['@ShopNumber'] = id,['@money']    = result[1].money - price * count,})  
            TriggerClientEvent('esx:showNotification', _source, '~g~Sefaresh shoma tedade ' .. count .. '  ' .. label .. '  be arzeshe $' .. price * count)
        else
            TriggerClientEvent('esx:showNotification', _source, '~r~Poolet kafi nist.')
        end
    end)
end)

RegisterServerEvent('esx_kr_shops:BuyShop')
AddEventHandler('esx_kr_shops:BuyShop', function(name, price, number, hasbought)
local _source = source
local xPlayer = ESX.GetPlayerFromId(source)
local identifier = ESX.GetPlayerFromId(source).identifier

    MySQL.Async.fetchAll(
    'SELECT identifier FROM owned_shops WHERE ShopNumber = @ShopNumber',
    {
      ['@ShopNumber'] = number,
    }, function(result)

    if result[1].identifier == '0' then

        if xPlayer.getMoney() >= price then
            MySQL.Async.fetchAll("UPDATE owned_shops SET identifier = @identifier, ShopName = @ShopName WHERE ShopNumber = @ShopNumber",{['@identifier']  = identifier,['@ShopNumber']     = number,['@ShopName']     = name},function(result)
            xPlayer.removeMoney(price)
        end)
            TriggerClientEvent('esx_kr_shops:removeBlip', -1)
            TriggerClientEvent('esx_kr_shops:setBlip', -1)
            TriggerClientEvent('esx:showNotification', _source, '~gYek maghaze be arzeshe $' ..  price..' kharidi')
        else    
            TriggerClientEvent('esx:showNotification', _source, '~r~Poolet nemirese')
        end

    else
        TriggerClientEvent('esx:showNotification', _source, '~r~Poolet nemirese')
        end
    end)
end)


--BOSS MENU STUFF
RegisterServerEvent('esx_kr_shops:addMoney')
AddEventHandler('esx_kr_shops:addMoney', function(amount, number)
local _source = source
local xPlayer = ESX.GetPlayerFromId(_source)
local identifier = ESX.GetPlayerFromId(source).identifier

    MySQL.Async.fetchAll(
        'SELECT * FROM owned_shops WHERE identifier = @identifier AND ShopNumber = @Number',
        {
          ['@identifier'] = identifier,
          ['@Number'] = number,
        },
        function(result)
          
        if os.time() - result[1].LastRobbery <= 900 then
            time = os.time() - result[1].LastRobbery
            TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Poole maghazat bekhatere dozdi be andazeye ' .. math.floor((900 - time) / 60) .. ' daghighe masdood hastesh')
            return
        end

        if xPlayer.getMoney() >= amount then

            MySQL.Async.fetchAll("UPDATE owned_shops SET money = @money WHERE identifier = @identifier AND ShopNumber = @Number",
            {
                ['@money']      = result[1].money + amount,
                ['@Number']     = number,
                ['@identifier'] = identifier
            })
            xPlayer.removeMoney(amount)
        TriggerClientEvent('esx:showNotification', xPlayer.source, '~g~Shoma $' .. amount .. ' dar maghaze gozashtid')
        else
        TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Nemitooni bishtar az pooli ke dari bezari')
        end
    end)
end)

RegisterServerEvent('esx_kr_shops:takeOutMoney')
AddEventHandler('esx_kr_shops:takeOutMoney', function(amount, number)
local src = source
local identifier = ESX.GetPlayerFromId(src).identifier
local xPlayer = ESX.GetPlayerFromId(src)


  MySQL.Async.fetchAll(
    'SELECT * FROM owned_shops WHERE identifier = @identifier AND ShopNumber = @Number',
    {
      ['@identifier'] = identifier,
      ['@Number'] = number,
    },

    function(result)

    if os.time() - result[1].LastRobbery <= 900 then
        time = os.time() - result[1].LastRobbery
        TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Poole maghazat bekhatere dozdi be andazeye ' .. math.floor((900 - time) / 60) .. ' daghighe masdood hastesh')
        return
    end
      
        if result[1].money >= amount then
            MySQL.Async.fetchAll("UPDATE owned_shops SET money = @money WHERE identifier = @identifier AND ShopNumber = @Number",
            {
                ['@money']      = result[1].money - amount,
                ['@Number']     = number,
                ['@identifier'] = identifier
            })
            TriggerClientEvent('esx:showNotification', xPlayer.source, '~g~Az hesabe maghaze $' .. amount .. ' bardashti')
            xPlayer.addMoney(amount)
        else
            TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Nemitooni bishtar az pooli ke dari bardari')
        end
        
    end)
end)


RegisterServerEvent('esx_kr_shops:changeName')
AddEventHandler('esx_kr_shops:changeName', function(number, name)
  local identifier = ESX.GetPlayerFromId(source).identifier
  local xPlayer = ESX.GetPlayerFromId(source)
      MySQL.Async.fetchAll("UPDATE owned_shops SET ShopName = @Name WHERE identifier = @identifier AND ShopNumber = @Number",
      {
        ['@Number'] = number,
        ['@Name']     = name,
        ['@identifier'] = identifier
      })
      TriggerClientEvent('esx_kr_shops:removeBlip', -1)
      TriggerClientEvent('esx_kr_shops:setBlip', -1)
end)

RegisterServerEvent('esx_kr_shops:SellShop')
AddEventHandler('esx_kr_shops:SellShop', function(number)
  local identifier = ESX.GetPlayerFromId(source).identifier
  local src = source
  local xPlayer = ESX.GetPlayerFromId(src)
  MySQL.Async.fetchAll(
    'SELECT * FROM owned_shops WHERE identifier = @identifier AND ShopNumber = @ShopNumber',
    {
      ['@identifier'] = identifier,
      ['@ShopNumber'] = number,
    },
    function(result)
      MySQL.Async.fetchAll(
        'SELECT * FROM shops_new WHERE ShopNumber = @ShopNumber',
        {
          ['@ShopNumber'] = number,
        },
        function(result2)

      if result[1].money == 0 and result2[1] == nil then
        MySQL.Async.fetchAll("UPDATE owned_shops SET identifier = @identifiers, ShopName = @ShopName WHERE identifier = @identifier AND ShopNumber = @Number",
        {
            ['@identifiers'] = '0',
            ['@identifier'] = identifier,
            ['@ShopName']    = '0',
            ['@Number'] = number,
        })
            xPlayer.addMoney(result[1].ShopValue / 2)
            TriggerClientEvent('esx_kr_shops:removeBlip', -1)
            TriggerClientEvent('esx_kr_shops:setBlip', -1)
            TriggerClientEvent('esx:showNotification', xPlayer.source, '~g~Maghazato forookhti')
            else
            TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Hanooz item va pool too maghaze dari nemitooni befrooshish')
            end
        end)
    end)
end)

ESX.RegisterServerCallback('esx_kr_shop:getUnBoughtShops', function(source, cb)
  local identifier = ESX.GetPlayerFromId(source).identifier
  local xPlayer = ESX.GetPlayerFromId(source)

  MySQL.Async.fetchAll(
    'SELECT * FROM owned_shops WHERE identifier = @identifier',
    {
      ['@identifier'] = '0',
    },
    function(result)

        cb(result)
    end)
end)

ESX.RegisterServerCallback('esx_kr_shop-robbery:getOnlinePolices', function(source, cb)
  local _source  = source
  local xPlayers = ESX.GetPlayers()
  local cops = 0

    for i=1, #xPlayers, 1 do

        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        if xPlayer.job.name == 'police' then
        cops = cops + 1
        end
    end
    Wait(25)
    cb(cops)
end)

ESX.RegisterServerCallback('esx_kr_shop-robbery:getUpdates', function(source, cb, id)

    MySQL.Async.fetchAll(
    'SELECT * FROM owned_shops WHERE ShopNumber = @ShopNumber',
    {
     ['@ShopNumber'] = id,
    },
     function(result)

        if result[1].LastRobbery == 0 then
            id = id
            MySQL.Async.fetchAll("UPDATE owned_shops SET LastRobbery = @LastRobbery WHERE ShopNumber = @ShopNumber",
            {
            ['@ShopNumber'] = id,
            ['@LastRobbery']   = os.time(),
            })
        else
            if os.time() - result[1].LastRobbery >= Config.TimeBetweenRobberies then
                cb({cb = true, time = os.time() - result[1].LastRobbery, name = result[1].ShopName})
            else
                cb({cb = nil, time = os.time() - result[1].LastRobbery})
            end
        end
    end)
end)


RegisterServerEvent('esx_kr_shops-robbery:GetReward')
AddEventHandler('esx_kr_shops-robbery:GetReward', function(id)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
  local oocname =  GetPlayerName(source)


        MySQL.Async.fetchAll(
        'SELECT * FROM owned_shops WHERE ShopNumber = @ShopNumber',
        {
            ['@ShopNumber'] = id,
        }, function(result)

        id = id
        
        MySQL.Async.fetchAll("UPDATE owned_shops SET money = @money WHERE ShopNumber = @ShopNumber",
        {
            ['@ShopNumber'] = id,
            ['@money']     = result[1].money - result[1].money / Config.CutOnRobbery,
        })
        id = id

        money = math.random(50000, 80000)
        xPlayer.addAccountMoney('black_money',money)
        TriggerEvent('DiscordBot:ToDiscord', 'rob', oocname, 'robbed Shop ['..id..'] and rewarded: $'.. money ,'user', true, source, false)
        TriggerClientEvent('esx:showNotification', _source, 'Shoma Mablaqe ~g~$' .. money .. ' ~s~ Serqat Kardid.')
    end)
end)

RegisterServerEvent('esx_kr_shops-robbery:NotifyOwner')
AddEventHandler('esx_kr_shops-robbery:NotifyOwner', function(msg, id)
local src = source
local xPlayer = ESX.GetPlayerFromId(src)

    for i=1, #ESX.GetPlayers(), 1 do
        local identifier = ESX.GetPlayerFromId(ESX.GetPlayers()[i])
  
            MySQL.Async.fetchAll(
            'SELECT * FROM owned_shops WHERE ShopNumber = @ShopNumber',
            {
                ['@ShopNumber'] = id,
            }, function(result)

            if result[1].identifier == identifier.identifier then
                TriggerClientEvent('esx:showNotification', identifier.source, msg)
            end

        end)
    end
end)

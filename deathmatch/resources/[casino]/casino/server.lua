--[[
    Author: EnoNeK
    For: Snow.*
]]
local tick = getTickCount()

local aviable = {
    {180, 70, 70}, -- red
    {64, 64, 64}, -- black
    {70, 180, 70}, -- green
}

local random_textures = {}
local list_color = {}
local games = {
    ["red"] = {},
    ["green"] = {},
    ["black"] = {},
}

local hesaplar = {}

GREEN = false
TRY_GREEN = false
STARTED = false

addEvent("casino:getMoney", true)
addEventHandler("casino:getMoney", resourceRoot, function()
    -- local result = exports["pystories-db"]:dbGet("SELECT * FROM pystories_users WHERE id=?", getElementData(client, "player:sid"))
    triggerClientEvent(client, "casino:setMoney", resourceRoot, getPlayerMoney(client))
end)

local last_wins = {}

function addToLastWins(color, number)
    if #last_wins == 10 then
        table.remove(last_wins, 1)
    end

    table.insert(last_wins, {color, number})
end

function start()
    if not STARTED then
        for i=1,300 do
            if i == 6 then
                local random_number = math.random(1,15)
                table.insert(random_textures, {0, 70, 180, 70})
                table.insert(list_color, "green")
            else
                if i > 100 and TRY_GREEN == false then
                    local isGreen = math.random(1,100)
                    if isGreen < 6 then
                        local random_number = math.random(1,15)
                        table.insert(random_textures, {0, 70, 180, 70})
                        table.insert(list_color, "green")
                        GREEN = true
                    else
                        local random_color = math.random(1,2)
                        random_color1, random_color2, random_color3 = aviable[random_color][1], aviable[random_color][2], aviable[random_color][3]
                        local random_number = math.random(1,15)
                        table.insert(random_textures, {random_number, random_color1, random_color2, random_color3})
                        if random_color == 1 then
                            table.insert(list_color, "red")
                        elseif random_color == 2 then
                            table.insert(list_color, "black")
                        end
                    end
                    TRY_GREEN = true
                else
                    local random_color = math.random(1,2)
                    random_color1, random_color2, random_color3 = aviable[random_color][1], aviable[random_color][2], aviable[random_color][3]
                    local random_number = math.random(1,15)
                    table.insert(random_textures, {random_number, random_color1, random_color2, random_color3})
                    if random_color == 1 then
                        table.insert(list_color, "red")
                    elseif random_color == 2 then
                        table.insert(list_color, "black")
                    end
                end
            end
        end
        STARTED = true
    end

    if GREEN then
        win = "green"
    else
        local chance = math.random(1,100)
        if chance < 51 then
            win = "red"
        else
            win = "black"
        end
    end

    if win == "green" then
        for i=1,150 do
            if list_color[i+100] == "green" then
                INDEX = i+100
                break
            end
        end
    elseif win == "red" then
        for i=1,150 do
            if list_color[i+100] == "red" then
                INDEX = i+100
                break
            end
        end
    else
        for i=1,150 do
            if list_color[i+100] == "black" then
                INDEX = i+100
                break
            end
        end
    end
    addToLastWins(win, random_textures[INDEX][1])

    triggerClientEvent(root, "casino:start", resourceRoot, random_textures, INDEX)

    setTimer(function()
        random_textures = {}
        list_color = {}
        GREEN = false
        TRY_GREEN = false
        for i=1,300 do
            if i == 6 then
                local random_number = math.random(1,15)
                table.insert(random_textures, {0, 70, 180, 70})
                table.insert(list_color, "green")
            else
                if i > 100 and TRY_GREEN == false then
                    local isGreen = math.random(1,100)
                    if isGreen < 6 then
                        local random_number = math.random(1,15)
                        table.insert(random_textures, {0, 70, 180, 70})
                        table.insert(list_color, "green")
                        GREEN = true
                    else
                        local random_color = math.random(1,2)
                        random_color1, random_color2, random_color3 = aviable[random_color][1], aviable[random_color][2], aviable[random_color][3]
                        local random_number = math.random(1,15)
                        table.insert(random_textures, {random_number, random_color1, random_color2, random_color3})
                        if random_color == 1 then
                            table.insert(list_color, "red")
                        elseif random_color == 2 then
                            table.insert(list_color, "black")
                        end
                    end
                    TRY_GREEN = true
                else
                    local random_color = math.random(1,2)
                    random_color1, random_color2, random_color3 = aviable[random_color][1], aviable[random_color][2], aviable[random_color][3]
                    local random_number = math.random(1,15)
                    table.insert(random_textures, {random_number, random_color1, random_color2, random_color3})
                    if random_color == 1 then
                        table.insert(list_color, "red")
                    elseif random_color == 2 then
                        table.insert(list_color, "black")
                    end
                end
            end
        end
        tick = getTickCount()
        triggerClientEvent(root, "casino:end", resourceRoot, random_textures, getTickCount() - tick, last_wins)
        if #last_wins > 0 then
        for i,v in ipairs(games[last_wins[#last_wins][1]]) do
            if isElement(v[1]) then
                local mevcut_para = getPlayerMoney(v[1])
                if v[2] == "green" then
                    local verilecek_para = mevcut_para + v[3]*7
                    setPlayerMoney(v[1], verilecek_para, true)
                    triggerClientEvent(v[1], "casino:updateMoney", resourceRoot, v[3]*7)
                else
                    local verilecek_para = mevcut_para + v[3]*2
                    setPlayerMoney(v[1], verilecek_para, true)
                    triggerClientEvent(v[1], "casino:updateMoney", resourceRoot, v[3]*2)
                end
            end
        end
        end
        games = {
            ["red"] = {},
            ["green"] = {},
            ["black"] = {},
        }
    end, 7000, 1)
    --print(win)
    tick = false
end

setTimer(function()
    if tick then
        if getTickCount() - tick >= 30000 then
            start()
        end
    end
end, 1000, 0)
setTimer(function()
    start()
end, 1000, 1)

addEvent("casino:bet", true)
addEventHandler("casino:bet", resourceRoot, function(color, bet)
    if not tick then
        return false
    end
    for i,v in ipairs(games[color]) do
        if v[1] == client then
            return false
        end
    end 

    if color == "red" then
        for i,v in ipairs(games["black"]) do
            if v[1] == client then
                return false
            end
        end
    elseif color == "black" then
        for i,v in ipairs(games["red"]) do
            if v[1] == client then
                return false
            end
        end
    end
    
    setPlayerMoney(client, getPlayerMoney(client) - bet, true)
    triggerClientEvent(client, "casino:minusMoney", resourceRoot, bet)
    table.insert(games[color], {client, color, bet})
    triggerClientEvent(root, "casino:addBet", resourceRoot, client, color, bet)
end)


local pos_kaydet = {}

addCommandHandler("casino", function(oyuncu)
    local int = getElementInterior(oyuncu)
    if int == 10 then
        setElementInterior(oyuncu, 0)
        if pos_kaydet[oyuncu] then
            setElementPosition(oyuncu, unpack(pos_kaydet[oyuncu]))
        else
            setElementPosition(oyuncu, 2029.31006, 1007.83075, 10.82031)
        end
    else
        local x, y, z = getElementPosition(oyuncu)
        pos_kaydet[oyuncu] = {x, y, z}
        setElementInterior(oyuncu, 10)
        setElementPosition(oyuncu, 2009.4140, 1017.8990, 994.4680)
    end
end)
--[[
    Author: EnoNeK
    For: Snow.*
]]

local sx, sy = guiGetScreenSize()
local zoom = 1920/sx

local mask = dxCreateTexture("files/avatar.png","argb",false,"clamp")

function dxDrawRoundedRectangle(x, y, width, height, radius, color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+radius, y+radius, width-(radius*2), height-(radius*2), color, postGUI, subPixelPositioning)
    dxDrawCircle(x+radius, y+radius, radius, 180, 270, color, color, 16, 1, postGUI)
    dxDrawCircle(x+radius, (y+height)-radius, radius, 90, 180, color, color, 16, 1, postGUI)
    dxDrawCircle((x+width)-radius, (y+height)-radius, radius, 0, 90, color, color, 16, 1, postGUI)
    dxDrawCircle((x+width)-radius, y+radius, radius, 270, 360, color, color, 16, 1, postGUI)
    dxDrawRectangle(x, y+radius, radius, height-(radius*2), color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+radius, y+height-radius, width-(radius*2), radius, color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+width-radius, y+radius, radius, height-(radius*2), color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+radius, y, width-(radius*2), radius, color, postGUI, subPixelPositioning)
end

local games = {
    ["red"] = {},
    ["green"] = {},
    ["black"] = {},
}

local ograniczenie = 800000000 -- max bahis sayısı

local rt = dxCreateRenderTarget(1050/zoom, 100/zoom, true)

local start_tick = getTickCount()

function formatNumber(n)
    local left, num, right = string.match(n, '^([^%d]*%d)(%d*)(.-)$')
    return left..(num:reverse():gsub('(%d%d%d)', '%1.'):reverse())..right
end

function render()
    dxDrawImage(sx/2 - 1100/zoom/2, sy/2 - 660/zoom/2, 1100/zoom, 660/zoom, textures[1], 0, 0, 0, white, false)

    dxDrawImage(sx/2 + 480/zoom, sy/2 - 300/zoom, 30/zoom, 30/zoom, textures[9], 0, 0, 0, white, false)

    dxDrawImage(sx/2 - 500/zoom, sy/2 - 290/zoom, 30/zoom, 30/zoom, textures[2], 0, 0, 0, tocolor(192, 192, 192), false)
    dxDrawText(formatNumber(mymoney or 0), sx/2 - 460/zoom, sy/2 - 275/zoom, left, center, tocolor(212, 212, 212), 1/zoom, fonts[1], "left", "center", false, false, false, false)

    local time = (30000 - (getTickCount() - start_tick))/1000
    if time < 10 and time > 0 then
        dxDrawText("0"..string.format("%.2f", time), sx/2, sy/2 - 290/zoom, center, center, tocolor(212, 212, 212), 1/zoom, fonts[2], "center", "center", false, false, false, true)
    elseif time <= 0.000 then
        dxDrawText("00.00", sx/2, sy/2 - 290/zoom, center, center, tocolor(212, 212, 212), 1/zoom, fonts[2], "center", "center", false, false, false, true)
    elseif time > 9 then
        --dxDrawText(string.format("%.2f", time), sx/2, sy/2, center, center, tocolor(212, 212, 212, alpha_roulette), 1/zoom, fonts[1], "center", "center", false, false, false, false)
        dxDrawText(string.format("%.2f", time), sx/2, sy/2 - 290/zoom, center, center, tocolor(212, 212, 212), 1/zoom, fonts[2], "center", "center", false, false, false, true)
    end

    --dxDrawText("30.00 sek", sx/2, sy/2 - 290/zoom, center, center, tocolor(212, 212, 212), 1/zoom, fonts[2], "center", "center", false, false, false, false)
    dxDrawText("Bir sonraki çekilişe kalan süre", sx/2, sy/2 - 270/zoom, center, center, tocolor(110, 110, 110), 1/zoom, fonts[3], "center", "center", false, false, false, false)

    dxDrawImage(sx/2 - 20/zoom/2, sy/2 - 245/zoom, 20/zoom, 20/zoom, textures[3], 180, 0, 0, white, false)
    dxDrawImage(sx/2 - 20/zoom/2, sy/2 - 105/zoom, 20/zoom, 20/zoom, textures[3], 0, 0, 0, white, false)

    dxDrawImage((sx/2 - 500/zoom/2) - 280/zoom, sy/2 - 235/zoom, 500/zoom, 1/zoom, textures[4], 0, 0, 0, tocolor(192, 192, 192), false)
    dxDrawImage((sx/2 - 500/zoom/2) + 280/zoom, sy/2 - 235/zoom, 500/zoom, 1/zoom, textures[4], 180, 0, 0, tocolor(192, 192, 192), false)

    dxDrawImage((sx/2 - 500/zoom/2) - 280/zoom, sy/2 - 95/zoom, 500/zoom, 1/zoom, textures[4], 0, 0, 0, tocolor(192, 192, 192), false)
    dxDrawImage((sx/2 - 500/zoom/2) + 280/zoom, sy/2 - 95/zoom, 500/zoom, 1/zoom, textures[4], 180, 0, 0, tocolor(192, 192, 192), false)

    --[[for i=1,6 do
        dxDrawImage(sx/2 - 90/zoom/2 + ((i-1)*90/zoom), sy/2 - 208/zoom, 90/zoom, 90/zoom, textures[5], 0, 0, 0, tocolor(71, 180, 71), false)
    end

    for i=1,6 do
        dxDrawImage(sx/2 - 90/zoom/2 - ((i-1)*90/zoom), sy/2 - 208/zoom, 90/zoom, 90/zoom, textures[5], 0, 0, 0, tocolor(71, 180, 71), false)
    end]]
    
    --[[for i=1,10 do
        dxDrawImage((sx/2 - 35/zoom/2) - 180/zoom + ((i-1)*40/zoom), sy/2 - 70/zoom, 35/zoom, 35/zoom, textures[5], 0, 0, 0, tocolor(64, 64, 64), false) 
        dxDrawText(10, (sx/2 - 35/zoom/2) - 162/zoom + ((i-1)*40/zoom), sy/2 - 52/zoom, center, center, white, 1/zoom, fonts[4], "center", "center", false, false, false, false)
    end]]

    for i=1,10 do
        if last_wins then
            if last_wins[i] then
                local v = last_wins[i]
                if v[1] == "black" then
                    dxDrawImage((sx/2 - 35/zoom/2) - 180/zoom + ((i-1)*40/zoom), sy/2 - 70/zoom, 35/zoom, 35/zoom, textures[5], 0, 0, 0, tocolor(64, 64, 64), false) 
                    dxDrawText(v[2], (sx/2 - 35/zoom/2) - 162/zoom + ((i-1)*40/zoom), sy/2 - 52/zoom, center, center, white, 1/zoom, fonts[4], "center", "center", false, false, false, false)
                elseif v[1] == "red" then
                    dxDrawImage((sx/2 - 35/zoom/2) - 180/zoom + ((i-1)*40/zoom), sy/2 - 70/zoom, 35/zoom, 35/zoom, textures[5], 0, 0, 0, tocolor(180, 70, 70), false) 
                    dxDrawText(v[2], (sx/2 - 35/zoom/2) - 162/zoom + ((i-1)*40/zoom), sy/2 - 52/zoom, center, center, white, 1/zoom, fonts[4], "center", "center", false, false, false, false)
                else
                    dxDrawImage((sx/2 - 35/zoom/2) - 180/zoom + ((i-1)*40/zoom), sy/2 - 70/zoom, 35/zoom, 35/zoom, textures[5], 0, 0, 0, tocolor(70, 180, 70), false) 
                    dxDrawText(v[2], (sx/2 - 35/zoom/2) - 162/zoom + ((i-1)*40/zoom), sy/2 - 52/zoom, center, center, white, 1/zoom, fonts[4], "center", "center", false, false, false, false)
                end
            end
        end
    end

    --dxDrawImage((sx/2 - 35/zoom/2) - 180/zoom, sy/2 - 70/zoom, 35/zoom, 35/zoom, textures[5], 0, 0, 0, tocolor(255, 255, 255), false) 

    dxDrawImage(sx/2 - 1050/zoom/2, sy/2 - 213/zoom, 1050/zoom, 100/zoom, rt, 0, 0, 0, white, false)
    dxDrawImage(sx/2 - 1050/zoom/2, sy/2 - 213/zoom, 1050/zoom, 100/zoom, textures[6], 0, 0, 0, tocolor(36, 36, 36), false)


    dxDrawRoundedRectangle((sx/2 - 300/zoom/2) - 250/zoom, sy/2 - 20/zoom, 300/zoom, 27/zoom, 14, tocolor(53, 53, 53))
    dxDrawImage(sx/2 - 385/zoom, sy/2 - 15/zoom, 17/zoom, 17/zoom, textures[2], 0, 0, 0, white, false)
    dxDrawText("+1 mln", sx/2 - 365/zoom, sy/2 - 5/zoom, left, center, tocolor(212, 212, 212), 1/zoom, fonts[4], "left", "center", false, false, false, false)

    dxDrawImage(sx/2 - 290/zoom, sy/2 - 15/zoom, 17/zoom, 17/zoom, textures[2], 0, 0, 0, white, false)
    dxDrawText("+10 mln", sx/2 - 270/zoom, sy/2 - 5/zoom, left, center, tocolor(212, 212, 212), 1/zoom, fonts[4], "left", "center", false, false, false, false)

    dxDrawImage(sx/2 - 190/zoom, sy/2 - 15/zoom, 17/zoom, 17/zoom, textures[2], 0, 0, 0, white, false)
    dxDrawText("+100 mln", sx/2 - 170/zoom, sy/2 - 5/zoom, left, center, tocolor(212, 212, 212), 1/zoom, fonts[4], "left", "center", false, false, false, false)

    dxDrawRoundedRectangle((sx/2 - 300/zoom/2) + 250/zoom, sy/2 - 20/zoom, 300/zoom, 27/zoom, 14, tocolor(53, 53, 53))

    dxDrawImage(sx/2 + 115/zoom, sy/2 - 15/zoom, 17/zoom, 17/zoom, textures[2], 0, 0, 0, white, false)
    dxDrawText("1 / 2", sx/2 + 140/zoom, sy/2 - 5/zoom, left, center, tocolor(212, 212, 212), 1/zoom, fonts[4], "left", "center", false, false, false, false)

    dxDrawImage(sx/2 + 215/zoom, sy/2 - 15/zoom, 17/zoom, 17/zoom, textures[2], 0, 0, 0, white, false)
    dxDrawText("X2", sx/2 + 240/zoom, sy/2 - 5/zoom, left, center, tocolor(212, 212, 212), 1/zoom, fonts[4], "left", "center", false, false, false, false)

    dxDrawImage(sx/2 + 300/zoom, sy/2 - 15/zoom, 17/zoom, 17/zoom, textures[2], 0, 0, 0, white, false)
    dxDrawText("Temizle", sx/2 + 325/zoom, sy/2 - 5/zoom, left, center, tocolor(212, 212, 212), 1/zoom, fonts[4], "left", "center", false, false, false, false)


    dxDrawRoundedRectangle((sx/2 - 251/zoom/2) - 300/zoom, sy/2 + 30/zoom, 251/zoom, 50/zoom, 25, tocolor(180, 70, 70))
    dxDrawRoundedRectangle((sx/2 - 251/zoom/2), sy/2 + 30/zoom, 251/zoom, 50/zoom, 25, tocolor(70, 180, 70))
    dxDrawRoundedRectangle((sx/2 - 251/zoom/2) + 300/zoom, sy/2 + 30/zoom, 251/zoom, 50/zoom, 25, tocolor(64, 64, 64))

    dxDrawText("Kırmızı - X2", sx/2 - 300/zoom, sy/2 + 48/zoom, center, center, tocolor(255, 255, 255), 1/zoom, fonts[5], "center", "center", false, false, false, false)
    dxDrawText("Bahis oynamak için tıklayın", sx/2 - 300/zoom, sy/2 + 65/zoom, center, center, tocolor(230, 230, 230), 1/zoom, fonts[6], "center", "center", false, false, false, false)

    dxDrawText("Yeşil - X7", sx/2, sy/2 + 48/zoom, center, center, tocolor(255, 255, 255), 1/zoom, fonts[5], "center", "center", false, false, false, false)
    dxDrawText("Bahis oynamak için tıklayın", sx/2, sy/2 + 65/zoom, center, center, tocolor(230, 230, 230), 1/zoom, fonts[6], "center", "center", false, false, false, false)

    dxDrawText("Siyah - X2", sx/2 + 300/zoom, sy/2 + 48/zoom, center, center, tocolor(255, 255, 255), 1/zoom, fonts[5], "center", "center", false, false, false, false)
    dxDrawText("Bahis oynamak için tıklayın", sx/2 + 300/zoom, sy/2 + 65/zoom, center, center, tocolor(230, 230, 230), 1/zoom, fonts[6], "center", "center", false, false, false, false)

    for i=1,7 do
        if games["red"][i] then
            local v = games["red"][i]
            dxDrawText(v[1], sx/2 - 390/zoom, sy/2 + 115/zoom + ((i-1)*30/zoom), left, center, tocolor(212, 212, 212), 1/zoom, fonts[4], "left", "center", false, false, false, false)
            dxDrawText(formatNumber(v[2]), sx/2 - 200/zoom, sy/2 + 115/zoom + ((i-1)*30/zoom), right, center, tocolor(212, 212, 212), 1/zoom, fonts[4], "right", "center", false, false, false, false)
            dxDrawImage(sx/2 - 190/zoom, sy/2 + 106/zoom + ((i-1)*30/zoom), 17/zoom, 17/zoom, textures[2], 0, 0, 0, white, false)
            if v[3] then
                dxDrawImage(sx/2 - 427/zoom, sy/2 + 101/zoom + ((i-1)*30/zoom), 30/zoom, 30/zoom, v[3], 0, 0, 0, white, false)
            else
                dxDrawImage(sx/2 - 427/zoom, sy/2 + 101/zoom + ((i-1)*30/zoom), 30/zoom, 30/zoom, mask, 0, 0, 0, white, false)
            end
        end
    end

    for i=1,7 do
        if games["green"][i] then
            local v = games["green"][i]
            dxDrawText(v[1], sx/2 - 90/zoom, sy/2 + 115/zoom + ((i-1)*30/zoom), left, center, tocolor(212, 212, 212), 1/zoom, fonts[4], "left", "center", false, false, false, false)
            dxDrawText(formatNumber(v[2]), sx/2 + 100/zoom, sy/2 + 115/zoom + ((i-1)*30/zoom), right, center, tocolor(212, 212, 212), 1/zoom, fonts[4], "right", "center", false, false, false, false)
            dxDrawImage(sx/2 + 110/zoom, sy/2 + 106/zoom + ((i-1)*30/zoom), 17/zoom, 17/zoom, textures[2], 0, 0, 0, white, false)
            if v[3] then
                dxDrawImage(sx/2 - 127/zoom, sy/2 + 103/zoom + ((i-1)*30/zoom), 30/zoom, 30/zoom, v[3], 0, 0, 0, white, false)
            else
                dxDrawImage(sx/2 - 127/zoom, sy/2 + 103/zoom + ((i-1)*30/zoom), 30/zoom, 30/zoom, mask, 0, 0, 0, white, false)
            end
        end
    end

    for i=1,7 do
        if games["black"][i] then
            local v = games["black"][i]
            dxDrawText(v[1], sx/2 + 190/zoom, sy/2 + 115/zoom + ((i-1)*30/zoom), left, center, tocolor(212, 212, 212), 1/zoom, fonts[4], "left", "center", false, false, false, false)
            dxDrawText(formatNumber(v[2]), sx/2 + 400/zoom, sy/2 + 115/zoom + ((i-1)*30/zoom), right, center, tocolor(212, 212, 212), 1/zoom, fonts[4], "right", "center", false, false, false, false)
            dxDrawImage(sx/2 + 410/zoom, sy/2 + 106 + ((i-1)*30/zoom), 17/zoom, 17/zoom, textures[2], 0, 0, 0, white, false)
            if v[3] then
                dxDrawImage(sx/2 + 173/zoom, sy/2 + 103/zoom + ((i-1)*30/zoom), 30/zoom, 30/zoom, v[3], 0, 0, 0, white, false)
            else
                dxDrawImage(sx/2 + 173/zoom, sy/2 + 103/zoom + ((i-1)*30/zoom), 30/zoom, 30/zoom, mask, 0, 0, 0, white, false)
            end
        end
    end

    dxDrawImage((sx/2 - 256/zoom/2) - 300/zoom, sy/2 + 243/zoom, 256/zoom, 64/zoom, textures[7], 0, 0, 0, tocolor(36, 36, 36), false)
    dxDrawImage((sx/2 - 256/zoom/2), sy/2 + 243/zoom, 256/zoom, 64/zoom, textures[7], 0, 0, 0, tocolor(36, 36, 36), false)
    dxDrawImage((sx/2 - 256/zoom/2) + 300/zoom, sy/2 + 243/zoom, 256/zoom, 64/zoom, textures[7], 0, 0, 0, tocolor(36, 36, 36), false)
end
--addEventHandler("onClientRender", root, render)

function applyAvatar(player)
	if getElementData(player, "player:avatar") then
        local ava = getElementData(player, "player:avatar")
		local tex = dxCreateTexture(ava)
		if not tex then
			return false, false
		end
		local hudMaskShader = dxCreateShader("hud_mask.fx")	
		local maskTexture = mask
		dxSetShaderValue(hudMaskShader, "sPicTexture", tex)
		dxSetShaderValue(hudMaskShader, "sMaskTexture", maskTexture)
        return hudMaskShader, tex
    else
        return false, false
    end
end

addEvent("casino:addBet", true)
addEventHandler("casino:addBet", resourceRoot, function(player, color, bet)
    local sh1, sh2 = applyAvatar(player)
    table.insert(games[color], {getPlayerName(player):gsub("#%x%x%x%x%x%x", ""), bet, sh1, sh2})
end)


local x_los = 0

local random_colors = {}

function preRender()
    dxSetRenderTarget(rt, true)
        dxSetBlendMode("blend")
        for i=1,150 do
            if random_colors then
                if random_colors[i] then
                    dxDrawImage(30/zoom + ((i-1)*90/zoom) + x_los/zoom, 5/zoom, 90/zoom, 90/zoom, textures[5], 0, 0, 0, tocolor(random_colors[i][2], random_colors[i][3], random_colors[i][4]), false)
                    if random_colors[i][2] == 180 then
                        dxDrawImage(50/zoom + ((i-1)*90/zoom) + x_los/zoom, 25/zoom, 50/zoom, 50/zoom, textures[5], 0, 0, 0, tocolor(160, 51, 51), false)
                    elseif random_colors[i][2] == 64 then
                        dxDrawImage(50/zoom + ((i-1)*90/zoom) + x_los/zoom, 25/zoom, 50/zoom, 50/zoom, textures[5], 0, 0, 0, tocolor(44, 44, 44), false)
                    else
                        dxDrawImage(50/zoom + ((i-1)*90/zoom) + x_los/zoom, 25/zoom, 50/zoom, 50/zoom, textures[5], 0, 0, 0, tocolor(50, 160, 50), false)
                    end
                    dxDrawText(random_colors[i][1], 75/zoom + ((i-1)*90/zoom) + x_los/zoom, 50/zoom, center, center, white, 1/zoom, fonts[1], "center", "center", false, false, false, false)
                end
            end
        end
    dxSetRenderTarget()
end
--addEventHandler("onClientPreRender", root, preRender)

addEvent("casino:start", true)
addEventHandler("casino:start", resourceRoot, function(random_t, INDEX, tick)
    random_colors = random_t
    ARG0 = INDEX
    ARG0 = ARG0 * -90
    ARG0 = ARG0 + (6*90)
    animate(x_los, ARG0, 3, 5000, function(v) x_los = v end)
    if tick then
        start_tick = getTickCount()
        start_tick = start_tick - tick
    end
end)

addEvent("casino:end", true)
addEventHandler("casino:end", resourceRoot, function(random_t, tick, lwins)
    x_los = 0
    random_colors = random_t
    start_tick = getTickCount()
    start_tick = start_tick - tick
    last_wins = lwins

    for i,v in ipairs(games["red"]) do
        if isElement(v[3]) or isElement(v[4]) then
            destroyElement(v[3])
            destroyElement(v[4])
        end
    end

    for i,v in ipairs(games["green"]) do
        if isElement(v[3]) or isElement(v[4]) then
            destroyElement(v[3])
            destroyElement(v[4])
        end
    end

    for i,v in ipairs(games["black"]) do
        if isElement(v[3]) or isElement(v[4]) then
            destroyElement(v[3])
            destroyElement(v[4])
        end
    end

    games = {
        ["red"] = {},
        ["green"] = {},
        ["black"] = {},
    }
end)

local click_tick = false

function click(b, s)
    if b == "left" and s == "down" then
        if click_tick then
            if getTickCount() - click_tick < 1000 then
                return false
            end
        end

        if isMouseIn(sx/2 + 480/zoom, sy/2 - 300/zoom, 30/zoom, 30/zoom) then
            removeEventHandler("onClientRender", root, render)
            for i,v in ipairs(textures) do
                destroyElement(v)
            end
            for i,v in ipairs(fonts) do
                destroyElement(v)
            end
            textures = {}
            fonts = {}
            removeEventHandler("onClientPreRender", root, preRender)
            removeEventHandler("onClientClick", root, click)
            exports["editbox-casino"]:destroyEditbox("kasynko")
            showCursor(false)
        elseif isMouseIn((sx/2 - 251/zoom/2) - 300/zoom, sy/2 + 30/zoom, 251/zoom, 50/zoom) then
            if #games["black"] > 0 or #games["green"] > 0 then return end
            local text = exports["editbox-casino"]:editboxGetText("kasynko")
            local sayi, sub = string.gsub(text, "%.", "")
            if tonumber(sayi) then
                local text = sayi
                if tonumber(text) > 0 and tonumber(mymoney) >= tonumber(text) then
                        if tonumber(text) > ograniczenie then
                            outputChatBox("Şundan daha büyük bir sayıya bahis koyamazsınız: "..formatNumber(ograniczenie))
                            return false
                        end
                    triggerServerEvent("casino:bet", resourceRoot, "red", math.floor(tonumber(text)))
                    click_tick = getTickCount()
                end
            end
        elseif isMouseIn((sx/2 - 251/zoom/2), sy/2 + 30/zoom, 251/zoom, 50/zoom) then
            if #games["black"] > 0 or #games["red"] > 0 then return end
            local text = exports["editbox-casino"]:editboxGetText("kasynko")
            local sayi, sub = string.gsub(text, "%.", "")

            if tonumber(sayi) then
                local text = sayi
                if tonumber(text) > 0 and tonumber(mymoney) >= tonumber(text) then
                        if tonumber(text) > ograniczenie then
                            outputChatBox("Şundan daha büyük bir sayıya bahis koyamazsınız: "..formatNumber(ograniczenie))
                            return false
                        end
                    triggerServerEvent("casino:bet", resourceRoot, "green", math.floor(tonumber(text)))
                    click_tick = getTickCount()
                end
            end
        elseif isMouseIn((sx/2 - 251/zoom/2) + 300/zoom, sy/2 + 30/zoom, 251/zoom, 50/zoom) then
            if #games["green"] > 0 or #games["red"] > 0 then return end
            local text = exports["editbox-casino"]:editboxGetText("kasynko")
            local sayi, sub = string.gsub(text, "%.", "")

            if tonumber(sayi) then
                local text = sayi
                if tonumber(text) > 0 and tonumber(mymoney) >= tonumber(text) then
                        if tonumber(text) > ograniczenie then
                            outputChatBox("Şundan daha büyük bir sayıya bahis koyamazsınız: "..formatNumber(ograniczenie))
                            return false
                        end
                    triggerServerEvent("casino:bet", resourceRoot, "black", math.floor(tonumber(text)))
                    click_tick = getTickCount()
                end
            end
        end

        if isMouseIn(sx/2 - 385/zoom, sy/2 - 20/zoom, 80/zoom, 27/zoom) then
            local text = exports["editbox-casino"]:editboxGetText("kasynko")
            local sayi, sub = string.gsub(text, "%.", "")

            if tonumber(sayi) then
                local text = tonumber(sayi)
                exports["editbox-casino"]:editboxSetText("kasynko", tostring(formatNumber(tonumber(text)+1000000)))
            else
                exports["editbox-casino"]:editboxSetText("kasynko", "1.000.000")
            end
        elseif isMouseIn(sx/2 - 290/zoom, sy/2 - 20/zoom, 80/zoom, 27/zoom) then
            local text = exports["editbox-casino"]:editboxGetText("kasynko")
            local sayi, sub = string.gsub(text, "%.", "")

            if tonumber(sayi) then
                local text = tonumber(sayi)
                exports["editbox-casino"]:editboxSetText("kasynko", tostring(formatNumber(tonumber(text)+10000000)))
            else
                exports["editbox-casino"]:editboxSetText("kasynko", "10.000.000")
            end
        elseif isMouseIn(sx/2 - 190/zoom, sy/2 - 20/zoom, 80/zoom, 27/zoom) then
            local text = exports["editbox-casino"]:editboxGetText("kasynko")
            local sayi, sub = string.gsub(text, "%.", "")

            if tonumber(sayi) then
                local text = tonumber(sayi)
                exports["editbox-casino"]:editboxSetText("kasynko", tostring(formatNumber(tonumber(text)+100000000)))
            else
                exports["editbox-casino"]:editboxSetText("kasynko", "100.000.000")
            end
        elseif isMouseIn(sx/2 + 115/zoom, sy/2 - 20/zoom, 80/zoom, 27/zoom) then
            local text = exports["editbox-casino"]:editboxGetText("kasynko")
            local sayi, sub = string.gsub(text, "%.", "")

            if tonumber(sayi) then
                local text = tonumber(sayi)
                exports["editbox-casino"]:editboxSetText("kasynko", tostring(formatNumber(tonumber(text)/2)))
            end

        elseif isMouseIn(sx/2 + 215/zoom, sy/2 - 20/zoom, 80/zoom, 27/zoom) then
            local text = exports["editbox-casino"]:editboxGetText("kasynko")
            local sayi, sub = string.gsub(text, "%.", "")

            if tonumber(sayi) then
                local text = tonumber(sayi)
                exports["editbox-casino"]:editboxSetText("kasynko", tostring(formatNumber(tonumber(text)*2)))
            end
        elseif isMouseIn(sx/2 + 300/zoom, sy/2 - 20/zoom, 80/zoom, 27/zoom) then
            exports["editbox-casino"]:editboxSetText("kasynko", "")
        end
    end
end
--addEventHandler("onClientClick", root, click)

local pos = {
    {1964.97396, 1025.62720, 991.46875},
    {1962.14302, 1025.62720, 991.46875},
    {1960.64011, 1025.62720, 991.46875},
    {1957.84281, 1025.62720, 991.46875},

    {1963.97266, 1020.23877, 991.46875},
    {1958.73828, 1020.23877, 991.46875},

    {1963.97266, 1015.63196, 991.46875},
    {1958.73828, 1015.63196, 991.46875},

    {1964.99273, 1009.87976, 991.46875},
    {1962.14302, 1009.87976, 991.46875},
    {1960.64011, 1009.87976, 991.46875},
    {1957.84281, 1009.87976, 991.46875},
}

for i,v in ipairs(pos) do
    local marker = createMarker(v[1], v[2], v[3], "cylinder", 1)
    setElementInterior(marker, 10)
end

addEvent("casino:setMoney", true)
addEventHandler("casino:setMoney", resourceRoot, function(money)
    mymoney = money
end)

addEvent("casino:updateMoney", true)
addEventHandler("casino:updateMoney", resourceRoot, function(money)
    mymoney = mymoney + money
end)

addEvent("casino:minusMoney", true)
addEventHandler("casino:minusMoney", resourceRoot, function(money)
    mymoney = mymoney - money
end)

addEventHandler("onClientMarkerHit", resourceRoot, function(player)
    if player == localPlayer then
        triggerServerEvent("casino:getMoney", resourceRoot)
        fonts = {
            [1] = dxCreateFont("fonts/DroidSans.ttf", 14),
            [2] = dxCreateFont("fonts/DroidSansBold.ttf", 14),
            [3] = dxCreateFont("fonts/DroidSans.ttf", 13),
            [4] = dxCreateFont("fonts/DroidSans.ttf", 11),
            [5] = dxCreateFont("fonts/DroidSansBold.ttf", 12),
            [6] = dxCreateFont("fonts/DroidSans.ttf", 10),
        }
        
        textures = {
            [1] = dxCreateTexture("files/background.png","argb",false,"clamp"),
            [2] = dxCreateTexture("files/coin.png","argb",false,"clamp"),
            [3] = dxCreateTexture("files/arrow.png","argb",false,"clamp"),
            [4] = dxCreateTexture("files/line.png","argb",false,"clamp"),
            [5] = dxCreateTexture("files/cube.png","argb",false,"clamp"),
            [6] = dxCreateTexture("files/mask.png","argb",false,"clamp"),
            [7] = dxCreateTexture("files/mask_down.png","argb",false,"clamp"),
            [8] = nil,
            [9] = dxCreateTexture("files/X.png","argb",false,"clamp"),
        }
        addEventHandler("onClientRender", root, render)
        addEventHandler("onClientPreRender", root, preRender)
        addEventHandler("onClientClick", root, click)
        showCursor(true)
        exports["editbox-casino"]:createEditbox("kasynko", "Bahisiniz...", sx/2 - 170/zoom/2, sy/2 - 22/zoom, 170/zoom, 31/zoom, 1, 10)
    end
end)

setDevelopmentMode(true)

function isMouseIn( x, y, width, height )
	if ( not isCursorShowing( ) ) then
		return false
	end
	local sx, sy = guiGetScreenSize ( )
	local cx, cy = getCursorPosition ( )
	local cx, cy = ( cx * sx ), ( cy * sy )
	
	return ( ( cx >= x and cx <= x + width ) and ( cy >= y and cy <= y + height ) )
end

local anims, builtins = {}, {"Linear", "InQuad", "OutQuad", "InOutQuad", "OutInQuad", "InElastic", "OutElastic", "InOutElastic", "OutInElastic", "InBack", "OutBack", "InOutBack", "OutInBack", "InBounce", "OutBounce", "InOutBounce", "OutInBounce", "SineCurve", "CosineCurve"}

function table.find(t, v)
	for k, a in ipairs(t) do
		if a == v then
			return k
		end
	end
	return false
end

function animate(f, t, easing, duration, onChange, onEnd)
	assert(type(f) == "number", "Bad argument @ 'animate' [expected number at argument 1, got "..type(f).."]")
	assert(type(t) == "number", "Bad argument @ 'animate' [expected number at argument 2, got "..type(t).."]")
	assert(type(easing) == "string" or (type(easing) == "number" and (easing >= 1 or easing <= #builtins)), "Bad argument @ 'animate' [Invalid easing at argument 3]")
	assert(type(duration) == "number", "Bad argument @ 'animate' [expected number at argument 4, got "..type(duration).."]")
	assert(type(onChange) == "function", "Bad argument @ 'animate' [expected function at argument 5, got "..type(onChange).."]")
	table.insert(anims, {from = f, to = t, easing = table.find(builtins, easing) and easing or builtins[easing], duration = duration, start = getTickCount( ), onChange = onChange, onEnd = onEnd})
	return #anims
end

function destroyAnimation(a)
	if anims[a] then
		table.remove(anims, a)
	end
end

addEventHandler("onClientRender", root, function( )
	local now = getTickCount( )
	for k,v in ipairs(anims) do
		v.onChange(interpolateBetween(v.from, 0, 0, v.to, 0, 0, (now - v.start) / v.duration, v.easing))
		if now >= v.start+v.duration then
			if type(v.onEnd) == "function" then
				v.onEnd( )
			end
			table.remove(anims, k)
		end
	end
end)

exports["editbox-casino"]:destroyEditbox("kasynko")
--exports["editbox-casino"]:createEditbox("kasynko", "Twój zakład...", sx/2 - 170/zoom/2, sy/2 - 22/zoom, 170/zoom, 31/zoom, 1, 10)


-----------------------------------------------------------
-- Sitemiz : https://sparrow-mta.blogspot.com/

-- Facebook : https://facebook.com/sparrowgta/
-- İnstagram : https://instagram.com/sparrowmta/
-- YouTube : https://www.youtube.com/@TurkishSparroW/

-- Discord : https://discord.gg/DzgEcvy
-----------------------------------------------------------
-----------------------------------------------------------
-- Sitemiz : https://sparrow-mta.blogspot.com/

-- Facebook : https://facebook.com/sparrowgta/
-- İnstagram : https://instagram.com/sparrowmta/
-- YouTube : https://www.youtube.com/@TurkishSparroW/

-- Discord : https://discord.gg/DzgEcvy
-----------------------------------------------------------


--[[
    Author: EnoNeK
    For: Snow.*
]]

local sx, sy = guiGetScreenSize()
local zoom = 1920/sx

local fonts = {
    [1] = dxCreateFont("fonts/DroidSans.ttf", 11),
}

local textures = {
    [1] = dxCreateTexture("files/coin.png"),
}

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

local editbox = {}
local showed = false

function createEditbox(n, t, px, py, pw, ph, i, maxx)
    table.insert(editbox, {name=n, temptext=t, text="", x=px, y=py, w=pw, h=ph, icon=i, max=maxx, tick = getTickCount(), tickBack = getTickCount(), selected=false})
    if not showed then
        addEventHandler("onClientRender", root, renderEditbox)
        addEventHandler("onClientClick", root, click)
        addEventHandler("onClientCharacter", root, character)
        showed = true
    end
end

function renderEditbox()
    for i,v in ipairs(editbox) do
        local alpha = 0
        if v.selected then
            alpha,_,_ = interpolateBetween(0, 0, 0, 255, 0, 0, (getTickCount()-v.tick)/1000, "SineCurve")
        end

        if v.selected or isMouseIn(v.x, v.y, v.w, v.h) then
            dxDrawRoundedRectangle(v.x, v.y, v.w, v.h, 15, tocolor(62, 62, 62))
        else
            dxDrawRoundedRectangle(v.x, v.y, v.w, v.h, 15, tocolor(53, 53, 53))
        end

        dxDrawImage(v.x + 10/zoom, v.y + 5/zoom, 20/zoom, 20/zoom, textures[v.icon], 0, 0, 0, white, false)

        if #v.text < 1 then
            dxDrawText(v.temptext, v.x + 40/zoom, v.y + 15/zoom, left, center, tocolor(212, 212, 212, v.alpha), 1/zoom, fonts[1], "left", "center", false, false, false, false)     
        else
            dxDrawText(v.text, v.x + 40/zoom, v.y + 15/zoom, left, center, tocolor(212, 212, 212, v.alpha), 1/zoom, fonts[1], "left", "center", false, false, false, false) 
        end

        local width = dxGetTextWidth(v.text, 1/zoom, fonts[1], false) 

        dxDrawRectangle((v.x + 40/zoom) + width, v.y + 5/zoom, 1/zoom, 20/zoom, tocolor(255, 255, 255, alpha), false)

        if getKeyState("backspace") then
            v.backState = v.backState - 1
        else
            v.backState = 100
        end

        if getKeyState("backspace") and (getTickCount() - v.tickBack) > v.backState and v.selected then
            v.text = string.sub(v.text, 1, #v.text - 1)
            v.tickBack = getTickCount()
        end
    end
end
--addEventHandler("onClientRender", root, renderEditbox)

function click(b, s)
    if b == "left" and s == "down" then
        for i,v in pairs(editbox) do
            if isMouseIn(v.x, v.y, v.w, v.h) then
                if v.selected then
                    v.tick = getTickCount()
                    v.selected = false
                else
                    v.tick = getTickCount()
                    v.selected = true
                end
            else
                if v.selected then
                    v.tick = getTickCount()
                    v.selected = false
                end
	    	end
        end
    end
end
--addEventHandler("onClientClick", root, click)

function formatNumber(n)
    local left, num, right = string.match(n, '^([^%d]*%d)(%d*)(.-)$')
    return left..(num:reverse():gsub('(%d%d%d)', '%1.'):reverse())..right
end

function character(s)
    for i,v in pairs(editbox) do
        if v.selected and #v.text < v.max then
            v.text = v.text..s
            local sayi, sub = string.gsub(v.text, "%.", "")
            if tonumber(sayi) then
                v.text = formatNumber(sayi)
            end
        end
    end
end
--addEventHandler("onClientCharacter", root, character)

function destroyEditbox(n)
    for i,v in pairs(editbox) do
        if v.name == n then
            editbox[i] = nil
        end
    end

    if #editbox < 1 then
        removeEventHandler("onClientRender", root, renderEditbox)
        removeEventHandler("onClientClick", root, click)
        removeEventHandler("onClientCharacter", root, character)
        showed = false
    end
end

function editboxGetText(n)
    for i,v in ipairs(editbox) do
        if v.name == n then
            return v.text
        end
    end
end

function editboxSetText(n, t)
    for i,v in ipairs(editbox) do
        if v.name == n then
            v.text = t
            break
        end
    end
end

function isMouseIn( x, y, width, height ) -- https://wiki.multitheftauto.com/wiki/IsMouseInPosition
	if ( not isCursorShowing( ) ) then
		return false
	end
	local sx, sy = guiGetScreenSize ( )
	local cx, cy = getCursorPosition ( )
	local cx, cy = ( cx * sx ), ( cy * sy )
	
	return ( ( cx >= x and cx <= x + width ) and ( cy >= y and cy <= y + height ) )
end
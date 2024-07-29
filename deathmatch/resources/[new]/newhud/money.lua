local screenW,screenH = guiGetScreenSize()
local resW, resH = 1280,1024
local x, y = (screenW/resW), (screenH/resH)
local components = { "area_name", "radio", "vehicle_name" }

local fenixFONT = dxCreateFont("Archivos/Font.ttf", 11)
local fenixFONT1 = dxCreateFont("Archivos/Font.ttf", 10)

function convertNumber ( number )   
    local formatted = number   
    while true do       
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')     
        if ( k==0 ) then       
            break   
        end   
    end   
    return formatted 
end

function MoneyHud ( )

        local money = getElementData(localPlayer, "money") or "0"
        local bankmoney = getElementData(localPlayer, "bankmoney") or "0"

        dxDrawImage(x*365, y*-70, x*915, y*785, "Archivos/hud.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("$ "..money, x*1145, y*136, x*1220, y*150, tocolor(255, 255, 255, 255), 1.20, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("$ "..bankmoney, x*1145, y*201, x*1220, y*215, tocolor(255, 255, 255, 255), 1.20, "default-bold", "left", "top", false, false, false, false, false)

end
addEventHandler ( "onClientRender", getRootElement(), MoneyHud )

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

local screenW, screenH = guiGetScreenSize()
local x, y =  (screenW/1366), (screenH/768)

local Font = dxCreateFont("Font.ttf", 12)

local InfoInMarkerActive = false
local TimerRobShopActive = false

local TimerRobShopSec = 120

function InfoInMarker()
    dxDrawText("Presiona [H] para comenzar a robar.", (screenW * 0.4180) - 1, (screenH * 0.9323) - 1, (screenW * 0.5820) - 1, (screenH * 1.0099) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("Presiona [H] para comenzar a robar.", (screenW * 0.4180) + 1, (screenH * 0.9323) - 1, (screenW * 0.5820) + 1, (screenH * 1.0099) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("Presiona [H] para comenzar a robar.", (screenW * 0.4180) - 1, (screenH * 0.9323) + 1, (screenW * 0.5820) - 1, (screenH * 1.0099) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("Presiona [H] para comenzar a robar.", (screenW * 0.4180) + 1, (screenH * 0.9323) + 1, (screenW * 0.5820) + 1, (screenH * 1.0099) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("#ffffffPresiona [#ff0000H#ffffff] para comenzar a robar.", screenW * 0.4180, screenH * 0.9323, screenW * 0.5820, screenH * 1.0099, tocolor(255, 255, 255, 255), 1.15, Font, "center", "center", false, false, false, true, false)
end

function ActiveInfoInMarker()
    if InfoInMarkerActive == false then
	    InfoInMarkerActive = true
		addEventHandler("onClientRender", root, InfoInMarker)
    else
	    InfoInMarkerActive = false
		removeEventHandler("onClientRender", root, InfoInMarker)
	end
end
addEvent("ActiveInfoInMarker", true)
addEventHandler("ActiveInfoInMarker", getRootElement(), ActiveInfoInMarker)

function TimerRobShop()
    local timer = interpolateBetween(1000, 0, 0, 0, 0, 0, (getTickCount()-tick)/1000/TimerRobShopSec, "Linear")	
    local minutes, seconds = convertTime(timer*TimerRobShopSec)
    dxDrawText("TIEMPO : "..minutes.." : "..seconds.."  Para terminar el robo y recibir el dinero", (screenW * 0.4180) - 1, (screenH * 0.9323) - 1, (screenW * 0.5820) - 1, (screenH * 0.9648) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIEMPO : "..minutes.." : "..seconds.."  Para terminar el robo y recibir el dinero", (screenW * 0.4180) + 1, (screenH * 0.9323) - 1, (screenW * 0.5820) + 1, (screenH * 0.9648) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIEMPO : "..minutes.." : "..seconds.."  Para terminar el robo y recibir el dinero", (screenW * 0.4180) - 1, (screenH * 0.9323) + 1, (screenW * 0.5820) - 1, (screenH * 0.9648) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIEMPO : "..minutes.." : "..seconds.."  Para terminar el robo y recibir el dinero", (screenW * 0.4180) + 1, (screenH * 0.9323) + 1, (screenW * 0.5820) + 1, (screenH * 0.9648) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIEMPO : #00fffc"..minutes.."#ffffff : #00fffc"..seconds.."  #ffffffPara recibir el dinero", screenW * 0.4180, screenH * 0.9323, screenW * 0.5820, screenH * 0.9648, tocolor(255, 255, 255, 255), 1.15, Font, "center", "center", false, false, false, true, false)
end

function ActiveTimerRobShop()
    if TimerRobShopActive == false then
	    TimerRobShopActive = true
		addEventHandler("onClientRender", root, TimerRobShop)
		tick = getTickCount()
	else
	    TimerRobShopActive = false
		removeEventHandler("onClientRender", root, TimerRobShop)
		tick = getTickCount()
	end
end
addEvent("ActiveTimerRobShop", true)
addEventHandler("ActiveTimerRobShop", getRootElement(), ActiveTimerRobShop)

function RestartResource()
    InfoInMarkerActive = false
	removeEventHandler("onClientRender", root, InfoInMarker)
	TimerRobShopActive = false
	removeEventHandler("onClientRender", root, TimerRobShop)
end
addEventHandler("onClientResourceStart", getRootElement(), RestartResource)

function convertTime(ms)
    local min = math.floor( ms/60000 )
    local sec = math.floor( (ms/1000)%60 )
    return min, sec 
end

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------


--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

local screenW, screenH = guiGetScreenSize()
local x, y =  (screenW/1366), (screenH/768)

local Font = dxCreateFont("Font.ttf", 12)

local InfoStartRobShipActive = false
local TimerGoBackShipActive = false
local TimerMoneyShipActive = false

local TimeGoBackShipSec = 60
local TimeMoneyShip = 30

function InfoStartRobShip()
    dxDrawText("Press the [H] button to steal from the ship.", (screenW * 0.4180) - 1, (screenH * 0.9323) - 1, (screenW * 0.5820) - 1, (screenH * 1.0099) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("Press the [H] button to steal from the ship.", (screenW * 0.4180) + 1, (screenH * 0.9323) - 1, (screenW * 0.5820) + 1, (screenH * 1.0099) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("Press the [H] button to steal from the ship.", (screenW * 0.4180) - 1, (screenH * 0.9323) + 1, (screenW * 0.5820) - 1, (screenH * 1.0099) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("Press the [H] button to steal from the ship.", (screenW * 0.4180) + 1, (screenH * 0.9323) + 1, (screenW * 0.5820) + 1, (screenH * 1.0099) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("#ffffffPress the [#ff0000H#ffffff] button to steal from the ship.", screenW * 0.4180, screenH * 0.9323, screenW * 0.5820, screenH * 1.0099, tocolor(255, 255, 255, 255), 1.15, Font, "center", "center", false, false, false, true, false)
end

function ActiveInfoStartRobShip()
    if InfoStartRobShipActive == false then
	    InfoStartRobShipActive = true
		addEventHandler("onClientRender", root, InfoStartRobShip)
	else
	    InfoStartRobShipActive = false
		removeEventHandler("onClientRender", root, InfoStartRobShip)
	end
end
addEvent("ActiveInfoStartRobShip", true)
addEventHandler("ActiveInfoStartRobShip", getRootElement(), ActiveInfoStartRobShip)

function TimerGoBackShip()
    local timer = interpolateBetween(1000, 0, 0, 0, 0, 0, (getTickCount()-tick)/1000/TimeGoBackShipSec, "Linear")	
    local minutes, seconds = convertTime(timer*TimeGoBackShipSec)
    dxDrawText("TIME : "..minutes.." : "..seconds.." - Go to the back of the ship.", (screenW * 0.4180) - 1, (screenH * 0.9323) - 1, (screenW * 0.5820) - 1, (screenH * 0.9648) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.." - Go to the back of the ship.", (screenW * 0.4180) + 1, (screenH * 0.9323) - 1, (screenW * 0.5820) + 1, (screenH * 0.9648) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.." - Go to the back of the ship.", (screenW * 0.4180) - 1, (screenH * 0.9323) + 1, (screenW * 0.5820) - 1, (screenH * 0.9648) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.." - Go to the back of the ship.", (screenW * 0.4180) + 1, (screenH * 0.9323) + 1, (screenW * 0.5820) + 1, (screenH * 0.9648) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : #00fffc"..minutes.."#ffffff : #00fffc"..seconds.." #ffffff- Go to the back of the ship.", screenW * 0.4180, screenH * 0.9323, screenW * 0.5820, screenH * 0.9648, tocolor(255, 255, 255, 255), 1.15, Font, "center", "center", false, false, false, true, false)
end

function ActiveTimerGoBackShip()
    if TimerGoBackShipActive == false then
	    TimerGoBackShipActive = true
		addEventHandler("onClientRender", root, TimerGoBackShip)
		tick = getTickCount()
	else
	    TimerGoBackShipActive = false
		removeEventHandler("onClientRender", root, TimerGoBackShip)
		tick = getTickCount()
	end
end
addEvent("ActiveTimerGoBackShip", true)
addEventHandler("ActiveTimerGoBackShip", getRootElement(), ActiveTimerGoBackShip)

function TimerMoneyShip()
    local timer = interpolateBetween(1000, 0, 0, 0, 0, 0, (getTickCount()-tick)/1000/TimeMoneyShip, "Linear")	
    local minutes, seconds = convertTime(timer*TimeMoneyShip)
    dxDrawText("TIME : "..minutes.." : "..seconds.." - to receive money.", (screenW * 0.4180) - 1, (screenH * 0.9323) - 1, (screenW * 0.5820) - 1, (screenH * 0.9648) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.." - to receive money.", (screenW * 0.4180) + 1, (screenH * 0.9323) - 1, (screenW * 0.5820) + 1, (screenH * 0.9648) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.." - to receive money.", (screenW * 0.4180) - 1, (screenH * 0.9323) + 1, (screenW * 0.5820) - 1, (screenH * 0.9648) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.." - to receive money.", (screenW * 0.4180) + 1, (screenH * 0.9323) + 1, (screenW * 0.5820) + 1, (screenH * 0.9648) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : #00fffc"..minutes.."#ffffff : #00fffc"..seconds.." #ffffff- to receive money.", screenW * 0.4180, screenH * 0.9323, screenW * 0.5820, screenH * 0.9648, tocolor(255, 255, 255, 255), 1.15, Font, "center", "center", false, false, false, true, false)
end

function ActiveTimerMoneyShip()
    if TimerMoneyShipActive == false then
	    TimerMoneyShipActive = true
		addEventHandler("onClientRender", root, TimerMoneyShip)
		tick = getTickCount()
	else
	    TimerMoneyShipActive = false
		removeEventHandler("onClientRender", root, TimerMoneyShip)
		tick = getTickCount()
	end
end
addEvent("ActiveTimerMoneyShip", true)
addEventHandler("ActiveTimerMoneyShip", getRootElement(), ActiveTimerMoneyShip)

function RestartResource()
    InfoStartRobShipActive = false
	removeEventHandler("onClientRender", root, InfoStartRobShip)
	TimerGoBackShipActive = false
	removeEventHandler("onClientRender", root, TimerGoBackShip)
	TimerMoneyShipActive = false
    removeEventHandler("onClientRender", root, TimerMoneyShip)
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

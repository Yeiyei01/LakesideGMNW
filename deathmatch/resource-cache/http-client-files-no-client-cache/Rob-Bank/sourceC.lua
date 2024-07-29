
--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

local screenW, screenH = guiGetScreenSize()
local x, y =  (screenW/1366), (screenH/768)

local Font = dxCreateFont("Font.ttf", 12)

local InfoStartBankRobActive = false
local TimerRobBankStartAvtive = false
local TimerBankMoneyActive = false

local TimerRobBankStartSec = 120
local TimerBankMoneySec = 30

function InfoStartBankRob()
    dxDrawText("Press the [H] button to start stealing.", (screenW * 0.4180) - 1, (screenH * 0.9323) - 1, (screenW * 0.5820) - 1, (screenH * 1.0099) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("Press the [H] button to start stealing.", (screenW * 0.4180) + 1, (screenH * 0.9323) - 1, (screenW * 0.5820) + 1, (screenH * 1.0099) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("Press the [H] button to start stealing.", (screenW * 0.4180) - 1, (screenH * 0.9323) + 1, (screenW * 0.5820) - 1, (screenH * 1.0099) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("Press the [H] button to start stealing.", (screenW * 0.4180) + 1, (screenH * 0.9323) + 1, (screenW * 0.5820) + 1, (screenH * 1.0099) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("#ffffffPress the [#ff0000H#ffffff] button to start stealing.", screenW * 0.4180, screenH * 0.9323, screenW * 0.5820, screenH * 1.0099, tocolor(255, 255, 255, 255), 1.15, Font, "center", "center", false, false, false, true, false)
end

function ActiveInfoStartBankRob()
    if InfoStartBankRobActive == false then
	    InfoStartBankRobActive = true
		addEventHandler("onClientRender", root, InfoStartBankRob)
	else
	    InfoStartBankRobActive = false
	    removeEventHandler("onClientRender", root, InfoStartBankRob)
	end
end
addEvent("ActiveInfoStartBankRob", true)
addEventHandler("ActiveInfoStartBankRob", getRootElement(), ActiveInfoStartBankRob)

function TimerRobBankStart()
    local timer = interpolateBetween(1000, 0, 0, 0, 0, 0, (getTickCount()-tick)/1000/TimerRobBankStartSec, "Linear")	
    local minutes, seconds = convertTime(timer*TimerRobBankStartSec)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  until the door opens !", (screenW * 0.4180) - 1, (screenH * 0.9323) - 1, (screenW * 0.5820) - 1, (screenH * 0.9648) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  until the door opens !", (screenW * 0.4180) + 1, (screenH * 0.9323) - 1, (screenW * 0.5820) + 1, (screenH * 0.9648) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  until the door opens !", (screenW * 0.4180) - 1, (screenH * 0.9323) + 1, (screenW * 0.5820) - 1, (screenH * 0.9648) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  until the door opens !", (screenW * 0.4180) + 1, (screenH * 0.9323) + 1, (screenW * 0.5820) + 1, (screenH * 0.9648) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : #00fffc"..minutes.."#ffffff : #00fffc"..seconds.."  #ffffffuntil the door opens !", screenW * 0.4180, screenH * 0.9323, screenW * 0.5820, screenH * 0.9648, tocolor(255, 255, 255, 255), 1.15, Font, "center", "center", false, false, false, true, false)
end

function ActiveTimerRobBankStart()
    if TimerRobBankStartAvtive == false then
	    TimerRobBankStartAvtive = true
		addEventHandler("onClientRender", root, TimerRobBankStart)
		tick = getTickCount()
	else
	    TimerRobBankStartAvtive = false
		removeEventHandler("onClientRender", root, TimerRobBankStart)
		tick = getTickCount()
	end
end
addEvent("ActiveTimerRobBankStart", true)
addEventHandler("ActiveTimerRobBankStart", getRootElement(), ActiveTimerRobBankStart)

function TimerBankMoney()
    local timer = interpolateBetween(1000, 0, 0, 0, 0, 0, (getTickCount()-tick)/1000/TimerBankMoneySec, "Linear")	
    local minutes, seconds = convertTime(timer*TimerBankMoneySec)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  to receive money !", (screenW * 0.4180) - 1, (screenH * 0.9323) - 1, (screenW * 0.5820) - 1, (screenH * 0.9648) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  to receive money !", (screenW * 0.4180) + 1, (screenH * 0.9323) - 1, (screenW * 0.5820) + 1, (screenH * 0.9648) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  to receive money !", (screenW * 0.4180) - 1, (screenH * 0.9323) + 1, (screenW * 0.5820) - 1, (screenH * 0.9648) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  to receive money !", (screenW * 0.4180) + 1, (screenH * 0.9323) + 1, (screenW * 0.5820) + 1, (screenH * 0.9648) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : #00fffc"..minutes.."#ffffff : #00fffc"..seconds.."  #ffffffto receive money !", screenW * 0.4180, screenH * 0.9323, screenW * 0.5820, screenH * 0.9648, tocolor(255, 255, 255, 255), 1.15, Font, "center", "center", false, false, false, true, false)
end

function ActiveTimerBankMoney()
    if TimerBankMoneyActive == false then
	    TimerBankMoneyActive = true
		addEventHandler("onClientRender", root, TimerBankMoney)
		tick = getTickCount()
	else
	    TimerBankMoneyActive = false
		removeEventHandler("onClientRender", root, TimerBankMoney)
		tick = getTickCount()
	end
end
addEvent("ActiveTimerBankMoney", true)
addEventHandler("ActiveTimerBankMoney", getRootElement(), ActiveTimerBankMoney)

function RestartResource()
    InfoStartBankRobActive = false
	removeEventHandler("onClientRender", root, InfoStartBankRob)
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

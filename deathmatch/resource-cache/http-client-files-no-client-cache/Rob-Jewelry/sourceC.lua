
--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

local screenW, screenH = guiGetScreenSize()
local x, y =  (screenW/1366), (screenH/768)

local Font = dxCreateFont("Font.ttf", 12)

local InfoStartRobActive = false
local TimerStartRobActive = false
local TimerMoneyActive = false

local TimeRobJewelrySec = 120
local TimeMoney = 30

function InfoStartRob()
    dxDrawText("Press the [H] button to start stealing.", (screenW * 0.4180) - 1, (screenH * 0.9323) - 1, (screenW * 0.5820) - 1, (screenH * 1.0099) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("Press the [H] button to start stealing.", (screenW * 0.4180) + 1, (screenH * 0.9323) - 1, (screenW * 0.5820) + 1, (screenH * 1.0099) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("Press the [H] button to start stealing.", (screenW * 0.4180) - 1, (screenH * 0.9323) + 1, (screenW * 0.5820) - 1, (screenH * 1.0099) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("Press the [H] button to start stealing.", (screenW * 0.4180) + 1, (screenH * 0.9323) + 1, (screenW * 0.5820) + 1, (screenH * 1.0099) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("#ffffffPress the [#ff0000H#ffffff] button to start stealing.", screenW * 0.4180, screenH * 0.9323, screenW * 0.5820, screenH * 1.0099, tocolor(255, 255, 255, 255), 1.15, Font, "center", "center", false, false, false, true, false)
end

function ActiveInfoStartRob()
    if InfoStartRobActive == false then
	    InfoStartRobActive = true
		addEventHandler("onClientRender", root, InfoStartRob)
	else
	    InfoStartRobActive = false
		removeEventHandler("onClientRender", root, InfoStartRob)
	end
end
addEvent("ActiveInfoStartRob", true)
addEventHandler("ActiveInfoStartRob", getRootElement(), ActiveInfoStartRob)

function TimerStartRob()
    local timer = interpolateBetween(1000, 0, 0, 0, 0, 0, (getTickCount()-tick)/1000/TimeRobJewelrySec, "Linear")	
    local minutes, seconds = convertTime(timer*TimeRobJewelrySec)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  until the door opens !", (screenW * 0.4180) - 1, (screenH * 0.9323) - 1, (screenW * 0.5820) - 1, (screenH * 0.9648) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  until the door opens !", (screenW * 0.4180) + 1, (screenH * 0.9323) - 1, (screenW * 0.5820) + 1, (screenH * 0.9648) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  until the door opens !", (screenW * 0.4180) - 1, (screenH * 0.9323) + 1, (screenW * 0.5820) - 1, (screenH * 0.9648) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  until the door opens !", (screenW * 0.4180) + 1, (screenH * 0.9323) + 1, (screenW * 0.5820) + 1, (screenH * 0.9648) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : #00fffc"..minutes.."#ffffff : #00fffc"..seconds.."  #ffffffuntil the door opens !", screenW * 0.4180, screenH * 0.9323, screenW * 0.5820, screenH * 0.9648, tocolor(255, 255, 255, 255), 1.15, Font, "center", "center", false, false, false, true, false)
end

function ActiveTimerStartRob()
    if TimerStartRobActive == false then
	    TimerStartRobActive = true
		addEventHandler("onClientRender", root, TimerStartRob)
		tick = getTickCount()
	else
	    TimerStartRobActive = false
		removeEventHandler("onClientRender", root, TimerStartRob)
		tick = getTickCount()
	end
end
addEvent("ActiveTimerStartRob", true)
addEventHandler("ActiveTimerStartRob", getRootElement(), ActiveTimerStartRob)

function TimerMoney()
    local timer = interpolateBetween(1000, 0, 0, 0, 0, 0, (getTickCount()-tick)/1000/TimeMoney, "Linear")	
    local minutes, seconds = convertTime(timer*TimeMoney)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  to receive money !", (screenW * 0.4180) - 1, (screenH * 0.9323) - 1, (screenW * 0.5820) - 1, (screenH * 0.9648) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  to receive money !", (screenW * 0.4180) + 1, (screenH * 0.9323) - 1, (screenW * 0.5820) + 1, (screenH * 0.9648) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  to receive money !", (screenW * 0.4180) - 1, (screenH * 0.9323) + 1, (screenW * 0.5820) - 1, (screenH * 0.9648) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : "..minutes.." : "..seconds.."  to receive money !", (screenW * 0.4180) + 1, (screenH * 0.9323) + 1, (screenW * 0.5820) + 1, (screenH * 0.9648) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("TIME : #00fffc"..minutes.."#ffffff : #00fffc"..seconds.."  #ffffffto receive money !", screenW * 0.4180, screenH * 0.9323, screenW * 0.5820, screenH * 0.9648, tocolor(255, 255, 255, 255), 1.15, Font, "center", "center", false, false, false, true, false)
end

function ActiveTimerMoney()
    if TimerMoneyActive == false then
	    TimerMoneyActive = true
		addEventHandler("onClientRender", root, TimerMoney)
		tick = getTickCount()
	else
	    TimerMoneyActive = false
	    removeEventHandler("onClientRender", root, TimerMoney)
		tick = getTickCount()
	end
end
addEvent("ActiveTimerMoney", true)
addEventHandler("ActiveTimerMoney", getRootElement(), ActiveTimerMoney)

function RestartResource()
    InfoStartRobActive = false
	removeEventHandler("onClientRender", root, InfoStartRob)
	TimerStartRobActive = false
	removeEventHandler("onClientRender", root, TimerStartRob)
	TimerMoneyActive = false
	removeEventHandler("onClientRender", root, TimerMoney)
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


--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

local screenW, screenH = guiGetScreenSize()
local x, y =  (screenW/1366), (screenH/768)
local screen = {guiGetScreenSize()}
local box = {480,35}
local pos = {screen[1]/2 -box[1]/2,screen[2]/1.2 -box[2]/2+50}
local Font = dxCreateFont("Files/Font.ttf", 12)
local ActiveMassageMarker = false
local TimerStartATMRobSec = 90

function ActiveMassageInMarker()
    local KeyStart = "h"
    dxDrawText("Press the ["..KeyStart.."] to robbery ATM.", (screenW * 0.4180) - 1, (screenH * 0.8500) - 1, (screenW * 0.5820) - 1, (screenH * 1.0099) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("Press the ["..KeyStart.."] to robbery ATM.", (screenW * 0.4180) + 1, (screenH * 0.8500) - 1, (screenW * 0.5820) + 1, (screenH * 1.0099) - 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("Press the ["..KeyStart.."] to robbery ATM.", (screenW * 0.4180) - 1, (screenH * 0.8500) + 1, (screenW * 0.5820) - 1, (screenH * 1.0099) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("Press the ["..KeyStart.."] to robbery ATM.", (screenW * 0.4180) + 1, (screenH * 0.8500) + 1, (screenW * 0.5820) + 1, (screenH * 1.0099) + 1, tocolor(0, 0, 0, 255), 1.15, Font, "center", "center", false, false, false, true, false)
    dxDrawText("#ffffffPress the [#ff0000"..KeyStart.."#ffffff] to robbery ATM.", screenW * 0.4180, screenH * 0.8500, screenW * 0.5820, screenH * 1.0099, tocolor(255, 255, 255, 255), 1.15, Font, "center", "center", false, false, false, true, false)
end

function EnableMassageMarker()
    if ActiveMassageMarker == false then
	    addEventHandler("onClientRender", root, ActiveMassageInMarker)
		ActiveMassageMarker = true
	else
	    removeEventHandler("onClientRender", root, ActiveMassageInMarker)
		ActiveMassageMarker = false
	end
end
addEvent("EnableMassageMarker", true)
addEventHandler("EnableMassageMarker", getRootElement(), EnableMassageMarker)

function math.percent(percent,maxvalue)
    if tonumber(percent) and tonumber(maxvalue) then
        return (maxvalue*percent)/100
    end
    return false
end

function math.percent2(percent,maxvalue)
    if tonumber(percent) and tonumber(maxvalue) then
        return (maxvalue*percent)/100
    end
    return false
end

function Percent()
	if (isTimer(Timer)) then
 		m = getTimerDetails(Timer)
 		m = m/1000
 		mat = math.percent(m, 30)
 		return mat
 	else
 		return 0
 	end
end

function Timer3D()
	if (isTimer(Timer)) then
		local percent = Percent()
		local percent = percent * 3.7
		local evr = math.percent2(percent, x*340)
		local timerr = interpolateBetween(1000, 0, 0, 0, 0, 0, (getTickCount()-tick)/1000/TimerStartATMRobSec, "Linear")	
        local minutes, seconds = convertTime(timerr*TimerStartATMRobSec)
		dxDrawRectangle(x*510, y*680, x*340, y*20, tocolor (0, 0, 0, 150))
	    dxDrawRectangle(x*510, y*680, x*340-evr, y*20, tocolor (0, 0, 139, 255))
		dxDrawText("Time "..minutes.." : "..seconds.."", (screenW * 0.4180) - 1, (screenH * 0.7950) - 1, (screenW * 0.5820) - 1, (screenH * 1.0099) - 1, tocolor(255, 255, 255, 255), 1.15, Font, "center", "center", false, false, false, true, false)
	end
end

function EnableTimer3D()
    Timer = setTimer(function()

	end, 90000, 1)
	removeEventHandler("onClientRender", getRootElement(), Timer3D)
	addEventHandler("onClientRender", getRootElement(), Timer3D)
	tick = getTickCount()
end
addEvent("EnableTimer3D", true)
addEventHandler("EnableTimer3D", getRootElement(), EnableTimer3D)

function convertTime(ms)
    local min = math.floor( ms/60000 )
    local sec = math.floor( (ms/1000)%60 )
    return min, sec 
end

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

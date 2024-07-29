-- Sitemiz : https://sparrow-mta.blogspot.com/

-- Facebook : https://facebook.com/sparrowgta/
-- İnstagram : https://instagram.com/sparrowmta/
-- YouTube : https://youtube.com/c/SparroWMTA/

-- Discord : https://discord.gg/DzgEcvy

local screenW, screenH = guiGetScreenSize()
local blooded = false
local screenX, screenY
local drawTimer
local isDrawing
local sound
local alpha = 255

function drawHitMarker()
	dxDrawImage(screenX-16, screenY-16, 32, 32, "hitmarker.png")
end

function fireFunc(weapon, ammo, ammoInClip, hitX, hitY, hitZ, hitElement)
	if hitElement then
			if getElementType(hitElement)=="player" or getElementType(hitElement)=="ped" or getElementType(hitElement)=="vehicle" then
		screenX, screenY = getScreenFromWorldPosition(hitX, hitY, hitZ)
		if not screenX then return end 
		if isDrawing then return end 
		isDrawing = true
		addEventHandler("onClientRender", root, drawHitMarker) 
		if drawTimer and isTimer(drawTimer) then
			killTimer(drawTimer)
		end
		drawTimer = setTimer(function() 
			isDrawing = false
			removeEventHandler("onClientRender", root, drawHitMarker) 
		end, 500, 1)
	end
	end
end
addEventHandler("onClientPlayerWeaponFire", localPlayer, fireFunc)

function get_hit()
	alpha = 100
	if not isTimer(tempoSom) then
		tempoSom = setTimer(function() end, 1000, 1)
		local sound = playSound("hitmarker-sound.wav")
		setSoundVolume(sound, 0.3)
		if blooded == false then addEventHandler("onClientRender", root, drawBlood) end
		if isTimer(timerAlpha) then killTimer(timerAlpha) end
		blooded = true
		setTimer(function()
			timerAlpha = setTimer(function()
				alpha = alpha - 2
			end, 1, 0)
		end, 800, 1)
	end
end
addEventHandler("onClientPlayerDamage", localPlayer, get_hit)

function drawBlood()
	dxDrawRectangle(0, 0, screenW, screenH, tocolor(255, 0, 0, alpha), true)
	if alpha <= 5 then
		removeEventHandler("onClientRender", root, drawBlood)
		blooded = false
		killTimer(timerAlpha)
	end
end

-- Sitemiz : https://sparrow-mta.blogspot.com/

-- Facebook : https://facebook.com/sparrowgta/
-- İnstagram : https://instagram.com/sparrowmta/
-- YouTube : https://youtube.com/c/SparroWMTA/

-- Discord : https://discord.gg/DzgEcvy
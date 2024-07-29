--[[
SparroW MTA : https://sparrow-mta.blogspot.com/
Facebook : https://www.facebook.com/sparrowgta/
İnstagram : https://www.instagram.com/sparrowmta/
Discord : https://discord.gg/DzgEcvy    [600 KİŞİ OLDUK SENİDE ARAMIZA BEKLERİZ.]
]]--

local font = dxCreateFont("fonts/Exo2.otf", 25)
local font_text = dxCreateFont("fonts/Exo2.otf", 15)
local font_min = dxCreateFont("fonts/Exo2.otf", 11)
local tables = { 0 }
local tables_menu = { 0 }
local tables_1 = { 0 }
local box = {}

local attachedEffects = {}
local AttachedBass = {}
local snd = nil

local function getBass( source )
	if not AttachedBass[source] then return false end
	return AttachedBass[source]
end

local function addBass( source, effect )
    if not AttachedBass[source] then
        AttachedBass[source] = {}
    end
    table.insert( AttachedBass[source], effect )
end

local function removeBass( source, effect )
    if not AttachedBass[source] then
        return false
    end
    for i, _ in ipairs( AttachedBass[source] ) do 
        table.remove( AttachedBass[source], i )
        break
    end
    
    if #AttachedBass[source] <= 0 then
        AttachedBass[source] = nil
    end
    
    return true
end

local function attachEffect(effect, element, pos)
    attachedEffects[effect] = { effect = effect, element = element, pos = pos }
    addBass( element, effect )
    setElementInterior( effect, getElementInterior( element ) )
    setElementDimension( effect, getElementDimension( element ) )
    return true
end

addEvent("onElementSoundSync", true)
addEventHandler( "onElementSoundSync", root, function(snd_name, distance, stop)
    local theVeh = source
    if not isElement( theVeh ) then return end
    if not snd_name then return end
    local path = snd_name
    snd = playSound3D( path, theVeh.position )
    if snd then
        setSoundMaxDistance( snd, distance )
        attachEffect( snd, theVeh, Vector3( 0, 0, 0 ) )
    end
end)

local function drawComponents()
	local x, y, z = getElementPosition( localPlayer )
	local vehicles = getElementsByType( "vehicle", root, true )
	for vKey, veh in ipairs( vehicles ) do
		local x2, y2, z2 = getElementPosition( veh )
		local distance = getDistanceBetweenPoints3D( x, y, z, x2, y2, z2 )
		if distance < 30 then
			local components = getVehicleComponents( veh )
			for v in pairs ( components ) do
				local x, y, z = getVehicleComponentPosition( veh, v, "world" )
				if x then
					local wx, wy = getScreenFromWorldPosition( x, y, z )
					if wx and wy then
						dxDrawText( v, wx -1, wy -1, 0 -1, 0 -1, tocolor(0,0,0), 1, "default-bold" )
						dxDrawText( v, wx +1, wy -1, 0 +1, 0 -1, tocolor(0,0,0), 1, "default-bold" )
						dxDrawText( v, wx -1, wy +1, 0 -1, 0 +1, tocolor(0,0,0), 1, "default-bold" )
						dxDrawText( v, wx +1, wy +1, 0 +1, 0 +1, tocolor(0,0,0), 1, "default-bold" )
						dxDrawText( v, wx, wy, 0, 0, tocolor(0,255,255), 1, "default-bold" )
					end
				end
			end
		end
	end
end

local function getPositionFromElementOffset(element, offX, offY, offZ)
	local m = getElementMatrix( element )
	local x = offX * m[1][1] + offY * m[2][1] + offZ * m[3][1] + m[4][1]
	local y = offX * m[1][2] + offY * m[2][2] + offZ * m[3][2] + m[4][2]
	local z = offX * m[1][3] + offY * m[2][3] + offZ * m[3][3] + m[4][3]
	return x, y, z
end

local function destroyEffectEvent()
	local effects = getBass( source )
	if effects then
		for i, effect in ipairs( effects ) do
			attachedEffects[effect] = nil
			if isElement( effect ) and getElementType(effect) == "sound" then
				destroyElement(effect)
			end
		end
		AttachedBass[source] = nil
	end
end

local function destroyBassEvent()
	if attachedEffects[source] then
		removeBass( attachedEffects[source].element, source )
		attachedEffects[source] = nil
		if not AttachedBass[source] or #AttachedBass[source] <= 0 then
			AttachedBass[source] = nil
		end
	end
end

addEventHandler( "onClientSoundStopped", resourceRoot, destroyBassEvent )
addEventHandler( "onClientElementDestroy", root, destroyEffectEvent )
addEventHandler( "onClientVehicleRespawn", root, destroyEffectEvent )
addEventHandler( "onClientVehicleExplode", root, destroyEffectEvent )

addEventHandler( "onClientPreRender", root,
	function()
		for fx, info in pairs( attachedEffects ) do
			if not isElement( info.element ) then
				if isElement( fx ) and getElementType(fx) == "sound" then
					destroyElement( fx )
				end
				attachedEffects[fx] = nil
				--if info.element then attachedEffects[info.element] = nil end
			elseif isElement( info.element ) and fx and not isElement( fx ) then -- 
				source = info.element
				destroyEffectEvent()
			else

				local x, y, z
				if info.pos.x ~= 0 or info.pos.y ~= 0 or info.pos.z ~= 0 then
					x, y, z = getPositionFromElementOffset( info.element, info.pos.x, info.pos.y, info.pos.z )
				else
					x, y, z = getElementPosition( info.element, x, y, z )
				end
				
				setElementPosition( fx, x, y, z )
			end
			
		end
		
	end
)

local isComponentsDrawing = false
local function toggleComponents(command, flag)
	flag = tonumber( flag )
	if flag then
		if ( flag == 0 and not isComponentsDrawing ) or ( flag == 1 and isComponentsDrawing ) then return end
	end
	if isComponentsDrawing then
		removeEventHandler( "onClientRender", root, drawComponents )
		isComponentsDrawing = false
	else
		addEventHandler( "onClientRender", root, drawComponents )
		isComponentsDrawing = true
	end
end
addCommandHandler( "showcomponents", toggleComponents )

function dxDrawButtonMenu(x, y, w, h, text1, text2, text3, index)
	local alpa_bg, _, _ = interpolateBetween(0, 0, 0, 255, 0, 0, ((getTickCount() - openRouteSelect) / 500), "Linear")
	local alpa_text, _, _ = interpolateBetween(0, 0, 0, 200, 0, 0, ((getTickCount() - openRouteSelect) / 500), "Linear")
	local mx, my = getMousePos()
	local bgcolor = tocolor(255, 255, 255, alpa_bg)
	local tcolor = tocolor(95, 95, 95, alpa_text)
	if tables_menu[index] == nil then
		tables_menu[index] = {}
		tables_menu[index] = 0
	end
	if not tables_3 then tables_3 = {} end
	if tables_3[index] == nil then
		tables_3[index] = {}
		tables_3[index] = 0
	end

	if isPointInRect(mx, my, x - 2, y, w, h) then
		if tables_menu[index] < 255 then
			tables_menu[index] = tables_menu[index] + 15
			if tables_menu[index] >= 255 then
				tables_menu[index] = 255
			end
		end
		bgcolors = tocolor(200, 40, 40, tables_menu[index])
		if tables_3[index] < 5 then
			tables_3[index] = tables_3[index] + 1
		end
	else
		if tables_menu[index] ~= 0 then
			tables_menu[index] = tables_menu[index] - 15
		end
		if tables_3[index] ~= 0 then
			tables_3[index] = tables_3[index] - 1
		end
		bgcolors = tocolor(200, 40, 40, tables_menu[index])
	end
	
	dxDrawRectangle(x, y - (tables_3[index] / 2), (w / 2) + tables_3[index], h + tables_3[index], bgcolor, false)
	dxDrawRectangle(x + 230, y - (tables_3[index] / 2), (w / 4) + tables_3[index], h + tables_3[index], bgcolor, false)
	dxDrawRectangle(x + 345, y - (tables_3[index] / 2), (w / 4) + tables_3[index], h + tables_3[index], bgcolor, false)
	dxDrawRectangle(x, y - (tables_3[index] / 2), 5, h + tables_3[index], bgcolors, false)
	dxDrawText(text1, x + 10, y - (tables_3[index] / 2), (w / 2) + x - 10 + tables_3[index], h + y + 5 + tables_3[index], tcolor, 1, font_text, "left", "center", true, false, false, true)
	dxDrawText(text2, x + 345, y - (tables_3[index] / 2), (w / 2) + x - 10 + tables_3[index], h + y + 5 + tables_3[index], tcolor, 1, font_text, "center", "center", true, false, false, true)
	dxDrawText(text3, x + 645, y - (tables_3[index] / 2), (w / 2) + x - 10 + tables_3[index], h + y + 5 + tables_3[index], tcolor, 1, font_text, "center", "center", true, false, false, true)
end

function dxDrawButton(x, y, w, h, text, index)
	local mx, my = getMousePos()
	local tcolor = tocolor(95, 95, 95, 200)
	if tables_1[index] == nil then
		tables_1[index] = {}
		tables_1[index] = 0
	end
	if not tables_2 then tables_2 = {} end
	if tables_2[index] == nil then
		tables_2[index] = {}
		tables_2[index] = x
	end

	if isPointInRect(mx, my, x - 2, y, w, h) then
		if tables_1[index] < 255 then
			tables_1[index] = tables_1[index] + 15
			if tables_1[index] >= 255 then
				tables_1[index] = 255
			end
		end
		bgcolors = tocolor(200, 40, 40, tables_1[index])
		if tables_2[index] < (x + 10) then
			tables_2[index] = tables_2[index] + 1
		end
	else
		if tables_1[index] ~= 0 then
			tables_1[index] = tables_1[index] - 15
		end
		if tables_2[index] > x then
			tables_2[index] = tables_2[index] - 1
			if tables_2[index] <= (x) then
				tables_2[index] = x
			end
		end
		bgcolors = tocolor(200, 40, 40, tables_1[index])
	end

	dxDrawRectangle(tables_2[index], y, w, h, bgcolor, false)
	dxDrawRectangle(tables_2[index], y, 5, h, bgcolors, false)
	dxDrawText(text, tables_2[index], y, w + x, h + y, tcolor, 1, font_text, "center", "center", true, false, false, true)
end

function dxDrawTextGrid(x, y, w, h, text, index)
	local tcolor = tocolor(55, 55, 55, 150)
	dxDrawText(text, x, y, w + x, h + y, tcolor, 1, font_min, "center", "center", true, false, false, true)
end

function dxTextRight(x, y, w, h, text)
	dxDrawText(text, x, y, w + x, h + y, tcolor, 1, font_text, "right", "top", false, true, false, false, false)
end

function dxTextLeft(x, y, w, h, text)
	dxDrawText(text, x, y, w + x, h + y, tcolor, 1, font_text, "left", "top", false, true, false, false, false)
end

function dxText(x, y, w, h, text)
	dxDrawText(text, x, y, w + x, h + y, tcolor, 1, font_text, "center", "top", false, true, false, false, false)
end

function dxDrawWindow(x, y, w, h, text)
	local mx, my = getMousePos()
	local bgcolor = tocolor(175, 175, 175, 225)
	local tcolor = tocolor(255, 255, 255, 255)
	dxDrawRectangle(x, y, w, h, bgcolor, false)
	--dxDrawImage(x, y - 75, width, height, logo, 0, 0, 0, tocolor(255, 255, 255, 255))
	--dxDrawText(text, x + 65, y - 115, w + x - 8, 30 + y, tcolor, 1, font, "left", "center", true, false, false, true)
end

function dxDrawOneWindow(x, y, w, h, text, state)
	local mx, my = getMousePos()
	if state == 0 then return end
	if state == 1 then
		local alpa_bg, _, _ = interpolateBetween(0, 0, 0, 225, 0, 0, ((getTickCount() - openBus) / 900), "Linear")
		local alpha_test, _, _ = interpolateBetween(0, 0, 0, 255, 0, 0, ((getTickCount() - openBus) / 900), "Linear")
		local bgcolor = tocolor(55, 55, 55, alpa_bg)
		local tcolor = tocolor(0, 0, 0, alpha_test)
		dxDrawRectangle(x, y, w, h, bgcolor, false)
		dxDrawRectangle(x, y, w, 55, tocolor(52, 205, 155, alpha_test), false)
		dxDrawText(text, x + 28, y + 30, w + x - 8, 30 + y, tcolor, 1, font, "left", "center", true, false, false, true)
	elseif state == 2 then
		local alpa_bg, _, _ = interpolateBetween(190, 0, 0, 0, 0, 0, ((getTickCount() - openBus) / 900), "Linear")
		local alpha_test, _, _ = interpolateBetween(255, 0, 0, 0, 0, 0, ((getTickCount() - openBus) / 900), "Linear")
		local bgcolor = tocolor(55, 55, 55, alpa_bg)
		local tcolor = tocolor(0, 0, 0, alpha_test)
		dxDrawRectangle(x, y, w, h, bgcolor, false)
		dxDrawRectangle(x, y, w, 55, tocolor(52, 205, 155, alpha_test), false)
		dxDrawText(text, x + 28, y + 30, w + x - 8, 30 + y, tcolor, 1, font, "left", "center", true, false, false, true)
	end
end

function dxDrawDiscription(x, y, w, h, text, state)
	local mx, my = getMousePos()
	if state == 0 then return end
	if state == 1 then
		local alpa_bg, _, _ = interpolateBetween(0, 0, 0, 190, 0, 0, ((getTickCount() - openInfo) / 900), "Linear")
		local alpha_test, _, _ = interpolateBetween(0, 0, 0, 255, 0, 0, ((getTickCount() - openInfo) / 900), "Linear")
		local bgcolor = tocolor(55, 55, 55, alpa_bg)
		local tcolor = tocolor(0, 0, 0, alpha_test)
		dxDrawRectangle(x, y, w, h, bgcolor, false)
		dxDrawRectangle(x, y, w, 75, tocolor(52, 205, 155, alpha_test), false)
		dxDrawText(text, x + 28, y + 50, w + x - 8, 30 + y, tcolor, 1, font, "left", "center", true, false, false, true)
	elseif state == 2 then
		local alpa_bg, _, _ = interpolateBetween(190, 0, 0, 0, 0, 0, ((getTickCount() - openInfo) / 900), "Linear")
		local alpha_test, _, _ = interpolateBetween(255, 0, 0, 0, 0, 0, ((getTickCount() - openInfo) / 900), "Linear")
		local bgcolor = tocolor(55, 55, 55, alpa_bg)
		local tcolor = tocolor(0, 0, 0, alpha_test)
		dxDrawRectangle(x, y, w, h, bgcolor, false)
		dxDrawRectangle(x, y, w, 75, tocolor(52, 205, 155, alpha_test), false)
		dxDrawText(text, x + 28, y + 50, w + x - 8, 30 + y, tcolor, 1, font, "left", "center", true, false, false, true)
	end
end

function isPointInRect(x, y, rx, ry, rw, rh)
	if x >= rx and y >= ry and x <= rx + rw and y <= ry + rh then
		return true
	else
		return false
	end
end

function cursorPosition(x, y, w, h)
	if (not isCursorShowing()) then
		return false
	end
	local mx, my = getCursorPosition()
	local fullx, fully = guiGetScreenSize()
	cursorx, cursory = mx*fullx, my*fully
	if cursorx > x and cursorx < x + w and cursory > y and cursory < y + h then
		return true
	else
		return false
	end
end

function getMousePos()
	local xsc, ysc = guiGetScreenSize()
	local mx, my = getCursorPosition()
	if not mx or not my then
		mx, my = 0, 0
	end
	return mx * xsc, my * ysc
end
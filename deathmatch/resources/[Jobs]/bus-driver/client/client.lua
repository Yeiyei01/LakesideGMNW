--[[
SparroW MTA : https://sparrow-mta.blogspot.com/
Facebook : https://www.facebook.com/sparrowgta/
İnstagram : https://www.instagram.com/sparrowmta/
Discord : https://discord.gg/DzgEcvy    [600 KİŞİ OLDUK SENİDE ARAMIZA BEKLERİZ.]
]]--

--createBlip (2798.31494, 1254.87988, 11.31250, 48, 2, 255, 0, 0, 255, 0, 99999 ) -- harita ikonu


local screenW, screenH = guiGetScreenSize()
local font_ = dxCreateFont("fonts/Exo2.otf", 25)
local jobPickupLS = createPickup( 273.1142578125, -0.5224609375, 2.4338290691376, 3, 1275 )
local jobPickupLV = createPickup( -326.0634765625, 1060.71875, 19.7421875, 3, 1275 )
Marker = {}
local Bot = {}
local PlayerBuser = {}
local IntergerExit = 0
local timerinteger = 450
local timerintegerSpawn = -800
local function _x(x)
    return x / 640 * screenW
end

local function _y(y)
    return y / 448 * screenH
end

FIND_TEXTURE_NAME = "emi"
local TEXTURE_SIZE_W = 512
local TEXTURE_SIZE_H = 256

local RT_POOL_SIZE = 8
local RT_POOL_SIZE_LARGE = 20
local renderTargetPool = {}
local usedRenderTargets = {}

local mainRenderTarget = dxCreateRenderTarget(TEXTURE_SIZE_W, TEXTURE_SIZE_H, true)

VehicleShaders = {}

-- Активные шейдеры на автомобилях
local shaders = {}
local reflectionTexture

local function setupElementParent(element, resource)
    if not element or not resource then
        return false
    end
    element.parent = getResourceDynamicElementRoot(resource)
    return true
end

function createShader(name, ...)
    local element = dxCreateShader("images/".. tostring(name), ...)
    setupElementParent(element, sourceResource)
    return element
end

function replaceTexture(vehicle, textureName, texture)
    if not isElement(vehicle) or type(textureName) ~= "string" or not isElement(texture) then
        return false
    end
    local shaderName = "texture_" .. tostring(textureName)
    if not shaders[shaderName] then
        shaders[shaderName] = {}
    end
    local shader = shaders[shaderName][vehicle]
    if isElement(shader) then
        destroyElement(shader) 
        shader = nil
    end
    if not isElement(shader) then
        -- Создание нового шейдера
        shader = createShader("texture_replace.fx")
    end
    -- Не удалось создать шейдер
    if not shader then
        return false
    end
    engineApplyShaderToWorldTexture(shader, textureName, vehicle)
    shader:setValue("gTexture", texture)
    shader:setData("shader_type", "texture", false)
    shaders[shaderName][vehicle] = shader
    return true
end

local function getPositionFromElementOffset(element,offX,offY,offZ)
    local m = getElementMatrix ( element )
    local x = offX * m[1][1] + offY * m[2][1] + offZ * m[3][1] + m[4][1]
    local y = offX * m[1][2] + offY * m[2][2] + offZ * m[3][2] + m[4][2]
    local z = offX * m[1][3] + offY * m[2][3] + offZ * m[3][3] + m[4][3]
    return x, y, z
end

local function getVehicleRenderTarget(vehicle)
    if not vehicle then
        outputDebugString("getVehicleRenderTarget: No vehicle")
        return false
    end

    if isElement(usedRenderTargets[vehicle]) then
        return usedRenderTargets[vehicle]
    end
    
    if #renderTargetPool == 0 then
        return mainRenderTarget
    end

    usedRenderTargets[vehicle] = table.remove(renderTargetPool, 1)
    return usedRenderTargets[vehicle]
end

function redrawBodyRenderTarget(renderTarget, bodyTexture, stickers, selected)
    if not isElement(renderTarget) then
        return
    end
    if not selected then
        selected = 0
    end
    dxSetRenderTarget(renderTarget, true)
    if bodyTexture then
        dxDrawImage(0, 0, TEXTURE_SIZE_W, TEXTURE_SIZE_H, bodyTexture)
    end
    dxSetRenderTarget()
end

local function setupVehicleTexture(vehicle)
    if not isElement(vehicle) or not isElementStreamedIn(vehicle) then
        return
    end
    if isElementLocal(vehicle) or vehicle:getData("localVehicle") then
        return
    end
    if vehicle:getData("emiTexture") then
        local bodyTexture = dxCreateTexture("images/"..vehicle:getData("emiTexture")..".png")
        local renderTarget = getVehicleRenderTarget(vehicle)
        redrawBodyRenderTarget(renderTarget, bodyTexture, stickers)
        local texture
        if renderTarget == mainRenderTarget then
            -- Копирование содержимого renderTarget'а в текстуру
            local pixels = dxGetTexturePixels(mainRenderTarget)
            local texture = bodyTexture
            dxSetTexturePixels(texture, pixels)
            replaceTexture(vehicle, FIND_TEXTURE_NAME, texture)
            destroyElement(texture)
        else
            replaceTexture(vehicle, FIND_TEXTURE_NAME, renderTarget)
        end
    end
end

addEventHandler("onClientResourceStart", resourceRoot, function()
    for i, vehicle in ipairs(getElementsByType("vehicle")) do
        setupVehicleTexture(vehicle)
    end
end)

addEventHandler("onClientRestore", root, function ()
    for i, vehicle in ipairs(getElementsByType("vehicle")) do
        setupVehicleTexture(vehicle)
    end
end)

addEventHandler("onClientElementStreamIn", root, function()
    if source.type == "vehicle" then
        setupVehicleTexture(source)
    end
end)

addEventHandler("onClientElementDataChange", root, function(dataName, oldValue)
    if source.type ~= "vehicle" then
        return
    end
    if isElement(vehicleRenderTarget) then
        return
    end
    if dataName == "emiTexture" then
        setupVehicleTexture(source)
    end
end)


bWorkStarted = nil

local function dxDrawBorderedText(text, left, top, right, bottom, color, scale, font, alignX, alignY, clip, wordBreak,postGUI)
    for oX = -1, 1 do
        for oY = -1, 1 do
            dxDrawText(text, left + _x(oX), top + _y(oY), right + _x(oX), bottom + _y(oY), tocolor(0, 0, 0, 255), scale, font, alignX, alignY, clip, wordBreak,postGUI)
        end
    end
    dxDrawText(text, left, top, right, bottom, color, scale, font, alignX, alignY, clip, wordBreak, postGUI)
end

local function dxDrawTextOnElement(element, text, height, distance, R, G, B, A, size, font, checkBuildings, checkVehicles, checkPeds, checkDummies, seeThroughStuff, ignoreSomeObjectsForCamera, ignoredElement)
    if not isElement(element) then return end
    local x, y, z = getElementPosition(element)
    local x2, y2, z2 = getCameraMatrix()
    local distance = distance or 20
    local height = height or 1
    local sx, sy = getScreenFromWorldPosition( x, y, z + height )
    if not ( sx and sy ) then return end
    local distanceBetweenPoints = getDistanceBetweenPoints3D( x, y, z, x2, y2, z2 )
    if distanceBetweenPoints <= distance and isLineOfSightClear( x, y, z, x2, y2, z2, checkBuildings or false, checkVehicles or false,
    checkPeds or false, checkObjects or false, checkDummies or false, seeThroughStuff or false, ignoreSomeObjectsForCamera or false, ignoredElement or nil )
    then
        dxDrawBorderedText( text, sx + 4, sy + 2, sx, sy, tocolor( R or 255, G or 255, B or 255, A or 255 ), ( size or 1 ) - ( distanceBetweenPoints / distance ), font, "center", "center" )
    end
end

addEventHandler( "onClientRender", root, function ( )
    if localPlayer.interior ~= 0 or localPlayer.dimension ~= 0 then return end
    dxDrawTextOnElement( jobPickupLS, "AutoBus", 0.5, 15, 28, 123, 209, 255, 1, font_)
    dxDrawTextOnElement( jobPickupLV, "AutoBus", 0.5, 15, 28, 123, 209, 255, 1, font_)
end )

addEvent("client:getJobInfo", true)
addEventHandler("client:getJobInfo", localPlayer, function ( exp, index, bool )
    if bool == true then
        openJobWindow(exp, index)
    else
        openUvalWindow(exp, index)
    end
end)



addEventHandler( "onClientPickupHit", jobPickupLS, function ( thePlayer )
    if thePlayer ~= localPlayer or localPlayer.vehicle then return end
    if not bWorkStarted then
        triggerServerEvent("getJobInfo", resourceRoot, 'LS', true)
    else
        triggerServerEvent("getJobInfo", resourceRoot, 'LS', false)
    end
end)

addEventHandler( "onClientPickupHit", jobPickupLV, function ( thePlayer )
    if thePlayer ~= localPlayer or localPlayer.vehicle then return end
    if not bWorkStarted then
        triggerServerEvent("getJobInfo", resourceRoot, 'LV', true)
    else
        triggerServerEvent("getJobInfo", resourceRoot, 'LV', false)
    end
end)

local function checkToDoor( )
    if localPlayer.vehicle and getDoorState(localPlayer.vehicle) then
        waitFrozen = true
        triggerServerEvent("RouteBusFreeze", resourceRoot, true)
    end
end

addEvent("CreateMarkerRoute", true)
addEventHandler("CreateMarkerRoute", localPlayer, function ( pos1, bool, pos2 )
    local data = fromJSON(pos1)
    local pos1 = Vector3(data[1], data[2], data[3])
    if not Marker then
        Marker = {}
    end
    if not Marker.Route then 
        Marker.Route = createMarker(pos1, "checkpoint", 5, 255, 0, 0, 170 )
        Marker.BlipRoute = createBlipAttachedTo(Marker.Route, 56, 3)
    else
        Marker.Route.position = pos1
    end
    if bool then
        Marker.Stop = true
    else
        Marker.Stop = nil
    end
    if not pos2 then return end
    local data2 = fromJSON(pos2)
    local pos2 = Vector3(data2[1], data2[2], data2[3])
    Marker.Route:setTarget(pos2) 
end)

local function getRandomPosition_X ( data, random_integer, string )
    if random_integer == 2 then
        interval = math.random(0.7, 1.7)
        interval_x = math.random(0.7, 1.2)
    elseif random_integer == 3 then
        interval = math.random(0.7, 1.7)
        interval_x = math.random(0.7, 1.2)
    elseif random_integer == 4 then
        interval = math.random(0.7, 0.9)
        interval_x = math.random(0.7, 1.2)
    elseif random_integer >= 5 then
        interval = math.random(0.7, 0.9)
        interval_x = math.random(0.7, 1.2)
    end
    for i = 1, random_integer do
        if not temp[i] then 
            temp[i] = {}
            if not temp[i - 1] then
                temp[i].pos = data[2]
                temp[i].index = math.random(1, 2)
                temp[i].interval = data[1]
                return Vector3(temp[i].interval, temp[i].pos, data[3])
            else
                if string == "x+" then
                    temp[i].pos = temp[i - 1].pos + interval
                else
                    temp[i].pos = temp[i - 1].pos - interval
                end
                if temp[i - 1].index == 2 then
                    temp[i].interval = temp[i - 1].interval + interval_x
                    temp[i].index = 1
                else
                    temp[i].interval = temp[i - 1].interval - interval_x
                    temp[i].index = 2
                end
                return Vector3(temp[i].interval, temp[i].pos, data[3])
            end
        end
    end
end

local function getRandomPosition_Y ( data, random_integer, string )
    if random_integer == 2 then
        interval = math.random(0.7, 1.7)
        interval_y = math.random(0.7, 1.2)
    elseif random_integer == 3 then
        interval = math.random(0.7, 1.7)
        interval_y = math.random(0.7, 1.2)
    elseif random_integer == 4 then
        interval = math.random(0.7, 0.9)
        interval_y = math.random(0.7, 1.2)
    elseif random_integer >= 5 then
        interval = math.random(0.7, 0.9)
        interval_y = math.random(0.7, 1.2)
    end
    for i = 1, random_integer do
        if not temp[i] then 
            temp[i] = {}
            if not temp[i - 1] then
                temp[i].pos = data[1]
                temp[i].index = math.random(1, 2)
                temp[i].interval = data[2]
                return Vector3(temp[i].pos, temp[i].interval, data[3])
            else
                if string == "y+" then
                    temp[i].pos = temp[i - 1].pos + interval
                else
                    temp[i].pos = temp[i - 1].pos - interval
                end
                if temp[i - 1].index == 2 then
                    temp[i].interval = temp[i - 1].interval + interval_y
                    temp[i].index = 1
                else
                    temp[i].interval = temp[i - 1].interval - interval_y
                    temp[i].index = 2
                end
                return Vector3(temp[i].pos, temp[i].interval, data[3])
            end
        end
    end
end

local function disableCollision ( bot )
    for index, ped in ipairs(getElementsByType("ped")) do
        setElementCollidableWith(ped, bot, false)
    end
    for index, vehicle in ipairs(getElementsByType("vehicle")) do
        setElementCollidableWith(vehicle, bot, false)
    end
    for index, object in ipairs(getElementsByType("object")) do
    	if isElementStreamedIn( object ) then
	    	if object.model ~= 1909 then
	        	setElementCollidableWith(object, bot, false)
	        end
	    end
    end
    for index, player in ipairs(getElementsByType("player")) do
    	if isElementStreamedIn( player ) then
        	setElementCollidableWith(player, bot, false)
        end
    end
end

addEvent("CreateMarkerRouteBots", true)
addEventHandler("CreateMarkerRouteBots", localPlayer, function ( pos1, max_random, angle, string )
    local random_integer = max_random
    Bot.IntegerBot = max_random
    if temp then temp = nil end
    temp = {}
    Bot.string = string
    local data = fromJSON(pos1)
    for i = 1, Bot.IntegerBot do
        if Bot[i] then
            Bot[i] = nil
        end
    end
    for i = 1, random_integer do
        if not Bot[i] then 
            Bot[i] = {}
            if string == "y+" or string == "y-" then
                getpos = getRandomPosition_Y(data, tonumber(random_integer), string)
            elseif string == "x+" or string == "x-" then
                getpos = getRandomPosition_X(data, tonumber(random_integer), string)
            end
            Bot[i].Bots = createPed ( 28, getpos, angle )
            Bot[i].Bots.model = math.random(312) or 28
            disableCollision(Bot[i].Bots)
        end
    end
end)





local function startBotMission( vehicle )
    movedDoor = true
    Marker.Route.size = 0
    for i = 1, Bot.IntegerBot do
        if Bot[i] and isElement(Bot[i].Bots) then 
            local bot = Bot[i].Bots
            setPedControlState(bot, "walk", true)
            setPedControlState(bot, "forwards", true)
        end
        if not Bot[i].timer then
            Bot[i].timer = setTimer(function ( )
                local bot = Bot[i].Bots
                if not vehicle then return end
                local x1, y1, z1 = getElementPosition(bot)
            	if vehicle.model == 459 then
					xm, ym, zm = getPositionFromElementOffset(vehicle, 1.2, -0.2, 0)
				elseif vehicle.model == 431 then
					xm, ym, zm = getPositionFromElementOffset(vehicle, 1.55, -0.3, 0)
				elseif vehicle.model == 437 then
					xm, ym, zm = getPositionFromElementOffset(vehicle, 1.65, 5, 0)
				end
                local angle = findRotation(x1, y1, xm, ym)
                if isElement(Bot[i].Bots) then
                    local bot = Bot[i].Bots
                    local distance = getDistanceBetweenPoints3D(bot.position, Vector3(xm, ym, zm))
                	setPedRotation(bot, angle)
                    if distance < 1.40 then
                        setPedControlState(bot, "forwards", false)
                        setPedControlState(bot, "walk", false)
                        bot.alpha = bot.alpha - 25
                        if bot.alpha < 25 then
                           if isTimer(Bot[i].timer) then 
                                killTimer(Bot[i].timer) 
                                Bot[i].timer = nil
                                triggerServerEvent("EnterBusDoorBots", resourceRoot, vehicle, bot.model)
                                destroyElement(bot)
                                Bot[i] = nil
                            end
                        end
                    end
                end
            end, 60, 0)
        end
    end
end
addEvent("BotMissionStart", true)
addEventHandler("BotMissionStart", localPlayer, startBotMission)

addEvent("ExitBusDoorBot", true)
addEventHandler("ExitBusDoorBot", localPlayer, function ( vehicle, modelid, limit, pos1, string, state_start )
    local data = fromJSON(pos1)
    local v_rx, v_ry, v_rz = getElementRotation(vehicle)
    movedDoor = true
    Marker.Route.size = 0
    if vehicle.model == 459 then
    	timerintegerVehicleSpawn = 2500
    elseif vehicle.model == 431 then
    	timerintegerVehicleSpawn = 1200
    elseif vehicle.model == 437 then
    	timerintegerVehicleSpawn = 6000
    end
    for i = 1, limit do
    	setTimer(function (  )
    		if not Bot[i] then Bot[i] = {} end
        	if not Bot[i].CreateBotTimer then
	        	timerintegerSpawn = timerintegerSpawn + 1000
	            Bot[i].CreateBotTimer = setTimer(function ( )
	                if string == "y+" then
	                    find_pos = Vector3(data[1] + 2, data[2], data[3])
	                elseif string == "y-" then
	                    find_pos = Vector3(data[1] - 2, data[2], data[3])
	                elseif string == "x+" then
	                    find_pos = Vector3(data[1], data[2] + 2, data[3])
	                elseif string == "x-" then
	                    find_pos = Vector3(data[1], data[2] - 2, data[3])
	                end
	                local random_pos = math.random(1, 2)
                	if vehicle.model == 459 then
						xm, ym, zm = getPositionFromElementOffset(vehicle, 1.2, -0.2, 0)
					elseif vehicle.model == 431 then
						xm, ym, zm = getPositionFromElementOffset(vehicle, 1.55, -0.3, 0)
					elseif vehicle.model == 437 then
						xm, ym, zm = getPositionFromElementOffset(vehicle, 1.65, 5, 0)
					end
	                Bot[i].BotsExit = createPed ( modelid, Vector3(xm, ym, zm), (v_rz - 90))
	                disableCollision(Bot[i].BotsExit)
	                if not Bot[i].StartBotTimer then
	                    setPedControlState(Bot[i].BotsExit, "walk", true)
	                    setPedControlState(Bot[i].BotsExit, "forwards", true)
	                    Bot[i].timer = setTimer(function ( )
	                        if isElement(Bot[i].BotsExit) then
	                            local bot = Bot[i].BotsExit
	                            local distance = getDistanceBetweenPoints3D(find_pos, bot.position)
	                            local x1, y1, z1 = getElementPosition(bot)
	                            local x2, y2 = find_pos.x, find_pos.y
	                            local angle = findRotation(x1, y1, x2, y2)
	                            setPedRotation(bot, angle)
	                            if distance < 2 then
	                                setPedControlState(bot, "forwards", false)
	                                setPedControlState(bot, "walk", false)
	                                bot.alpha = bot.alpha - 25
	                                if bot.alpha < 25 then
	                                    IntergerExit = IntergerExit + 1
	                                    triggerServerEvent("ExitBusDoorBots", resourceRoot, IntergerExit)
	                                    if isTimer(Bot[i].timer) then 
	                                        killTimer(Bot[i].timer) 
	                                        Bot[i].timer = nil
	                                        destroyElement(bot)
	                                        Bot[i].BotsExit = nil
	                                    end
	                                end
	                            end
	                        end
	                    end, 60, 0)
	                end
	            end, timerintegerSpawn, 1)
        	end
    	end, timerintegerVehicleSpawn, 1)
    end
end)


addEvent("client:enterAllBot", true)
addEventHandler("client:enterAllBot", localPlayer, function ( vehicle )
    outputChatBox("#FFFFFF Los pasajeros subieron al autobús, ¡cierren las puertas! ('N')", 38, 199, 43, true)
    temp = nil
    checkToDoor()
    movedDoor = false
    IntergerExit = 0
    timerinteger = 450
    timerintegerSpawn = -800
    Marker.Route.size = 5
    integerEnter = 0
    triggerServerEvent("RouteCheckMarker", resourceRoot)
    setTimer(function (  )
    	movedDoor = false
    	triggerServerEvent("RouteBusFreeze", resourceRoot, false)
    end, 3000, 1)
    --
    local tables = vehicle:getData("table_route")
    for i = 1, #tables do
    	if tables[i][1] ~= nil then
    		integerEnter = integerEnter + 1
    		triggerServerEvent("updateBuserCount", resourceRoot, vehicle, integerEnter)
    	end
    end
end)

addEvent("client:exitAllBot", true)
addEventHandler("client:exitAllBot", localPlayer, function ( bool )
    if bool == true then
        outputChatBox("#FFFFFF Los pasajeros se bajaron del autobús, ¡cierren las puertas! ('N')", 38, 199, 43, true)
    else
        outputChatBox("#FFFFFF ¡Nadie sale, cierra la puerta! ('N')", 38, 199, 43, true)
    end
    IntergerExit = 0
    timerinteger = 450
    timerintegerSpawn = -800
    waitFrozen = true
    temp = nil
    movedDoor = nil
    Marker.Route.size = 5
    triggerServerEvent("RouteCheckMarker", resourceRoot)    
end)

addEventHandler( "onClientMarkerHit", resourceRoot, function ( thePlayer )
    if thePlayer ~= localPlayer or (not localPlayer.vehicle) then return end
    local vehicle = localPlayer.vehicle
    if source == Marker.Route and vehicle.model == 431 or vehicle.model == 437 or vehicle.model == 459 then
        if Marker.Stop then
            if getElementSpeed(vehicle) < 50 then
                if not getDoorState(vehicle) then
                    outputChatBox("#FFFFFF ¡Detente y abre las puertas! ('N')", 38, 199, 43, true)
                else
                    Marker.timeCheck = setTimer(function( )
                        if getElementSpeed(localPlayer.vehicle) < 1.5 and isElementWithinMarker(localPlayer.vehicle, Marker.Route) then
                            if isTimer(Marker.timeCheck) then killTimer(Marker.timeCheck) end
                            Marker.timeCheck = nil
                            triggerServerEvent("RouteCheckStop", resourceRoot)
                        end
                    end, 500, 0)
                end
            end
        else
            triggerServerEvent("RouteCheckMarker", resourceRoot)
        end
    end
end)

addEvent("OffColVehicle", true)
addEventHandler("OffColVehicle", root, function ( v )
    if not v then return end
    if v.model ~= 431 and v.model ~= 437 and v.model ~= 459 then return end
    for index, vehicle in ipairs(getElementsByType("vehicle")) do
        if vehicle.model == 431 or vehicle.model == 437 or vehicle.model == 459 then
            setElementCollidableWith(vehicle, v, false)
        end
    end
end)

bindKey("g", "down", function ( )
    if localPlayer.vehicle then return end
    local all_vehicles = Element.getAllByType("vehicle")
    for _, vehicle in pairs(all_vehicles, getRootElement(), true) do
		if isElementStreamedIn(vehicle) then
			if vehicle.model == 459 then
				xm, ym, zm = getPositionFromElementOffset(vehicle, 1.2, -0.2, 0)
			elseif vehicle.model == 431 then
				xm, ym, zm = getPositionFromElementOffset(vehicle, 1.55, -0.3, 0)
			elseif vehicle.model == 437 then
				xm, ym, zm = getPositionFromElementOffset(vehicle, 1.65, 5, 0)
			end
	        if vehicle.model == 431 or vehicle.model == 437 or vehicle.model == 459 then
	        	local distance = getDistanceBetweenPoints3D(localPlayer.position, Vector3(xm, ym, zm))
	        	if distance < 1.40 then
	        		if getDoorState(vehicle) then
	        			triggerServerEvent("EnterBusDoor", resourceRoot, vehicle)
	        			xm, ym, zm = nil
	        		else
		        		outputChatBox("[!] # FFFFFF ¡Las puertas del autobús están cerradas!", 209, 10, 10, true)
		        		xm, ym, zm = nil
	        		return end
		        end
	        end
	    end
    end
end)

bindKey("f", "down", function ( )
	if PlayerBuser[localPlayer] then
		if ( isElementAttached( localPlayer ) ) then 
			if getDoorState(PlayerBuser[localPlayer].vehicle) then
	       		triggerServerEvent("ExitBusDoor", resourceRoot, PlayerBuser[localPlayer].vehicle)
	       	else
	       		outputChatBox("[!] # FFFFFF ¡Las puertas del autobús están cerradas!", 209, 10, 10, true)
	       	end
	    end
	end
end)

addEventHandler("onClientElementDataChange", root, function ( dataName )
	if source.type == "vehicle" and dataName == "table_route" then
		if not PlayerBuser[source] then
			PlayerBuser[source] = {}
		end
		local tables = source:getData("table_route")
		for i = 1, #tables do
			if not PlayerBuser[source][i] then
				PlayerBuser[source][i] = {}
			end
			if tables[i][1] and ( tostring(type(tables[i][1].player)) ~= "userdata") then
				if not isElement(PlayerBuser[source][i].bot) then
					PlayerBuser[source][i].bot = createPed(tables[i][1].modelid, 0, 0, -500)
					local ped = PlayerBuser[source][i].bot
					local vrX, vrY, vrZ = getElementRotation(source)
					attachElements ( ped, source, tables[i][3], tables[i][4], tables[i][5], 0, 0, vrZ - tables[i][6])
					setPedRotation(ped, vrZ - tables[i][6])
					ped:setAnimation("ped", "seat_idle")
					tables[i].theVeh = source
					PlayerBuser[source][i].timer = setTimer(function ( )
						if not tables[i] then return end
						if not tables[i].veh then
							tables[i].veh = tables[i].theVeh
						end
						local vehicle = tables[i].veh
						if isElement(tables[i].veh) then
							local ped = PlayerBuser[vehicle][i].bot
							if isElementStreamedIn ( PlayerBuser[vehicle][i].bot ) then
								if not ped or (not isElement(ped)) then return end
								local vrX, vrY, vrZ = getElementRotation(vehicle) 
								ped:setRotation(0, 0, vrZ - tables[i][6])
							end
						else
							if isElement(ped) then
								destroyElement(ped)
							end
						end
					end, 100, 0)
				end
			elseif tables[i][1] and tables[i][1].player and ( tostring(type(tables[i][1].player)) == "userdata") then
				local ped1 = tables[i][1].player
				PlayerBuser[ped1] = {}
				PlayerBuser[ped1].vehicle = source
				PlayerBuser[source][i].player = ped1
				local vrX, vrY, vrZ = getElementRotation(source)
				attachElements (tables[i][1].player, source, tables[i][3], tables[i][4], tables[i][5], 0, 0, vrZ - tables[i][6])
				setElementRotation(ped1, 0, 0, vrZ - tables[i][6])
				ped1:setAnimation("ped", "seat_idle")
				tables[i].theVeh = source
				PlayerBuser[source][i].timer = setTimer(function ( )
					if not tables[i] then return end
					if not tables[i].veh then
						tables[i].veh = tables[i].theVeh
					end
					local vehicle = tables[i].veh
					if PlayerBuser[vehicle] and PlayerBuser[vehicle][i] and isElementAttached(PlayerBuser[vehicle][i].player) then

						local ped = PlayerBuser[vehicle][i].player
						if not ped or (not isElement(ped)) then return end
						local vrX, vrY, vrZ = getElementRotation(vehicle) 
						setElementRotation(ped, 0, 0, vrZ - tables[i][6])
						local Block, Anim = getPedAnimation(ped)
						if Block ~= "ped" or Anim ~= "seat_idle" then
							ped:setAnimation("ped", "seat_idle")
						end
					end
				end, 100, 0)
			end
			if tables[i][1] and isElement(PlayerBuser[source][i].bot) and tables[i][1].destroy == true then
				if isTimer(PlayerBuser[source][i].timer) then killTimer(PlayerBuser[source][i].timer) end
				destroyElement(PlayerBuser[source][i].bot)
				tables[i][1].destroy = nil
				tables[i][1] = nil
			end
		end
        PlayerBuser[source].tables = tables
		triggerServerEvent("TableRouteUpdate", resourceRoot, source, tables)
	end
	if source.type == "vehicle" and dataName == "table_route_exit" then
		local tables = source:getData("table_route_exit")
		for i = 1, #tables do
			if tables[i][1] and tables[i][1].player and ( tostring(type(tables[i][1].player)) == "userdata") and tables[i][1].destroy == true then
				if isTimer(PlayerBuser[source][i].timer) then killTimer(PlayerBuser[source][i].timer) end
				detachElements(PlayerBuser[source][i].player)
				PlayerBuser[source][i].player:setAnimation(false)
				tables[i][1].destroy = nil
				tables[i][1].player = nil
				tables[i][1] = nil
			end
	        PlayerBuser[source].tables = tables
			triggerServerEvent("TableRouteUpdate", resourceRoot, source, tables)
		end
	end
end)

addEvent("table_route_exit", true)
addEventHandler("table_route_exit", root, function ( player, vehicle, tables )
	if not CheckExit then
		CheckExit = {}
	end
	CheckExit[player] = {}
	if vehicle.model == 459 then
		CheckExit[player].xm, CheckExit[player].ym, CheckExit[player].zm = getPositionFromElementOffset(vehicle, 1.2, -0.2, 0)
	elseif vehicle.model == 431 then
		CheckExit[player].xm, CheckExit[player].ym, CheckExit[player].zm = getPositionFromElementOffset(vehicle, 1.55, -0.3, 0)
	elseif vehicle.model == 437 then
		CheckExit[player].xm, CheckExit[player].ym, CheckExit[player].zm = getPositionFromElementOffset(vehicle, 1.65, 5, 0)
	end
	for i = 1, #tables do
		if tables[i][1] and tables[i][1].player and ( tostring(type(tables[i][1].player)) == "userdata") and tables[i][1].destroy == true then
			if isTimer(PlayerBuser[vehicle][i].timer) then killTimer(PlayerBuser[vehicle][i].timer) end
			detachElements(PlayerBuser[vehicle][i].player)
			PlayerBuser[vehicle][i].player:setAnimation(false)
			setElementPosition(tables[i][1].player, Vector3(CheckExit[player].xm, CheckExit[player].ym, CheckExit[player].zm))
			local _, _, v_rz = getElementRotation(vehicle)
			setElementRotation(tables[i][1].player, 0, 0, (v_rz - 90))
			tables[i][1].destroy = nil
			tables[i][1].player = nil
			tables[i][1] = nil
		end
        PlayerBuser[vehicle].tables = tables
		triggerServerEvent("TableRouteUpdate", resourceRoot, vehicle, tables)
	end
	CheckExit[player].xm = nil
	CheckExit[player].ym = nil
	CheckExit[player].zm = nil
	CheckExit[player] = nil
end)

addEvent("client:setPlayerStartJob", true)
addEventHandler("client:setPlayerStartJob", localPlayer, function ( bool, vehicle )
    if bool == true then
        closeJobWindow()
    else
        if Bot.IntegerBot then
            for i = 1, Bot.IntegerBot do
                if Bot[i] and isElement(Bot[i].Bots) then
                    if isTimer(Bot[i].timer) then 
                        killTimer(Bot[i].timer)
                        Bot[i].timer = nil
                    elseif isTimer(Bot[i].StartBotTimer) then
                        killTimer(Bot[i].StartBotTimer)
                        Bot[i].StartBotTimer = nil
                    end

                    destroyElement(Bot[i].Bots)
                end
                if Bot[i] and isElement(Bot[i].BotsExit) then
                    destroyElement(Bot[i].BotsExit)
                    Bot[i].BotsExit = nil
                end
            end
        end
        if PlayerBuser[vehicle] and PlayerBuser[vehicle].tables then
            local tables = PlayerBuser[vehicle].tables
            for i = 1, #tables do
                if tables[i][1] and isElement(PlayerBuser[vehicle][i].bot) then
                    if isTimer(PlayerBuser[vehicle][i].timer) then killTimer(PlayerBuser[vehicle][i].timer) end
                    tables[i][1].destroy = nil
                    tables[i][1] = nil
                    destroyElement(PlayerBuser[vehicle][i].bot)
                end
            end
            PlayerBuser[vehicle].tables = nil
            PlayerBuser[vehicle] = nil
        end
        if Marker and isElement(Marker.Route) then destroyElement(Marker.Route) end
        if Marker and isElement(Marker.BlipRoute) then destroyElement(Marker.BlipRoute) end
        Marker = nil
        temp = nil
        movedDoor = nil
    end
    bWorkStarted = bool
end)

addEvent("destroyVehicle", true)
addEventHandler("destroyVehicle", root, function ( tables, vehicle )
    for i = 1, #tables do
		if tables[i][1] and PlayerBuser[vehicle] and PlayerBuser[vehicle][i] and isElement(PlayerBuser[vehicle][i].bot) then
			if isTimer(PlayerBuser[vehicle][i].timer) then killTimer(PlayerBuser[vehicle][i].timer) end
			destroyElement(PlayerBuser[vehicle][i].bot)
			tables[i][1].destroy = nil
			tables[i][1] = nil
		end
    end
end)
--[[
SparroW MTA : https://sparrow-mta.blogspot.com/
Facebook : https://www.facebook.com/sparrowgta/
İnstagram : https://www.instagram.com/sparrowmta/
Discord : https://discord.gg/DzgEcvy    [600 KİŞİ OLDUK SENİDE ARAMIZA BEKLERİZ.]
]]--

local x, y = guiGetScreenSize()
--local backgroundScale = y / 620
--local backgroundWidth, backgroundHeight = 1280 * backgroundScale, 720 * backgroundScale
open = getTickCount()

local otherRoute = {
	{"AutoBuses en Servicio"},
	{"Información"}
}
local busPanelStateAlpha = 0
local infoPanelStateAlpha = 0
function autobus_menu_job ()
	local new_x = (x - 708) / 2
	local new_w = 708
	--dxDrawImage(0, 0, backgroundWidth, backgroundHeight, backgroundTexture, 0, 0, 0, tocolor(255, 255, 255, 255))
	dxDrawWindow(new_x, (y - 403) / 2, new_w, 448, "ATP")
	--
    dxText((x - new_w + 430) / 2, (y - 340) / 2, 160, 50, "Empezar: 0")
    dxTextRight((x - new_w + 650) / 2, (y - 340) / 2, 360, 50, "Nine Nine Roleplay")
    --
    dxText((x - new_w) / 2, (y - 340) / 2, 160, 50, "Tipo de ruta:")
    if not typeRoute then 
    	return
    end
    for i = 1, #typeRoute do
    	local integer_menu = 380 - (100*i)
    	dxDrawButton((x - new_w + 30) / 2, (y - integer_menu) / 2, 185, 39, typeRoute[i][1], i)
    end
    dxTextLeft((x - new_w + 35) / 2, (y + 30) / 2, 160, 50, "Otros:")
    for i = 1, #otherRoute do
    	local integer_menu = 5 - (100*i)
    	dxDrawButton((x - new_w + 30) / 2, (y - integer_menu) / 2, 185, 39, otherRoute[i][1], #typeRoute + i)
    end
    dxDrawButton((x - new_w + 30) / 2, (y + 355) / 2, 185, 39, "Cerrar", #typeRoute + #otherRoute + 1)
    --
    dxDrawRectangle((x - new_w + 435) / 2, (y - 280) / 2, 480, 357, tocolor(255, 255, 255, 100))
    dxDrawRectangle((x - new_w + 455) / 2, (y - 240) / 2, 460, 1, tocolor(55, 55, 55, 150))
    dxDrawTextGrid((x - new_w + 395) / 2, (y - 295) / 2, 135, 39, "Ruta")
    dxDrawTextGrid((x - new_w + 875) / 2, (y - 295) / 2, 135, 39, "AutoBus Disponibles")
    dxDrawTextGrid((x - new_w + 1185) / 2, (y - 295) / 2, 135, 39, "Control")
    
    if busPanelState then
    	dxDrawOneWindow(x * 0.135, y * 0.312, 325, 448, 'Autobuses', busPanelStateAlpha)
    else
    	dxDrawOneWindow(x * 0.135, y * 0.312, 325, 448, 'Autobuses', busPanelStateAlpha)
    end
    if infoPanelState then
    	dxDrawDiscription(x * 0.6948, y * 0.312, 250, 448, 'Información', infoPanelStateAlpha)
    else
    	dxDrawDiscription(x * 0.6948, y * 0.312, 250, 448, 'Información', infoPanelStateAlpha)
    end
    --
    if routeSelect ~= 0 and tablePlayerRoute then
    	for i = 1, #tablePlayerRoute do
			local integer_menu = 300 - (93*i)
			dxDrawButtonMenu((x - new_w + 455) / 2, (y - integer_menu) / 2, 460, 39, tablePlayerRoute[i][3], tablePlayerRoute[i][4], tablePlayerRoute[i][5], i)
    	end
    end
    --
end

function autobus_menu_job_uval(  )
    dxDrawWindow((x - 408) / 2, (y - 238) / 2, 408, 128, "")
    dxText((x - 408) / 2, (y - 208) / 2, 408, 50, "Quieres terminar tu trabajo\n Tus ganancias: ".. playerZP .."$")
    dxDrawButton((x - 385) / 2, ( y - 88) / 2, 185, 45, "Seguir", 55)
    dxDrawButton((x + 15) / 2, ( y - 88) / 2, 185, 45, "Terminar", 56)
end

addEventHandler( "onClientClick", root, function(button, state)
	if cursorPosition((x - 385) / 2, ( y - 88) / 2, 185, 45) and button == "left" and state == "down" and autobus_menu_job_uval_state then
		playerZP = nil
		showCursor(false)
		autobus_menu_job_uval_state = nil
		removeEventHandler('onClientRender', root, autobus_menu_job_uval)
	end
	if cursorPosition((x + 15) / 2, ( y - 88) / 2, 185, 45) and button == "left" and state == "down" and autobus_menu_job_uval_state then
		playerZP = nil
		showCursor(false)
		removeEventHandler('onClientRender', root, autobus_menu_job_uval)	
		autobus_menu_job_uval_state = nil
		triggerServerEvent("onPlayerStopJob", resourceRoot, true)
	end
	if cursorPosition((x - 708 + 30) / 2, (y + 355) / 2, 185, 39) and button == "left" and state == "down" and autobus_menu_state then 
		tableIndex = nil
		routeSelect = nil
		showCursor(false)
		autobus_menu_state = nil
		playerEXP = nil
		removeEventHandler('onClientRender', root, autobus_menu_job)
	end 
	if autobus_menu_state then
	    for i = 1, #typeRoute do
	    	local integer_menu = 380 - (100*i)
			if cursorPosition((x - 708 + 30) / 2, (y - integer_menu) / 2, 185, 39) and button == "left" and state == "down" and autobus_menu_state then 
				if i then
					routeSelect = i
					if routeSelect == 1 then tableRouteIndex = ROUTEtable1 end
					if routeSelect == 2 then tableRouteIndex = ROUTEtable2 end
					if routeSelect == 3 then tableRouteIndex = ROUTEtable3 end
					tablePlayerRoute = {}
					for i = 1, #tableRouteIndex do

						if tableRouteIndex[i][2] == tableIndex then
							table.insert(tablePlayerRoute, tableRouteIndex[i])
						end 
					end
					openRouteSelect = getTickCount()
				end
			end
		end
	    for i = 1, #otherRoute do
	    	local integer_menu = 5 - (100*i)
			if cursorPosition((x - 708 + 30) / 2, (y - integer_menu) / 2, 185, 39) and button == "left" and state == "down" and autobus_menu_state then 
				if i == 1 then
					openBus = getTickCount()
					busPanelState = not busPanelState
					if busPanelState == true then 
						busPanelStateAlpha = 1 
					else
						busPanelStateAlpha = 2
					end
				elseif i == 2 then
					openInfo = getTickCount()
					infoPanelState = not infoPanelState
					if infoPanelState == true then 
						infoPanelStateAlpha = 1 
					else
						infoPanelStateAlpha = 2
					end
				end
			end
		end
	    if routeSelect ~= 0 and tablePlayerRoute then
	    	for i = 1, #tablePlayerRoute do
    			local integer_menu = 300 - (93*i)
    			if cursorPosition((x - 708 + 455) / 2, (y - integer_menu) / 2, 460, 39) and button == "left" and state == "down" and autobus_menu_state then 
    				triggerServerEvent("onPlayerStartJob", resourceRoot, tablePlayerRoute[i], routeSelect, tableIndex)
    			end
	    	end
    	end
	end
end)

function openJobWindow( exp, getIndex )
	playerEXP = exp
	tableIndex = getIndex
	routeSelect = 0
	showCursor(true)
	autobus_menu_state = true
	--backgroundTexture = DxTexture("images/background.png")
	removeEventHandler('onClientRender', root, autobus_menu_job)
	addEventHandler('onClientRender', root, autobus_menu_job)
end

function openUvalWindow( exp, getIndex )
	playerZP = exp
	showCursor(true)
	autobus_menu_job_uval_state = true
	removeEventHandler('onClientRender', root, autobus_menu_job_uval)
	addEventHandler('onClientRender', root, autobus_menu_job_uval)
end

function closeJobWindow( )
	removeEventHandler('onClientRender', root, autobus_menu_job)
	tableIndex = nil
	tableRouteIndex = nil
	routeSelect = nil
	showCursor(false)
	autobus_menu_state = nil
	tablePlayerRoute = nil
	playerEXP = nil
	--if isElement(backgroundTexture) then destroyElement(backgroundTexture) end
end

addEvent("checkJobWindow", true)
addEventHandler("checkJobWindow", localPlayer, function (  )
	playerZP = nil
	showCursor(false)
	autobus_menu_job_uval_state = nil
	removeEventHandler('onClientRender', root, autobus_menu_job_uval)	
end)
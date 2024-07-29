local sx , sy = guiGetScreenSize()
local animsbtn = {}
local truckLevel = 0
local panelTimer = false

addEvent("truckShowPanel" , true)
addEventHandler("truckShowPanel" , root , function(level)

    truckLevel = level
    panelTimer = setTimer(renderPanel , 0 , 0)

end)

addEvent("truckHidePanel" , true)
addEventHandler("truckHidePanel" , root , function()

    if isTimer(panelTimer) then
        killTimer(panelTimer)
    end

end)

addEvent("truckMiddMarker" , true)
addEventHandler("truckMiddMarker" , root , function(index , gps)

    marker = createMarker(exped[index][6] , "checkpoint" , 3 , 255 , 0 , 0)
    localPlayer.vehicle:setData("gpsDestination" , gps)

    addEventHandler("onClientMarkerHit" , marker , function(player)

        if player == localPlayer then

            if getElementType(player) == "player" and player.vehicle and player.vehicle.model == truckModel then

                triggerServerEvent("truckMiddMarker" , player , player.vehicle)
                
            end

        end

    end)

end)

addEvent("truckDestroyMarker" , true)
addEventHandler("truckDestroyMarker" , root , function()

    destroyElement(marker)
    marker = createMarker(finishPosition , "checkpoint" , 3 , 255 , 0 , 0)
    localPlayer.vehicle:setData("gpsDestination" , {finishPosition.x , finishPosition.y})

    addEventHandler("onClientMarkerHit" , marker , function(player)

        if player == localPlayer then

            if getElementType(player) == "player" and player.vehicle and player.vehicle.model == truckModel and player.vehicleSeat == 0 then

                destroyElement(marker)
                triggerServerEvent("truckFinish" , player)

            end

        end

    end)

end)


function renderPanel()

    local font  = exports['fonts']:getFont("DeansGateB", 11)
    local RBfont = exports['fonts']:getFont("RobotoB", 10)
    local Rfont = exports['fonts']:getFont("Roboto", 10)
    local w , h = 400 , 40

    for i = 1 , #exped do

        if truckLevel >= exped[i][3] then

            h = h + 80

        end

    end

    
    roundedRectangle((sx-w)/2 , (sy-h)/2 , w , h , tocolor(15,15,15))
    dxDrawText("Nine Nine Roleplay Interfaz de Selección de Ruta" , (sx-w)/2 , (sy-h)/2 + 10, ((sx-w)/2)+w , ((sx-h)/2)+h , white , 1 , font , "center" , "top")

    y = (sy-h)/2 - 30
    w , h = 380 , 70

    for i = 1 , #exped do

        if truckLevel >= exped[i][3] then 

            y = y+h+7
            
            roundedRectangle((sx-w)/2 , y , w , h , tocolor(10,10,10))
            if not animsbtn[i] then
                animsbtn[i] = {}
                animsbtn[i]["x"] , animsbtn[i]["y"] , animsbtn[i]["w"] , animsbtn[i]["h"] = (sx-w)/2 + w-40, y , 40 , 70
            end

            if isMouseInPosition ( animsbtn[i]["x"] , animsbtn[i]["y"] , animsbtn[i]["w"] , animsbtn[i]["h"] ) then

                if getKeyState("mouse1") and lastClick < getTickCount() then

                    lastClick = getTickCount() + 400
                    triggerServerEvent("truckCreateTrailer" , localPlayer , i)

                    if isTimer(panelTimer) then
                       killTimer(panelTimer)
                    end

                end

                if animSirasi ~= exped[i][1] then
                    if isTimer(animtimer) then
                        killTimer(animtimer)
                    end
                end

                if not isTimer(animtimer) then 

                    animSirasi = exped[i][1]
                    animtimer = setTimer(function()

                        if not isMouseInPosition ( animsbtn[i]["x"] , animsbtn[i]["y"] , animsbtn[i]["w"] , animsbtn[i]["h"] ) then 
                            killTimer(animtimer)
                        return end

                        if animsbtn[i]["x"] <= (sx-w)/2 then
                            killTimer(animtimer)
                            animsbtn[i]["x"] = (sx-w)/2
                            animsbtn[i]["w"] = 380
                        return end

                        animsbtn[i]["x"] = animsbtn[i]["x"] - 10
                        animsbtn[i]["w"] = animsbtn[i]["w"] + 10

                    end , 0 , 0)

                end

            else

                if animsbtn[i]["x"] ~= (sx-w)/2 + w-40 and not isTimer( animsbtn[i]["timer"] ) then
                    

                    animsbtn[i]["timer"] = setTimer(function()

                        if animsbtn[i]["x"] > (sx-w)/2 + w-40 then
                            animsbtn[i]["x"] = (sx-w)/2 + w-40
                            animsbtn[i]["w"] = 40
                            killTimer(animsbtn[i]["timer"])
                        return end

                        animsbtn[i]["x"] = animsbtn[i]["x"] + 10
                        animsbtn[i]["w"] = animsbtn[i]["w"] - 10

                    end , 0, 0)

                end

            end
        

            roundedRectangle(animsbtn[i]["x"] , animsbtn[i]["y"] , animsbtn[i]["w"] , animsbtn[i]["h"] , tocolor(22,22,22))
            dxDrawImage((sx-w)/2 + w-32, y+22 , 24 , 24 , "icons/arrow.png")

            dxDrawImage((sx-w)/2 + 12 , y+12 , 48 , 48 , "logo/"..exped[i][5]..".png")
            dxDrawText(exped[i][1] , (sx-w)/2 + 70 , y+18 , 24 , 24 , tocolor(185,185,185) , 1 , RBfont)
            dxDrawText("Tarifa: "..exports['global']:formatMoney(exped[i][4]).."$" , (sx-w)/2 + 70 , y+36 , 24 , 24 , tocolor(185,185,185) , 1 , Rfont)
            dxDrawText(getZoneName(exped[i][6]) , ((sx-24)/2 + w/3 + 8) - dxGetTextWidth(getZoneName(exped[i][6]) , 1 , Rfont) , y+26 , 24 , 24 , tocolor(200,200,200) , 1 , Rfont)
            dxDrawImage((sx-24)/2 + w/3 + 8, y+24 , 20 , 20 , "icons/location.png")

        end

    end

end

function roundedRectangle(x, y, w, h, borderColor, bgColor, postGUI)
	--if (x and y and w and h) then
		if (not borderColor) then
			borderColor = tocolor(0, 0, 0, 200);
		end
		if (not bgColor) then
			bgColor = borderColor;
		end
		dxDrawRectangle(x, y, w, h, bgColor, postGUI);
		dxDrawRectangle(x + 2, y - 1, w - 4, 1, borderColor, postGUI);
		dxDrawRectangle(x + 2, y + h, w - 4, 1, borderColor, postGUI);
		dxDrawRectangle(x - 1, y + 2, 1, h - 4, borderColor, postGUI);
		dxDrawRectangle(x + w, y + 2, 1, h - 4, borderColor, postGUI);
	--end
end

function isMouseInPosition ( x, y, width, height )
	if ( not isCursorShowing( ) ) then
		return false
	end
	local sx, sy = guiGetScreenSize ( )
	local cx, cy = getCursorPosition ( )
	local cx, cy = ( cx * sx ), ( cy * sy )
	
	return ( ( cx >= x and cx <= x + width ) and ( cy >= y and cy <= y + height ) )
end

lastClick = getTickCount()
local sX, sY = guiGetScreenSize()
width, height = 442, 246
left, top = (sX / 2 - width / 2), (sY / 2 - height / 2)
showShipRent = false

local shipRentPed = createPed(18, 331.005859375, -40.1845703125, 2.2255229949951)
setPedRotation(shipRentPed, 82)
setElementFrozen(shipRentPed, true)

setElementData(shipRentPed,"visibleName", "Alquilar una Bici")
setElementData(shipRentPed, "shipRentPed", true)
setElementData(shipRentPed, "nameEnabled", true, false)

function clickshipRentPedPed(button, state, absX, absY, wx, wy, wz, element)
	if element and getElementType(element) == "ped" and state=="down" and getElementData(element, "shipRentPed") then
		local x, y, z = getElementPosition(getLocalPlayer())
		if getDistanceBetweenPoints3D(x, y, z, wx, wy, wz)<=4 then
			showShipRentPanel()
		end
	end
end
addEventHandler("onClientClick", getRootElement(), clickshipRentPedPed, true)

function showShipRentPanel()
    if showShipRent == false then
		showShipRent = true
		showChat(false)
	end
end

function renderShipRent()
	if showShipRent then
	    --exports.ng_blur:createBlur()
        dxDrawImage(left, top, 442, 246, "files/panel.png", 0, 0, 0, tocolor(255, 255, 255, 255))
	end								
end
addEventHandler("onClientRender", getRootElement(), renderShipRent)

function clickHandler(button, state, x, y)
    if showShipRent then
		if button == "left" and state == "down" then		
			if isInBoxHover(left + 270, top + 175, 110, 30) then  
				showShipRent = false
				showChat(true)
			elseif isInBoxHover(left + 65, top + 175, 110, 30) then 
					triggerServerEvent("createRentBoat", localPlayer, localPlayer)
					outputChatBox("#fe771d[Información]: #ffffffSu bicicleta será retirada en 60 minutos.",0,0,0,true)
					showShipRent = false
					showChat(true)				
					setTimer(function() outputChatBox("#fe771d[Información]: #ffffffSu bicicleta será retirada en 10 minutos.",0,0,0,true) end, 50*60000, 1)			
					setTimer(function() triggerServerEvent("destroyRentBoat", localPlayer) end, 60*60000, 1)
				else
					exports.hud:sendBottomNotification(thePlayer, "Error:", "No tienes suficiente dinero para alquilar una bicicleta.")
				end
			end			
		end
	end
addEventHandler("onClientClick", root, clickHandler)

function isInBoxHover(dX, dY, dSZ, dM)
	if isCursorShowing() then
		local cX ,cY = getCursorPosition()
		cX,cY = cX*sX , cY*sY
	    if(cX >= dX and cX <= dX+dSZ and cY >= dY and cY <= dY+dM) then
	        return true, cX, cY
	    else
	        return false
	    end
	end
end
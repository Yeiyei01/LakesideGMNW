--[[
Made by Adams for OwlGaming.
Do not use without my permission.
Or you're an faggot.
Brah.

]]

function carryPlayer(thePlayer, commandName, targetPlayer)
	if not (targetPlayer) then
				outputChatBox("SYNTAX: /" .. commandName .. " [Nombre del Jugador]", thePlayer, 255, 194, 14)
			else
				local username = getPlayerName(thePlayer)
				local targetPlayer, targetPlayerName = exports.global:findPlayerByPartialNick(thePlayer, targetPlayer)
				
				if targetPlayer then
					if targetPlayer == thePlayer then
						outputChatBox("¡No puedes llevarte a ti mismo!", thePlayer, 255, 194, 14)
						return
					end
					
					if not getElementData(thePlayer, "carryplayer") == true then
						local x, y, z = getElementPosition(thePlayer)
						local tx, ty, tz = getElementPosition(targetPlayer)
						local distance = getDistanceBetweenPoints3D(x, y, z, tx, ty, tz)
						local theVehicle = getPedOccupiedVehicle(thePlayer)
						local theVehicleT = getPedOccupiedVehicle(targetPlayer)
						if not theVehicle and not theVehicleT then
							if distance < 3 then
								outputChatBox("Enviar una solicitud de transporte a "..getPlayerName(targetPlayer):gsub("_", " ").." ", thePlayer, 255, 194, 14)
								outputChatBox("Ha recibido una solicitud de transporte de "..getPlayerName(targetPlayer):gsub("_", " ")..", type /acceptcarry to accept.", targetPlayer, 255, 194, 14)
								
								setElementData(targetPlayer, "carryRequest", thePlayer)
							else
								outputChatBox("¡Estás demasiado lejos de "..getPlayerName(targetPlayer):gsub("_", " ").."!", thePlayer, 255, 194, 14)
							end
						else
							outputChatBox("¡No puedes llevar a alguien dentro de un vehículo!", thePlayer, 255, 194, 14)
						end
					else
						outputChatBox("¡Ya llevas a alguien!", thePlayer, 255, 194, 14)
					end
				end
			end
end
addCommandHandler("llevar", carryPlayer)

function acceptCarry(thePlayer)
	local requestPlayer = getElementData(thePlayer, "carryRequest")
	if requestPlayer then
		local x, y, z = getElementPosition(thePlayer)
		local tx, ty, tz = getElementPosition(requestPlayer)
		local distance = getDistanceBetweenPoints3D(x, y, z, tx, ty, tz)
		if distance < 3 then
			triggerEvent("allowCarry", thePlayer, requestPlayer, thePlayer)
			setElementData(thePlayer, "carryRequest", nil)
			
			outputChatBox("Has aceptado una solicitud de transporte de "..getPlayerName(thePlayer):gsub("_", " ")..".", thePlayer, 255, 194, 14)
			outputChatBox(""..getPlayerName(requestPlayer):gsub("_", " ").." ha aceptado su solicitud de llevarlos.", requestPlayer, 255, 194, 14)
		else
			outputChatBox("Estás demasiado lejos de "..getPlayerName(requestPlayer):gsub("_", " ").."!", thePlayer, 255, 194, 14)
			setElementData(thePlayer, "carryRequest", nil)
		end
	end
end
addCommandHandler("aceptarllevar", acceptCarry)

function denyCarry(thePlayer)
	local requestPlayer = getElementData(thePlayer, "carryRequest")
	if requestPlayer then
			outputChatBox(""..getPlayerName(thePlayer):gsub("_", " ").." ha denegado su solicitud para ser llevado.", requestPlayer, 255, 194, 14)
			outputChatBox("Te has negado a la solicitud de "..getPlayerName(requestPlayer):gsub("_", " ").." para llevarte.", thePlayer, 255, 194, 14)
			
			setElementData(thePlayer, "carryRequest", nil)
	end
end
addCommandHandler("negarllevar", denyCarry)

function allowCarry(thePlayer, carryPlayer)
	local x, y, z = getElementPosition(thePlayer)
	local rx, ry, rz = getElementRotation(thePlayer)
	
	attachElements(carryPlayer, thePlayer, 0.2, 0, 0.35)
	
	exports.global:applyAnimation(carryPlayer, "FAT", "idle_tired", 1, 1, 0, 1)
	
	toggleControl(thePlayer, "sprint", false)
	toggleControl(thePlayer, "jump", false)
	
	setElementData(thePlayer, "carryplayer", true)
	
	rotationTimer = setTimer ( function()
	local rxx, ryy, rzz = getElementRotation(thePlayer)
		setElementRotation(carryPlayer, rxx, ryy, rzz-180)
	end, 100, 0 )
end
addEvent("allowCarry", true)
addEventHandler("allowCarry", getRootElement(), allowCarry)

function dropPlayer(thePlayer, commandName)
	if getElementData(thePlayer, "carryplayer") == true then
		if isTimer(rotationTimer) then killTimer(rotationTimer) end
		
		local carriedPlayers = getAttachedElements(thePlayer)
		for k, v in ipairs (carriedPlayers) do
			if getElementType(v) == "player" then
				detachElements(v, thePlayer)
				local x, y, z = getElementPosition(thePlayer)
				setElementPosition(v, x, y, z)
				
				outputChatBox("Dejaste a "..getPlayerName(v):gsub("_", " ")..".", thePlayer, 255, 194, 14)
				outputChatBox(""..getPlayerName(thePlayer):gsub("_", " ").." te ha dejado.", v, 255, 194, 14)
				
				setElementData(thePlayer, "carryplayer", false)
				toggleControl(thePlayer, "sprint", true)
				toggleControl(thePlayer, "jump", true)
				
				setPedAnimation(v)
				
				break
			end
		end
	end
end
addCommandHandler("soltar", dropPlayer)

function stopEnter(theVehicle, seat, jacked)
	if getElementData(source, "carryplayer") == true then
		cancelEvent()
		outputChatBox("¡No puedes entrar en un vehículo mientras llevas a alguien!", source, 255, 194, 14)
	end
end
addEventHandler("onPlayerVehicleEnter", getRootElement(), stopEnter)
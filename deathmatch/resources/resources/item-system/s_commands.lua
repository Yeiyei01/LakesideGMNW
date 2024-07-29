local badges = getBadges()
local masks = getMasks()

-- Player Commands to use Items
function breathTest(thePlayer, commandName, targetPlayer)
	if hasItem(thePlayer, 53) then
		if not (targetPlayer) then
			outputChatBox("SYNTAX: /" .. commandName .. " [Player Partial Nick / ID]", thePlayer, 255, 194, 14)
		else
			local targetPlayer, targetPlayerName = exports.global:findPlayerByPartialNick(thePlayer, targetPlayer)

			if targetPlayer then
				local logged = getElementData(targetPlayer, "loggedin")
				local username = getPlayerName(thePlayer)

				if (logged==0) then
					outputChatBox("El jugador no está logueado.", thePlayer, 255, 0, 0)
				else
					local x, y, z = getElementPosition(targetPlayer)
					if getDistanceBetweenPoints3D(x, y, z, getElementPosition(thePlayer)) > 4 or getElementDimension(thePlayer) ~= getElementDimension(targetPlayer) then
						outputChatBox("Estás demasiado lejos.", thePlayer, 255, 0, 0)
					else
						local alcohollevel = getElementData(targetPlayer, "alcohollevel")

						if not (alcohollevel) then alcohollevel = 0 end

						outputChatBox(targetPlayerName .. ": Nivel de Alcohol: " .. alcohollevel .. ".", thePlayer, 255, 194, 15)
					end
				end
			end
		end
	end
end
addCommandHandler("pruebaalcohol", breathTest, false, false)

-- /issueBadge Command - A command for faction leaders
function givePlayerBadge(thePlayer, commandName, targetPlayer, ... )
	local badgeNumber = table.concat( { ... }, " " )
	badgeNumber = #badgeNumber > 0 and badgeNumber
	local teamID = exports.factions:getCurrentFactionDuty(thePlayer) or -1
	if teamID < 0 then
		outputChatBox("Debes estar en servicio de la facción para emitir insignias.", thePlayer, 255, 0, 0)
		return
	end

	local badge = nil
	local itemID = nil
	local prefix = ""
	for k, v in pairs(badges) do
		for ka, va in pairs(v[3]) do
			if ka == teamID then
				badge = v
				itemID = k
				prefix = type(va) == "string" and ( va .. " " ) or ""
			end
		end
	end
	if not badge then return end

	local leader = exports.factions:hasMemberPermissionTo(thePlayer, teamID, "set_member_duty")

	if not leader then -- If the player is not the leader
		outputChatBox("Debes ser un líder de facción para emitir insignias.", thePlayer, 255, 0, 0) -- If they aren't leader they can't give out badges.
	else
		if not targetPlayer or not badgeNumber then
			outputChatBox("SYNTAX: /" .. commandName .. " [Player Partial Nick / ID] [Badge Number]", thePlayer, 255, 194, 14)
		else
			local targetPlayer, targetPlayerName = exports.global:findPlayerByPartialNick(thePlayer, targetPlayer)
			if targetPlayer then -- is the player online?
				local targetPlayerName = targetPlayerName:gsub("_", " ")
				local logged = getElementData(targetPlayer, "loggedin")
				if (logged==0) then -- Are they logged in?
					outputChatBox("El jugador no está logueado.", thePlayer, 255, 0, 0)
				else
					local x, y, z = getElementPosition(thePlayer)
					local tx, ty, tz = getElementPosition(targetPlayer)
					if (getDistanceBetweenPoints3D(x, y, z, tx, ty, tz)>4) then -- Are they standing next to each other?
						outputChatBox("Estás demasiado lejos para entregarle una placa a este jugador.", thePlayer, 255, 0, 0)
					else
						exports.global:sendLocalMeAction(thePlayer, "le da a "..targetPlayerName.." " .. badge[2] .. ", que dice " .. badgeNumber .. ".")
						exports.global:giveItem(targetPlayer, itemID, prefix .. badgeNumber)
					end
				end
			end
		end
	end
end
addCommandHandler("crearplaca", givePlayerBadge, false, false)

function writeNote(thePlayer, commandName, ...)
	local tick = getTickCount()
	if not (...) then
		outputChatBox("SYNTAX: /" .. commandName .. " [Texto]", thePlayer, 255, 194, 14)
	elseif not hasSpaceForItem( thePlayer, 72, table.concat({...}, " ") ) then
		outputChatBox("No puedes llevar más notas.", thePlayer, 255, 0, 0)
	elseif getElementData(thePlayer, 'note-timeout') and math.abs(getElementData(thePlayer, 'note-timeout') - tick) < 5000 then
		outputChatBox("Sólo puedes escribir una nota cada 5 segundos.", thePlayer, 255, 0, 0)
	else
		giveItem( thePlayer, 72, table.concat({...}, " ") )
		exports.global:sendLocalMeAction(thePlayer, "escribe una nota en un papel.")
		setElementData(thePlayer, 'note-timeout', tick, false)
	end
end
addCommandHandler("escribirnota", writeNote, false, false)

function changeLock(thePlayer)
	if exports.integration:isPlayerTrialAdmin(thePlayer) then
		local theVehicle = getPedOccupiedVehicle(thePlayer)
		if theVehicle then
			local dbid = getElementData( theVehicle, "dbid" )
			if dbid > 0 then
				exports.vehicle_manager:addVehicleLogs(dbid, 'changelock', thePlayer)

				deleteAll( 3, dbid )
				giveItem( thePlayer, 3, dbid )
				outputChatBox( "Las cerraduras de este vehículo han sido cambiadas.", thePlayer, 0, 255,0  )
			else
				outputChatBox( "Esto es sólo un vehículo temporal.", thePlayer, 255, 0, 0 )
			end
		else
			local dbid, entrance, exit, interiortype = exports.interior_system:findProperty( thePlayer )
			if dbid > 0 then
				if interiortype == 2 then
					outputChatBox( "Esta es una propiedad del gobierno.", thePlayer, 255, 0, 0 )
				else
					local itemid = interiortype == 1 and 5 or 4
					exports['interior-manager']:addInteriorLogs(dbid, 'changelock', thePlayer)

					deleteAll( 4, dbid )
					deleteAll( 5, dbid )
					giveItem( thePlayer, itemid, dbid )
					outputChatBox( "Se han cambiado las cerraduras de esta casa.", thePlayer, 0, 255,0  )
				end
			else
				outputChatBox( "Es necesario estar en un interior o en un vehículo para cambiar las cerraduras.", thePlayer, 255, 0, 0 )
			end
		end
	end
end
addCommandHandler("cambiarcerraduras", changeLock, false, false)

--TEXTURE SYSTEM:
function saveTextureURL(slot, url)
	--outputDebugString("source="..tostring(source).." slot="..tostring(slot).." url="..tostring(url))
	updateItemValue(source, slot, url)
	outputChatBox("Texture URL set.", source, 0, 255, 0)
end
addEvent("item-system:saveTextureURL", true)
addEventHandler("item-system:saveTextureURL", getRootElement(), saveTextureURL)

function saveTextureReplacement(slot, url, texture)
	--outputDebugString("source="..tostring(source).." slot="..tostring(slot).." url="..tostring(url).." texture="..tostring(texture))
	if(texture) then
		updateItemValue(source, slot, tostring(url)..";"..tostring(texture))
	else
		updateItemValue(source, slot, tostring(url))
	end
	outputChatBox("Replacement texture saved.", source, 0, 255, 0)
end
addEvent("item-system:saveTextureReplacement", true)
addEventHandler("item-system:saveTextureReplacement", getRootElement(), saveTextureReplacement)

detailedDebug = false
addCommandHandler("detaileditemdebug",
	function(player)
		if exports.global:isPlayerScripter(player) then
			detailedDebug = not detailedDebug
			outputChatBox("detaileditemdebug [server-side] set to "..tostring(detailedDebug), player)
		end
	end)
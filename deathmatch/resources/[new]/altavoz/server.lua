------------------------------------------
-- Author: xXMADEXx						--
-- Name: 3D Speakers 2.0				--
-- File: server.lua						--
-- Copyright 2013 ( C ) Braydon Davis	--
------------------------------------------

local isSpeaker = false

function print ( player, message, r, g, b )
	outputChatBox ( message, player, r, g, b )
end

speakerBox = { }
addCommandHandler ( "altavoz", function ( thePlayer  )
local hoursplayed = getElementData(thePlayer, "hoursplayed")
	-- if not (hoursplayed > 20) then
	-- exports["bildirim-sistemi"]:addBox(thePlayer, "error", "No puedes usar este comando sin jugar durante 20 horas.")
	-- return end
	if ( isElement ( speakerBox [ thePlayer] ) ) then isSpeaker = true end
	triggerClientEvent ( thePlayer, "onPlayerViewSpeakerManagment", thePlayer, isSpeaker )
end )

addEvent ( "onPlayerPlaceSpeakerBox", true )
addEventHandler ( "onPlayerPlaceSpeakerBox", root, function ( url, isCar ) 
	if ( url ) then
		if ( isElement ( speakerBox [ source ] ) ) then
			local x, y, z = getElementPosition ( speakerBox [ source ] ) 
			print ( source, "Destroyed old speaker located at: "..math.floor ( x )..", "..math.floor ( y )..", "..math.floor ( z ), 255, 0, 0 )
			destroyElement ( speakerBox [ source ] )
			removeEventHandler ( "onPlayerQuit", source, destroySpeakersOnPlayerQuit )
		end
		local x, y, z = getElementPosition ( source )
		local rx, ry, rz = getElementRotation ( source )
		local dim = getElementDimension ( source )
		local int = getElementInterior ( source )
		speakerBox [ source ] = createObject ( 2229, x-0.5, y+0.5, z - 1, 0, 0, rx )
		setElementDimension( speakerBox [ source ], dim ) 
		setElementInterior ( speakerBox [ source ], int )
		print ( source, "¡Sistema de sonido creado!"..math.floor ( x )..", "..math.floor ( y )..", "..math.floor ( z ), 0, 255, 0 )
		addEventHandler ( "onPlayerQuit", source, destroySpeakersOnPlayerQuit )
		triggerClientEvent ( root, "onPlayerStartSpeakerBoxSound", root, source, url, isCar )
		if ( isCar ) then
			local car = getPedOccupiedVehicle ( source )
			attachElements ( speakerBox [ source ], car, -0.7, -1.5, -0.5, 0, 90, 0 )
		end
	end
end )

addEvent ( "onPlayerDestroySpeakerBox", true )
addEventHandler ( "onPlayerDestroySpeakerBox", root, function ( )
	if ( isElement ( speakerBox [ source ] ) ) then
		destroyElement ( speakerBox [ source ] )
		triggerClientEvent ( root, "onPlayerDestroySpeakerBox", root, source )
		removeEventHandler ( "onPlayerQuit", source, destroySpeakersOnPlayerQuit )
		print ( source, "Sistema de sonido explotado", 255, 0, 0 )
	else
		print ( source, "¡No tienes un sistema de sonido, por lo que no puedes explotar!", 255, 255, 0 )
	end
end )

addEvent ( "onPlayerChangeSpeakerBoxVolume", true ) 
addEventHandler ( "onPlayerChangeSpeakerBoxVolume", root, function ( to )
	triggerClientEvent ( root, "onPlayerChangeSpeakerBoxVolumeC", root, source, to )
end )

function destroySpeakersOnPlayerQuit ( )
	if ( isElement ( speakerBox [ source ] ) ) then
		destroyElement ( speakerBox [ source ] )
		triggerClientEvent ( root, "onPlayerDestroySpeakerBox", root, source )
	end
end
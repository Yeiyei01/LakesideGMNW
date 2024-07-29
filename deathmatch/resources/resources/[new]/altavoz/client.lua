------------------------------------------
-- Author: xXMADEXx						--
-- Name: 3D Speakers 2.0				--
-- File: client.lua						--
-- Copyright 2013 ( C ) Braydon Davis	--
------------------------------
-- Variables				--
------------------------------
local subTrackOnSoundDown = 0.1	-- The volume that goes down, when the player clicks "Volume -"
local subTrackOnSoundUp = 0.1	-- The volume that goes up, when the player clicks "Volume +"


function print ( message, r, g, b )
	outputChatBox ( message, r, g, b )
end

------------------------------
-- The GUI					--
------------------------------
local rx, ry = guiGetScreenSize ( )
local screenWidth, screenHeight = guiGetScreenSize()
local windowWidth, windowHeight = 500, 416
local left = screenWidth/2 - windowWidth/2
local top = screenHeight/2 - windowHeight/2
button = { }
-- window = guiCreateWindow(left, top, windowWidth, 180, "Nine Nine Roleplay  - Sistema de Altavoz", false)
window = guiCreateStaticImage(left, top, windowWidth, 180, "ses.png", false)
guiWindowSetSizable(window, false)
guiSetVisible ( window, false )
-- CurrentSpeaker = guiCreateLabel(8, 33, 254, 17, "¿Hay un sistema de altavoz? Si", false, window)
-- volume = guiCreateLabel(10, 50, 252, 17, "Volumen: 100%", false, window)
-- pos = guiCreateLabel(10, 66, 252, 15, "X: 0 | Y: 0 | Z: 0", false, window)
-- guiCreateLabel(11, 81, 251, 15, "URL:", false, window)
--url = guiCreateEdit(11, 96, 272, 23, "", false, window)  
url = guiCreateEdit(75, 50, 350, 25, "Introducir URL !", false, window)  
-- button["place"] = guiCreateButton(9, 70, 630, 20, "Crear", false, window)
button["place"] = guiCreateStaticImage(105, 97, 117, 32, "olustur.png", false, window)
button["remove"] = guiCreateStaticImage(285, 97, 117, 32, "kaldir.png", false, window)
-- button["v-"] = guiCreateButton(9, 189, 128, 20, "Volumen -", false, window)
-- button["v+"] = guiCreateButton(155, 189, 128, 20, "Volumen +", false, window)
button["close"] = guiCreateStaticImage(160, 137, 181, 30, "kapat.png", false, window)

--------------------------
-- My sweet codes		--
--------------------------
local isSound = false
addEvent ( "onPlayerViewSpeakerManagment", true )
addEventHandler ( "onPlayerViewSpeakerManagment", root, function ( current )
	local toState = not guiGetVisible ( window ) 
	guiSetVisible ( window, toState )
	showCursor ( toState ) 
	if ( toState == true ) then
		guiSetInputMode ( "no_binds_when_editing" )
		local x, y, z = getElementPosition ( localPlayer )
		guiSetText ( pos, "X: "..math.floor ( x ).." | Y: "..math.floor ( y ).." | Z: "..math.floor ( z ) )
		if ( current ) then guiSetText ( CurrentSpeaker, "¿Hay un sistema de sonido? Sí" ) isSound = true
		else guiSetText ( CurrentSpeaker, "¿Hay un sistema de sonido? No" ) end
	end
end )

addEventHandler ( "onClientGUIClick", root, function ( )
	if ( source == button["close"] ) then
		guiSetVisible ( window, false ) 
		showCursor ( false )
	elseif ( source == button["place"] ) then
		if ( isURL ( ) ) then
			triggerServerEvent ( "onPlayerPlaceSpeakerBox", localPlayer, guiGetText ( url ), isPedInVehicle ( localPlayer ) )
			guiSetText ( CurrentSpeaker, "¿Hay un sistema de sonido? Sí" )
			isSound = true
			guiSetText ( volume, "Volumen : 100%" )
		else
			print ( "Lutfen URL Giriniz.", 255, 0, 0 )
		end
	elseif ( source == button["remove"] ) then
		triggerServerEvent ( "onPlayerDestroySpeakerBox", localPlayer )
		guiSetText ( CurrentSpeaker, "Ses Sistemi Varmı: Hayir" )
		isSound = false
		guiSetText ( volume, "Ses : 100%" )
	elseif ( source == button["v-"] ) then
		if ( isSound ) then
			local toVol = math.round ( getSoundVolume ( speakerSound [ localPlayer ] ) - subTrackOnSoundDown, 2 )
			if ( toVol > 0.0 ) then
				print ( "Volumen : "..math.floor ( toVol * 100 ).."%!", 0, 255, 0 )
				triggerServerEvent ( "onPlayerChangeSpeakerBoxVolume", localPlayer, toVol )
				guiSetText ( volume, "Volumen : "..math.floor ( toVol * 100 ).."%" )
			else
				print ( "¡La voz más baja que ya no puedes rechazar!", 255, 0, 0 )
			end
		end
	elseif ( source == button["v+"] ) then
		if ( isSound ) then
			local toVol = math.round ( getSoundVolume ( speakerSound [ localPlayer ] ) + subTrackOnSoundUp, 2 )
			if ( toVol < 1.1 ) then
				print ( "Volumen : "..math.floor ( toVol * 100 ).."%!", 0, 255, 0 )
				triggerServerEvent ( "onPlayerChangeSpeakerBoxVolume", localPlayer, toVol )
				guiSetText ( volume, "Volumen : "..math.floor ( toVol * 100 ).."%" )
			else
				print ( "¡Última voz que ya no puedes lastimar!", 255, 0, 0 )
			end
		end
	end
end )

speakerSound = { }
addEvent ( "onPlayerStartSpeakerBoxSound", true )
addEventHandler ( "onPlayerStartSpeakerBoxSound", root, function ( who, url, isCar )
	if ( isElement ( speakerSound [ who ] ) ) then destroyElement ( speakerSound [ who ] ) end
	local x, y, z = getElementPosition ( who )
	speakerSound [ who ] = playSound3D ( url, x, y, z, true )
	setSoundVolume ( speakerSound [ who ], 1 )
	setSoundMinDistance ( speakerSound [ who ], 15 )
	setSoundMaxDistance ( speakerSound [ who ], 30 )
	if ( isCar ) then
		local car = getPedOccupiedVehicle ( who )
		attachElements ( speakerSound [ who ], car, 0, 5, 1 )
	end
end )

addEvent ( "onPlayerDestroySpeakerBox", true )
addEventHandler ( "onPlayerDestroySpeakerBox", root, function ( who ) 
	if ( isElement ( speakerSound [ who ] ) ) then 
		destroyElement ( speakerSound [ who ] ) 
	end
end )

--------------------------
-- Volume				--
--------------------------
addEvent ( "onPlayerChangeSpeakerBoxVolumeC", true )
addEventHandler ( "onPlayerChangeSpeakerBoxVolumeC", root, function ( who, vol ) 
	if ( isElement ( speakerSound [ who ] ) ) then
		setSoundVolume ( speakerSound [ who ], tonumber ( vol ) )
	end
end )

function isURL ( )
	if ( guiGetText ( url ) ~= "" ) then
		return true
	else
		return false
	end
end

function math.round(number, decimals, method)
    decimals = decimals or 0
    local factor = 10 ^ decimals
    if (method == "ceil" or method == "floor") then return math[method](number * factor) / factor
    else return tonumber(("%."..decimals.."f"):format(number)) end
end

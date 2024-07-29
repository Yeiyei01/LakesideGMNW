local meats = {}
local boxes = {}

addEvent("givePlayerMeat",true)
addEventHandler("givePlayerMeat",getRootElement(),function(playerSource)
	if not isElement(meats[playerSource]) then
		meats[playerSource] = createObject(2806,0,0,0)
		setObjectScale(meats[playerSource],0.7)
		setElementCollisionsEnabled(meats[playerSource], false)
		setElementInterior(meats[playerSource],getElementInterior(playerSource))
		setElementDimension(meats[playerSource],getElementDimension(playerSource))
		exports.bone_attach:attachElementToBone(meats[playerSource],playerSource,12, 0.10, 0.05, 0.15, 0, 80, 80)
		setElementData(playerSource,"meat",meats[playerSource])
		setPedAnimation(playerSource, "CARRY", "crry_prtial", 0, true, false, true, true)
		setElementData(playerSource,"isMeatInHand",true)
	end
end)

addEvent("takePlayerMeat",true)
addEventHandler("takePlayerMeat",getRootElement(),function(playerSource)
	if isElement(meats[playerSource]) then
		exports.bone_attach:detachElementFromBone(meats[playerSource])
		destroyElement(meats[playerSource])
		meats[playerSource] = false
		setPedAnimation(playerSource,"CARRY","putdwn",1100,false,false,false,false)
		setElementData(playerSource,"isMeatInHand",false)
		toggleControl(playerSource,"fire", true)
		toggleControl(playerSource,"sprint", true)
		toggleControl(playerSource,"crouch", true)
		toggleControl(playerSource,"jump", true)
	end
end)



addEvent("givePlayerBox",true)
addEventHandler("givePlayerBox",getRootElement(),function (playerSource)
	if not isElement(boxes[playerSource] ) then
		boxes[playerSource] = createObject(1271,0,0,0)
		setObjectScale(boxes[playerSource],0.7)
		setElementInterior(boxes[playerSource],getElementInterior(playerSource))
		setElementDimension(boxes[playerSource],getElementDimension(playerSource))
		exports.bone_attach:attachElementToBone(boxes[playerSource],playerSource,12,0.2,0.2,0.2,0,90,65)
		setPedAnimation(playerSource, "CARRY", "crry_prtial", 0, true, false, true, true)
		setElementData(playerSource,"isBoxInHand",true)
	end
end)

addEvent("takePlayerBox",true)
addEventHandler("takePlayerBox",getRootElement(),function(playerSource)
	if isElement(boxes[playerSource]) then
		exports.bone_attach:detachElementFromBone(boxes[playerSource])
		destroyElement(boxes[playerSource])
		boxes[playerSource] = false
		setPedAnimation(playerSource,"CARRY","putdwn",1100,false,false,false,false)
		setElementData(playerSource,"isBoxInHand",false)
		toggleControl(playerSource,"fire", true)
		toggleControl(playerSource,"sprint", true)
		toggleControl(playerSource,"crouch", true)
		toggleControl(playerSource,"jump", true)
	end
end)

---------------

local marker_emprego = createMarker (960.48828125, 2098.9658203125, 1011-0.5, "cylinder", 0.6, 16, 111, 231, 50)
setElementInterior(marker_emprego,1)
setElementDimension(marker_emprego,48)

function msg_emprego(source)
	if isElementWithinMarker(source, marker_emprego) then
		outputChatBox("#4169E1[Nine Nine Roleplay] #ffffff Utiliza /carnicero para empezar a laburar.",source,255,255,255,true)
                outputChatBox("#4169E1[Nine Nine Roleplay] #ffffff Recuerde comprar su machete.",source,255,255,255,true)
	end
end
addEventHandler("onMarkerHit", marker_emprego, msg_emprego)

function emprego(source) 			
local Emprego = getElementData ( source, "char.job" )
	if isElementWithinMarker(source, marker_emprego) then
		if Emprego == 1 then
		outputChatBox("#4169E1[Nine Nine Roleplay] #ffffffTu ya trabajas de carnicero.",source,255,255,255,true)
	    else
		outputChatBox("#4169E1[Nine Nine Roleplay] #ffffffAhora trabajas como carnicero.",source,255,255,255,true)
		setElementData ( source, "char.job", 1)
		end
	end
end
addCommandHandler("carnicero", emprego)


function givemaitmoney()
local aleatorio = math.random(150,250) -- 110, 220
exports.global:giveMoney(source, aleatorio)
exports.global:giveMoney( exports.factions:getFactionFromID(9), 100*aleatorio )
outputChatBox("#4169E1[Nine Nine Roleplay] #ffffffPor esta caja ganaste #ffffff+"..aleatorio.."$",source,255,255,255,true)
end
addEvent("vz_GiveMoney", true)
addEventHandler("vz_GiveMoney", root, givemaitmoney)
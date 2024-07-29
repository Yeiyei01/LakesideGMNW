jobm = createMarker ( 200.626953125, -202.853515625, 0.578125, "cylinder", 1.5, 255, 0, 0, 170 )
myBlip = createBlipAttachedTo ( jobm, 42 )

give_skin = 155 -- ????, ??????? ???????? ??????
function enter (element)
	if getElementType ( element ) == "player" then
			triggerClientEvent ( element, "openinf_kop", element)
	end
end
addEventHandler( "onMarkerHit", jobm, enter )
addEvent ( "picku_kop", true )

function create ()
        local jobvehicle = createVehicle ( 448, 193.9306640625, -205.083984375, 1.578125, 0, 0, 90 )
   setElementData(jobvehicle, "fuel", exports.vehicle_fuel:getMaxFuel(jobvehicle))
   setElementData(jobvehicle, "battery", 100)
   setElementData(jobvehicle, "engineCrash", 0)
   setElementData(jobvehicle, "owner", -1)
   setElementData(jobvehicle, "faction", -1)
   setElementData(jobvehicle, "engine", 0)
   setElementData(jobvehicle, "job", 0)
   warpPedIntoVehicle(player,jobvehicle)
	setElementData ( source, "working_veh", jobvehicle )
	setElementModel ( source, give_skin)
end
addEventHandler ( "picku_kop", root, create )

addEvent ( "finitoWork_kop", true )

function finitoWorkS ()
	local veh = getElementData ( source, "working_veh" )
	if isElement ( veh ) then
		destroyElement ( veh )
		setElementData ( source, "working_veh", false )
	end
end
addEventHandler ( "finitoWork_kop", root, finitoWorkS )

addEvent ( "giveMoneyFromClient_kop", true )

function giveMoneyFromClientS (amount)
    exports.global:giveMoney ( source, amount )
end
addEventHandler ( "giveMoneyFromClient_kop", root, giveMoneyFromClientS )












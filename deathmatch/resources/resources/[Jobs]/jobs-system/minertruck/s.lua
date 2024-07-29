jobm = createMarker ( 816.7,856.7,11.8, "cylinder", 1.7, 255, 255, 255, 80 )
myBlip = createBlipAttachedTo ( jobm, 11 )

function enter (element)
    if getElementType ( element ) == "player" then
            triggerClientEvent ( element, "openinf_minertruck", element)
    end
end
addEventHandler( "onMarkerHit", jobm, enter )
addEvent ( "picku_minertruck", true )

function create ()
   local jobvehicle = createVehicle ( 433, 835.11, 868.4, 13.9, 0, 0, 70 )

   setElementData(jobvehicle, "fuel", exports.vehicle_fuel:getMaxFuel(jobvehicle))
   setElementData(jobvehicle, "battery", 100)
   setElementData(jobvehicle, "engineCrash", 0)
   setElementData(jobvehicle, "owner", -1)
   setElementData(jobvehicle, "faction", -1)
   setElementData(jobvehicle, "engine", 0)
   setElementData(jobvehicle, "job", 0)

    setElementData ( source, "working_veh", jobvehicle )
end
addEventHandler ( "picku_minertruck", root, create )

addEvent ( "finitoWork_minertruck", true )

function finitoWorkS ()
    local veh = getElementData ( source, "working_veh" )
    if isElement ( veh ) then
        destroyElement ( veh )
        setElementData ( source, "working_veh", false )
    end
end
addEventHandler ( "finitoWork_minertruck", root, finitoWorkS )

addEvent ( "giveMoneyFromClient_minertruck", true )

function giveMoneyFromClientS (amount)
    exports.global:giveMoney ( source, amount )
end
addEventHandler ( "giveMoneyFromClient_minertruck", root, giveMoneyFromClientS )












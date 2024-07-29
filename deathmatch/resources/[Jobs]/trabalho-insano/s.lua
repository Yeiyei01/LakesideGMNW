Minicio = createMarker (2072.5034179688,-2353.3916015625,13.546875 -1, "cylinder", 2, 255 ,0 ,0, 255)
Mfim = createMarker ( 285.87121582031,2512.4975585938,16.567548751831 -1, "cylinder", 2, 0 ,255 ,0, 255)

Bfim = createBlipAttachedTo ( Mfim, 19 )
setElementVisibleTo ( Bfim, root, false )
createBlip (2072.5034179688,-2353.3916015625,13.546875,42)

veh = {}
function incio (source)
if isElementWithinMarker(source, Minicio) then
if veh[source] and isElement( veh[source] ) then destroyElement ( veh[source] )
veh[source] = nil
end
x,y,z = getElementPosition(source)
Trabalho = true
veh[source] = createVehicle(460,2053.1120605469,-2490.69921875,13.546875)
   setElementData(veh[source], "fuel", exports.vehicle_fuel:getMaxFuel(veh[source]))
   setElementData(veh[source], "battery", 100)
   setElementData(veh[source], "engineCrash", 0)
   setElementData(veh[source], "owner", -1)
   setElementData(veh[source], "faction", -1)
   setElementData(veh[source], "engine", 0)
   setElementData(veh[source], "job", 0)
setElementVisibleTo ( Bfim, source, true )
warpPedIntoVehicle ( source, veh[source] )
 outputChatBox ("#000000======================================================",source,0,0,0,true )
 outputChatBox ("#ff0000¡Lleve el avión al punto de entrega antes de que los del departamento del sheriff te detengan!",source,0,0,0,true )
 outputChatBox ("#000000======================================================",source,0,0,0,true )
end
end
addEventHandler( "onMarkerHit", Minicio, incio ) 

function fim (source)
if veh[source] and isElement(veh[source]) then
destroyElement (veh[source])
exports.global:giveMoney(source,500)
setElementVisibleTo ( Bfim, source, false )
outputChatBox("#ff0000Enhorabuena, has completado la ruta.Tenga su pago.",source,0,0,0,true)
else
end
end
addEventHandler("onMarkerHit",Mfim ,fim)

function sair (source)
if (veh[source]) and isElement(veh[source]) then
setElementVisibleTo ( Bfim, source, false )
destroyElement (veh[source])
outputChatBox("#ff0000Has perdido tu trabajo.", source ,0,0,0,true)
else
end
end
addEventHandler ( "onVehicleExit", getRootElement(), sair )
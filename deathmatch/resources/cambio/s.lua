addEvent( "warpPed", true )
addEventHandler( "warpPed", resourceRoot, function(thePlayer, veh, slot)

    warpPedIntoVehicle(thePlayer, veh, slot)

end)
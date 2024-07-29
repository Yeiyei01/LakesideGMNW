local theBoat = {}

addEvent("createRentBoat", true)
addEventHandler("createRentBoat", getRootElement(),
	function(hitElement)
		theBoat[hitElement] = createVehicle(481, 328.994140625, -57.8212890625, 1.5288543701172, 0, 0, 182)
		setVehicleColor(theBoat[hitElement], 0, 0, 0)
		setElementData(theBoat[hitElement], "veh.fuelData", 20)
		setElementData(theBoat[hitElement], "veh.engineCrash", 0)
		setElementData(theBoat[hitElement], "veh.owner", -1)
		fixVehicle(theBoat[hitElement])
		setVehicleDamageProof(theBoat[hitElement], false)
		warpPedIntoVehicle(hitElement, theBoat[hitElement])
		setElementData(theBoat[hitElement], "rentBoat", true)
	end
)

addEvent("destroyRentBoat", true)
addEventHandler("destroyRentBoat", root,
	function()
		if isElement(theBoat[source]) then
			destroyElement(theBoat[source])
		end
	end
)
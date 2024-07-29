local timers = {}
local rentals = {
	{1769.365234,-1704.427490,13.504773, 0},
	{1930.48010, -1782.81750, 13.54688, 90},
	{1831.06519, -1847.83667, 13.57812, 90},
--	{-2324.88159, -1594.77588, 483.7769, 0},
}

local handling = {
	['mass'] = 350,
	['turnMass'] = 50,
	['dragCoeff'] = 7,
	['centerOfMass'] = {[1] = 0, [2] = 0, [3] = 0},
	['percentSubmerged'] = 103,
	['tractionMultiplier'] = 1.8,
	['tractionLoss'] = 1,
	['tractionBias'] = 0.5,
	['numberOfGears'] = 1,
	['maxVelocity'] = 70,
	['engineAcceleration'] = 60,
	['engineInertia'] = 5,
	['driveType'] = 'awd',
	['engineType'] = 'electric',
	['brakeDeceleration'] = 20,
	['brakeBias'] = 0,
	['steeringLock'] = 50,
	['suspensionForceLevel'] = 1,
	['suspensionDamping'] = 0.15,
	['suspensionHighSpeedDamping'] = 0,
	['suspensionUpperLimit'] = 0.12,
	['suspensionLowerLimit'] = -0.17,
	['suspensionFrontRearBias'] = 0.15,
	['suspensionAntiDiveMultiplier'] = 0,
	['collisionDamageMultiplier'] = 0,
	['headLight'] = 'small',
	['tailLight'] = 'small',
	['animGroup'] = 5,
	['modelFlags'] = 0x1001100,
	['handlingFlags'] = 0x1000001,
}

for property, value in pairs(handling) do
	setModelHandling(448, property, value)
end

function getPositionFromElementOffset(element,offX,offY,offZ)
    local m = getElementMatrix ( element )  -- Get the matrix
    local x = offX * m[1][1] + offY * m[2][1] + offZ * m[3][1] + m[4][1]  -- Apply transform
    local y = offX * m[1][2] + offY * m[2][2] + offZ * m[3][2] + m[4][2]
    local z = offX * m[1][3] + offY * m[2][3] + offZ * m[3][3] + m[4][3]
    return x, y, z                               -- Return the transformed point
end

for k,v in pairs(rentals) do
	createObject(1874, v[1], v[2], v[3]-1, 0, 0, v[4])
	local colShape = createColSphere(v[1], v[2], v[3], 2)
	local blip = createBlipAttachedTo(colShape, 48, 2, 255, 255, 255, 255, 0, 100)
	setElementData(colShape, 'scooter:rental', true)
end

function payForRent(player)
	local isNew = (getElementData(player, 'player:hours') or 0) < 120
	if isNew then return end

	local rented = getElementData(player, 'scooter:rented')
	if exports.global:getMoney(player) < 4000 and getElementType(rented) == 'vehicle' then
		exports['borsuk-notyfikacje']:addNotification(player, 'error', 'Scooter Eletrica', 'no tienes suficiente dinero.')
		foldVehicle(player, rented)
		return
	end

	exports.global:takeMoney(player, 4000)
	remindAboutScooter(player)
end

function remindAboutScooter(player)
	local rented = getElementData(player, 'scooter:rented')
	if getElementType(rented) == 'vehicle' and getPedOccupiedVehicle(player) ~= rented then
		exports['borsuk-notyfikacje']:addNotification(player, 'warning', 'Scooter Eletrica', 'El patinete eléctrico no fue devuelto.')
	end
end

addEvent('scooter:rent', true)
addEventHandler('scooter:rent', resourceRoot, function()
	local rented = getElementData(client, 'scooter:rented')

	if rented then
		if getElementType(rented) ~= 'object' then
			exports['borsuk-notyfikacje']:addNotification(client, 'error', 'Scooter Eletrica', 'Para devolver a scooter, a scooter deve ser dobrada.')
			return
		end

		destroyElement(rented)
		setElementData(client, 'scooter:rented', false)
		exports['borsuk-notyfikacje']:addNotification(client, 'success', 'Scooter Eletrica', 'El patinete eléctrico ha sido devuelto.')
		setElementData(client, 'player:animation', false)
		if timers[client] and isTimer(timers[client]) then
			killTimer(timers[client])
		end
	else
		local isNew = (getElementData(client, 'player:hours') or 0) < 120
		if exports.global:getMoney(client) < 4000 and not isNew then
			exports['borsuk-notyfikacje']:addNotification(client, 'error', 'Scooter Eletrica', 'No tienes suficiente dinero.')
			return
		end

		local vehicle = createObject(1867, 0, 0, 0)
		exports['borsuk-pattach']:attach(vehicle, client, 23, 0, 0, 0, 20, 0, 50)
		setElementData(client, 'scooter:rented', vehicle)
		setElementData(vehicle, 'scooter:rented:time', getTickCount())
		setElementData(client, 'player:animation', 'scooter-carry')
		exports['borsuk-notyfikacje']:addNotification(client, 'success', 'Scooter Eletrica', 'Patinete Eléctrico Has alquilado, pulsa H para colocar el patinete.')
		timers[client] = setTimer(payForRent, 60000, 0, client)
	end
end)

function foldVehicle(client, rented)
	local time = getElementData(rented, 'scooter:rented:time')
	destroyElement(rented)
	rented = createObject(1867, 0, 0, 0)
	exports['borsuk-pattach']:attach(rented, client, 23, 0, 0, 0, 20, 0, 50)
	setElementData(client, 'scooter:rented', rented)
	setElementData(client, 'player:animation', 'scooter-carry')
	setElementData(rented, 'scooter:rented:time', time)
end

addEvent('scooter:fold', true)
addEventHandler('scooter:fold', resourceRoot, function()
	local rented = getElementData(client, 'scooter:rented')
	if not rented then return end

	local time = getElementData(rented, 'scooter:rented:time')
	if getElementType(rented) == 'object' then
		local isNew = (getElementData(client, 'player:hours') or 0) < 120
		if exports.global:getMoney(client) < 4000 and not isNew then
			exports['borsuk-notyfikacje']:addNotification(client, 'error', 'Scooter Eletrica', 'No tienes suficiente dinero, las ruedas del scooter están atascadas.')
			return
		end

		destroyElement(rented)
		local x, y, z = getElementPosition(client)
		local rx, ry, rz = getElementRotation(client)
		rented = createVehicle(448, x, y, z, rx, ry, rz)
		setVehicleColor(rented, 0, 0, 0, 0, 0, 0)
		warpPedIntoVehicle(client, rented)
		setElementData(client, 'scooter:rented', rented)
		setElementData(client, 'player:animation', false)
		setElementData(rented, 'scooter:owner', client)
		setElementData(rented, 'scooter:rented:time', time)

		exports['borsuk-notyfikacje']:addNotification(client, 'success', 'Scooter Eletrica', 'Para dobrar a scooter, saia da scooter e pressione a tecla H.')
	else
		foldVehicle(client, rented)
	end
end)

addEvent('scooter:fetchTickCount', true)
addEventHandler('scooter:fetchTickCount', resourceRoot, function()
	triggerClientEvent(client, 'scooter:fetchTickCount', resourceRoot, getTickCount())
end)

addEventHandler('onPlayerQuit', root, function()
	local rented = getElementData(source, 'scooter:rented')
	if rented then
		destroyElement(rented)
	end
	if timers[source] and isTimer(timers[source]) then
		killTimer(timers[source])
	end
end)
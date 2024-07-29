local routes = {}

function startRoute()
	if getPlayerRoute(source) then endRoutePlayer(source) return end
	local p = vehicleSpawnPos
	local veh = createVehicle(vehWalk[math.random(1,#vehWalk)],p[1],p[2],p[3], 0, 0, 270)

        setElementData(veh, "fuel", exports.vehicle_fuel:getMaxFuel(veh))
        setElementData(veh, "battery", 100)
        setElementData(veh, "engineCrash", 0)
        setElementData(veh, "owner", -1)
        setElementData(veh, "faction", -1)
        setElementData(veh, "engine", 0)
        setElementData(veh, "job", 0)
        setElementData(veh, "vehicle:Work", true)
        setElementData(veh, "vehicle:Work:Owner", source)
	
	warpPedIntoVehicle(source,veh)
	setVehicleColor(veh,200,200,200)
	table.insert(routes,{source,veh})
    outputChatBox("Has empezado a trabajar. Dirígete al coche.",source,255,255,255,true)
	setElementData(source,"routeVehicle",veh)
	triggerClientEvent(source,"createVehicleMarker",source)
end
addEvent("startRoute",true)
addEventHandler("startRoute",root,startRoute)

function enterVehicle ( player )
    local data = getElementData(source, "vehicle:Work")
	if not data then return end
	
	local owner = getElementData(source, "vehicle:Work:Owner")
	if owner ~= player then
	    cancelEvent()
        outputChatBox("Este no es su transporte.",player,255,255,255,true)
	end
end
addEventHandler ( "onVehicleStartEnter", getRootElement(), enterVehicle )

function pickupVehicle(vid)
	local vdata = cargoVehicles[vid]
	local offsets = {0,0,0}
	local pveh = getPedOccupiedVehicle( source )
	if getElementModel(pveh) == vehWalk[1] then
		offsets = {vdata[2][1],vdata[2][2],vdata[2][3]}
	end
	local veh = createVehicle(vdata[1],0,0,0)
        setElementData(veh, "fuel", exports.vehicle_fuel:getMaxFuel(veh))
        setElementData(veh, "battery", 100)
        setElementData(veh, "engineCrash", 0)
        setElementData(veh, "owner", -1)
        setElementData(veh, "faction", -1)
        setElementData(veh, "engine", 0)
        setElementData(veh, "job", 0)
        setElementData(veh, "vehicle:Work", true)
        setElementData(veh, "vehicle:Work:Owner", source)
	setElementCollisionsEnabled( veh, false )
	setVehicleDamageProof(veh,true)
	setVehicleLocked(veh,true)
	attachElements(veh,pveh,offsets[1],offsets[2],offsets[3])
    outputChatBox("El vehículo está cargado. Llévalo al punto de descarga.",source,255,255,255,true)
	triggerClientEvent(source,"createCargoMarker",source)
end
addEvent("pickupVehicle",true)
addEventHandler("pickupVehicle",root,pickupVehicle)

function endRoute(lp)
	local r, key = getPlayerRoute(source)
	for k,v in pairs(getAttachedElements( r[2] )) do
		destroyElement(v)
	end
    triggerClientEvent(source,"createVehicleMarker",source)
end
addEvent("endRoute",true)
addEventHandler("endRoute",root,endRoute)

function endRoutePlayer(ply)
	local r, key = getPlayerRoute(ply)
	for k,v in pairs(getAttachedElements( r[2] )) do
		destroyElement(v)
	end
	destroyElement(r[2])
    outputChatBox("Has completado tu trabajo.",ply,255,255,255,true)
	table.remove(routes,key)
	removeElementData(ply,"routeVehicle")
	triggerClientEvent(ply,"destroyClientElements",ply)
    
    local moneyWalk = getElementData(ply,"Эвакуатор_Прибавление")
    if not moneyWalk then moneyWalk = 0 end
    
    setElementData(ply,"Эвакуатор_Прибавление",nil)
    setElementData(ply,"Эвакуатор_Зарплата",nil)
    exports.global:giveMoney(ply, moneyWalk)
    
    outputChatBox("Usted ha ganado "..moneyWalk.."$",source,255,255,255,true)
end

function breakRoute(id)
	if isElement(routes[id][1]) then
        outputChatBox("Has suspendido la tarea.",routes[id][1],255,255,255,true)
		triggerClientEvent(routes[id][1],"destroyClientElements",routes[id][1])
	end
    for k,v in pairs(getAttachedElements( routes[id][2] )) do
		destroyElement(v)
	end
    if isElement(routes[id][2]) then
        destroyElement(routes[id][2])
    end
	table.remove(routes,id)
end

function checkRoutes()
	for k,v in pairs(routes) do
		if not isElement(v[1]) or not isElement(v[2]) or getVehicleController(v[2]) ~= v[1] then
			breakRoute(k) 
		end
	end
end
setTimer(checkRoutes,60000,0)

function getPlayerRoute(ply)
	for k,v in pairs(routes) do
		if v[1] == ply then
			return v, k
		end
	end
end

function initCargoWindow()
	if getPlayerRoute(source) then
		triggerClientEvent(source,"initCargoWindow",source,true)
	else
		triggerClientEvent(source,"initCargoWindow",source,false)
	end
end
addEvent("initCargoWindow",true)
addEventHandler("initCargoWindow",root,initCargoWindow)

local obj1 = createObject(968, 1070.8000488281, 1358.3000488281, 10.699999809265, 0, 269, 0)

local marker_1 = createMarker(611.7080078125, 1659.7265625, 6.9921875, "cylinder", 8, 255, 255, 255, 0)

addEventHandler ("onMarkerHit", root, function (hitElement)
    if source == marker_1 and not isTimer (ob1) then
        if getElementType (hitElement) == "player" and isPedInVehicle (hitElement) then
            local sourceVehicle = getPedOccupiedVehicle (hitElement)
            setElementVelocity (sourceVehicle, 0, 0, 0)
            moveObject (obj1, 1000, 1070.8000488281, 1358.3000488281, 10.699999809265, 0, 90, 0)
            setTimer (moveObject, 3500, 1, obj1, 1000, 1070.8000488281, 1358.3000488281, 10.699999809265, 0, -90, 0)
            ob1 = setTimer (function () end, 5000, 1)
        return
        end
    end
end)

function walkHand()
    for _,v in pairs(getElementsByType("vehicle")) do
        if getElementModel(v) == 433 then
            setVehicleHandling (v, "mass", 1500.0) --Масса
            setVehicleHandling(v, "turnMass", 3400) --Ходовая масса
            setVehicleHandling(v, "dragCoeff", 2.0 ) --Перемещение множителя
            setVehicleHandling(v, "centerOfMass", { 0.0,0.0,-0.0 } ) --Центральная масса
            setVehicleHandling(v, "percentSubmerged", 70) --Процент прогрузки
            setVehicleHandling(v, "tractionMultiplier", 0.7) --Множитель сцепления
            setVehicleHandling(v, "tractionLoss", 0.8) --Убыток сцепления
            setVehicleHandling(v, "tractionBias", 0.5) --Смещение сцепления 
            setVehicleHandling(v, "numberOfGears", 5) --Число передач (коробка передач)
            setVehicleHandling(v, "maxVelocity", 119.0) --Максимальная скорость
            setVehicleHandling(v, "engineAcceleration", 9.2) --Ускорение
            setVehicleHandling(v, "engineInertia", 5.0) --Инерция
            setVehicleHandling(v, "driveType", "awd")--(rwd)задний привод, (fwd)передний привод, (awd)полный привод
            setVehicleHandling(v, "engineType", "petrol") -- (petrol)бензин, (diesel)дизель, (electric)электира
            setVehicleHandling(v, "brakeDeceleration", 8.0) --тормоз
            setVehicleHandling(v, "brakeBias", 0.5) --смещение тормоза
            -----abs----
            setVehicleHandling(v, "steeringLock",  35.0 ) -- Выворот руля
            setVehicleHandling(v, "suspensionForceLevel", 1.0) --уровень усиленного зависания
            setVehicleHandling(v, "suspensionDamping", 0.19 ) --зависание торможением
            setVehicleHandling(v, "suspensionHighSpeedDamping", 0.0) --Зависание на высокой скорости
            setVehicleHandling(v, "suspensionUpperLimit", 0.34 ) --зависание предельного лимита
            setVehicleHandling(v, "suspensionLowerLimit", -0.15) --Высота подвески
            setVehicleHandling(v, "suspensionFrontRearBias", 0.5 ) --Пропорциональность подвески
            setVehicleHandling(v, "suspensionAntiDiveMultiplier", 0.4)--Резкость старта авто
            setVehicleHandling(v, "collisionDamageMultiplier", 0.6) -- Урон 
        end
    end
end
addEventHandler("onPlayerVehicleEnter", getRootElement(), walkHand)
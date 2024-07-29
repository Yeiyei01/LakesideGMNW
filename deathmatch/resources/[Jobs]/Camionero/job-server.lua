
createBlip ( 2821.25488, 913.54309, 9.75000, 51, 2, 255, 0, 0, 255, 0, 1000)

local routesCount = 22

local cargoTable = {}
for i = 1, routesCount do
	cargoTable[i] = math.random(0, 55000)
end

function sendCargoTable(player)
	triggerClientEvent(player, "catchCargoList", resourceRoot, cargoTable)
end
addEvent("getCargoList", true)
addEventHandler("getCargoList", resourceRoot, sendCargoTable)

local vehicles = {}
local jobNomer = {}

function startTruckJob(vehicle_id, routeID, cargo)
	if ( isElement ( vehicles[client] ) ) then
		removeVeh(client)
	end
	local rand = math.random(100)%2
	if rand == 0 then
		vehicles[client] = createVehicle ( vehicle_id, 2804.61792, 958.13171, 11.69443,0,0,180)
	else
		vehicles[client] = createVehicle ( vehicle_id, 2825.2, 958.97, 11.69443,0,0,180)
	end
	--if isResourceRunning("car_benzin") then
		--exports.car_benzin:setRandomFuelAndOdometer(vehicles[client], vehicle_id)
	--end
   setElementData(vehicles[client], "fuel", exports.vehicle_fuel:getMaxFuel(vehicles[client]))
   setElementData(vehicles[client], "battery", 100)
   setElementData(vehicles[client], "engineCrash", 0)
   setElementData(vehicles[client], "owner", -1)
   setElementData(vehicles[client], "faction", -1)
   setElementData(vehicles[client], "engine", 0)
   setElementData(vehicles[client], "job", 0) 
	setElementData ( vehicles[client], "JobVeh", true )
	jobNomer[client] = GenerateString(10)
	setElementData(vehicles[client], "job_truck.unique", jobNomer[client])
	setElementData(vehicles[client], "job.nomer", exports.car_system:generateNumberplate())
	setTimer(warpPedIntoVehicle, 250, 1, client, vehicles[client])
	
	cargoTable[routeID] = cargoTable[routeID] - cargo
	local ok, maxID, maxCnt = false, 1, 0
	for i, cargoCnt in ipairs(cargoTable) do
		if cargoCnt > 10000 then
			ok = true
			break
		end
		if cargoCnt > maxCnt then
			maxCnt = cargoCnt
			maxID = i
		end
	end
	if not ok then
		cargoTable[maxID] = math.random(10000, 15000)
	end
	triggerClientEvent("catchCargoList", resourceRoot, cargoTable)
end
addEvent("startTruckJob", true) 
addEventHandler("startTruckJob", resourceRoot, startTruckJob)

function removeVeh(thePlayer)
	if isElement(vehicles[thePlayer]) then 
		destroyElement(vehicles[thePlayer]) 
	end
end

function finish(cargo, money)
	if jobNomer[client] ~= getElementData(getPedOccupiedVehicle(client), "job_truck.unique") then
		outputDebugString ("[TRANSPORTER][TRUCK] "..getPlayerName(client).." (acc "..getAccountName(getPlayerAccount(client))..", money "..getPlayerMoney(client)..") entered a marker on a wrong car")
		return
	end
	removeVeh(client)
	triggerClientEvent (client, "removeMarkers", resourceRoot)
	exports.global:giveMoney ( client, money )
	outputChatBox("Has completado con éxito el transporte transportando #ffffff"..cargo.." kg de carga#00ff00 y has ganado #ffffff"..money.."$", client, 0, 255, 0, true )
	--exports.budget:takeBudget("job_truck", client, money, "finished job")
	--outputDebugString ("[TRANSPORTER][TRUCK] "..getPlayerName(client).." (acc "..getAccountName(getPlayerAccount(client))..", money "..getPlayerMoney(client)..") got "..tostring(money).." for truck job (moved "..cargo.." cargo)")
	local cargoCount = 0
	while cargoCount < cargo do
		local randomCount = math.random(500,3000)
		local tableID = math.random(#cargoTable)
		cargoCount = cargoCount + randomCount
		cargoTable[tableID] = cargoTable[tableID] + randomCount
    end
	triggerClientEvent("catchCargoList", resourceRoot, cargoTable)
end
addEvent("finishTruckJob", true) 
addEventHandler("finishTruckJob", resourceRoot, finish)

function balanceCargo()
	local count = 0
	for _, cargo in ipairs(cargoTable) do
		count = count + cargo
	end
	if count < 100000 then
		local difference = 100000 - count
		local addCount = 0
		while addCount < difference do
			local randomCount = math.random(0,5000)
			local tableID = math.random(#cargoTable)
			addCount = addCount + randomCount
			cargoTable[tableID] = cargoTable[tableID] + randomCount
		end
	elseif count > 200000 then
		local difference = count - 200000
		local removeCount = 0
		while removeCount < difference do
			local randomCount = math.random(0,5000)
			local tableID = math.random(#cargoTable)
			removeCount = removeCount + randomCount
			cargoTable[tableID] = cargoTable[tableID] - randomCount
		end
	end
	for _, cargo in ipairs(cargoTable) do
		if cargo < 0 then
			cargo = 0
		elseif cargo > 15000 then
			cargo = 15000
		end			
	end
	triggerClientEvent("catchCargoList", resourceRoot, cargoTable)
end
setTimer(balanceCargo, 300000, 0)

function destroy ( )
    if eventName == "onResourceStop" then
        for _, thePlayer in ipairs ( getElementsByType ( "player" ) ) do
           removeVeh(thePlayer)
        end
    else
        removeVeh( source )
    end
end
addEventHandler ( "onResourceStop", resourceRoot, destroy )
addEventHandler ( "onPlayerWasted", root, destroy )
addEventHandler ( "onPlayerQuit", root, destroy )


function GenerateString ( len )
	local allowed = { { 48, 57 }, { 65, 90 }, { 97, 122 } } -- numbers/lowercase chars/uppercase chars 
    if tonumber ( len ) then
        math.randomseed ( getTickCount () )
        local str = ""
        for i = 1, len do
            local charlist = allowed[math.random ( 1, 3 )]
            str = str .. string.char ( math.random ( charlist[1], charlist[2] ) )
        end
        return str
    end
    return false
end

-- ==========     Очистка памяти от мусора     ==========
function clearMemory()		
	local oldGarbage = math.floor(collectgarbage("count"))
	collectgarbage()
	outputDebugString("job_truck collected "..oldGarbage-math.floor(collectgarbage("count")).." of "..oldGarbage.."KB")
end
setTimer(clearMemory, 1800000, 0)


--	==========     Проверка, что ресурс запущен     ==========
--function isResourceRunning(resName)
	--local res = getResourceFromName(resName)
	--return (res) and (getResourceState(res) == "running")
--end

---
parkgate1 = createObject( 968, 2777.123, 905.84, 10.666, 0, 90, 90 )
parkgate2 = createObject( 968, 2777.127, 920.71, 10.62, 0, -90, 90 )
parkmarker = createMarker(2777, 912.994, 7.75, "cylinder", 13, 255, 0, 0, 0 )

local isMoving = false
function gatefunc( hitPlayer )
    if isMoving == false then
        isMoving = true
        moveObject ( parkgate1, 2000,  2777.123, 905.84, 10.666, 0, -90, 0, "OutBack")
		moveObject ( parkgate2, 2000,  2777.127, 920.71, 10.62, 0, 90, 0, "OutBack")
        setTimer( gatefuncclose, 5000, 1)
    end
end
addEventHandler( "onMarkerHit", parkmarker, gatefunc )

function gatefuncclose( )
    moveObject ( parkgate1, 2000, 2777.123, 905.84, 10.666, 0, 90, 0, "OutBounce")
	moveObject ( parkgate2, 2000,  2777.127, 920.71, 10.62, 0, -90, 0, "OutBounce")
    setTimer ( function()
        isMoving = false
    end, 2000, 1 )
end
local jobPos = {
	--{"SF, больница", 			"Медикаменты", 			 1.0431, -2665.13135, 625.13867, 14.4531320000}, 
	--{"SF, автосалон", 			"Автозапчасти",			 0.9234, 	-1918, 302, 40.5}, 
	--{"SF, аэропорт", 			"Топливо", 				 1.0901, -1367.79016, -488.79987, 14.17188}, 
	--{"SF, гора Окару", 			"Продукты",				 3.4200, -4235.705078125, 631.95294189453, 619.58013916016}, 
	--{"SF, гора Окару", 			"Бензин", 				 2.4154, -3481.9299316406, 1143.4152832031, 336.09271240234}, 
	--{"SF, Clucking Bell", 		"Куриные крылышки",		 1.0474, -2690.5676269531, 235.23791503906, 4.3359375}, 
	--{"SF, Pay’n’Spray", 		"Автозапчасти",			 1.0859, -2437.5009765625, 1034.5103759766, 50.390625}, 

	{"LV, аэропорт", 			"Топливо", 				 0.2950, 	 1663.88989, 1631.08630, 10.82031}, 
	{"LV, заброшенный аэропорт","Радиоактивные отходы",	 0.6028, 	  426.59503173828, 2524.8232421875, 16.102844238281}, 
	{"LV, карьер", 				"Динамит", 				 0.4190, 	  579.54431152344, 860.25274658203, -43.41278839111}, 
	{"LV, арена для дерби", 	"Автозапчасти",			 0.3377, 	 1088.1605224609, 1450.5040283203, 5.4198279380798}, 
	{"LV, Ammunation", 			"Оружие", 				 0.9234, 	-1508.9306640625, 2635.2299804688, 55.8359375}, 
	{"LV, АЗС", 				"Топливо", 				 0.4318, 	 1610.6682128906, 2234.5583496094, 0.8203125}, 
	{"LV, хим. завод", 			"Реактивы",		   		 0.3420, 	 2523.8444824219, 2819.25, 10.8203125}, 

	{"LS, гора Monument Hill", 	"Продукты", 			 1.6502,  	3454, -1196, 157}, 
	{"LS, аэропорт", 			"Топливо", 				 0.8037, 	2012.68701, -2188.51440, 13.54688}, 
	{"LS, больница", 			"Медикаменты", 			 0.5985, 	2003.87732, -1415.97266, 16.99219}, 
	{"LS, киностудия", 			"Съёмочное оборудование",0.5857, 	  877.32360839844, -1242.5989990234, 15.57996749877}, 
	{"LS, доки", 				"Инструменты", 			 0.7139, 	 2786.7102050781, -2417.2399902344, 13.633926391602}, 
	{"LS, товарный склад", 		"Контрафакт", 			 0.4660, 	 1903.9304199219, -1033.7934570313, 23.981115341187}, 
	{"LS, TransFender", 		"Тюнинг-части", 		 0.5515, 	 1039.4304199219, -1032.2080078125, 31.998987197876}, 
	{"LS, обсерватория", 		"Спирт для оптики",		 0.7738, 	 1244.6579589844, -2043.3958740234, 59.522274017334}
	-- При изменении количества маршрутов не забыть обновить количество маршрутов в серверном скрипте
}
local vehicle = {
	{"Mitsubishi Fuso Canter", 414, 2000, 3}, 
	{"Scania R620", 515, 12000, 1}, 
	{"КамАЗ 53215", 403, 10000, 1}
}
local vehicleJob = { [515]=true, [414]=true, [403]=true }

addEventHandler ( "onClientResourceStart", resourceRoot, 
	function()
		startMarker = createMarker( 2806.763672, 896.928711, 9.757797, 'Cylinder', 2, 153, 255, 51, 50  )
		local jobPed = createPed ( 202, 2806.764648, 895.03125, 10.848438 )
		setElementFrozen ( jobPed, true )
		addEventHandler ( "onClientPedDamage", jobPed, cancelEvent)
	end
)

local GUI = {
    button = {},
    window = {},
    gridlist = {}
}
addEventHandler("onClientResourceStart", resourceRoot,
    function()
		local screenW, screenH = guiGetScreenSize()
        GUI.window.routes = guiCreateWindow((screenW - 475) / 2, (screenH - 400) / 2, 475, 400, "Выбор маршрута", false)
        guiWindowSetSizable(GUI.window.routes, false)

        GUI.gridlist.routes = guiCreateGridList(10, 25, 455, 320, false, GUI.window.routes)
        guiGridListAddColumn(GUI.gridlist.routes, "Itinerario", 0.38)
        guiGridListAddColumn(GUI.gridlist.routes, "Carga", 0.34)
        guiGridListAddColumn(GUI.gridlist.routes, "Peso Carga KG", 0.2)
        GUI.button.chooseRoute = guiCreateButton(10, 355, 120, 35, "Seleccionar", false, GUI.window.routes)
        guiSetFont(GUI.button.chooseRoute, "default-bold-small")
        GUI.button.closeRoute = guiCreateButton(345, 355, 120, 35, "Cancelar", false, GUI.window.routes)
        guiSetFont(GUI.button.closeRoute, "default-bold-small")

        GUI.window.trucks = guiCreateWindow((screenW - 420) / 2, (screenH - 180) / 2, 420, 180, "Elección Transporte", false)
        guiWindowSetSizable(GUI.window.trucks, false)

        GUI.gridlist.trucks = guiCreateGridList(10, 25, 400, 100, false, GUI.window.trucks)
        guiGridListAddColumn(GUI.gridlist.trucks, "Transporte", 0.37)
        guiGridListAddColumn(GUI.gridlist.trucks, "Capacidad", 0.22)
        guiGridListAddColumn(GUI.gridlist.trucks, "Para ser transportado", 0.22)
        guiGridListAddColumn(GUI.gridlist.trucks, "Pago", 0.15)
        GUI.button.chooseTruck = guiCreateButton(10, 135, 120, 35, "Seleccionar", false, GUI.window.trucks)
        guiSetFont(GUI.button.chooseTruck, "default-bold-small")
        GUI.button.closeTruck = guiCreateButton(290, 135, 120, 35, "Cancelar", false, GUI.window.trucks)
        guiSetFont(GUI.button.closeTruck, "default-bold-small")    
		
		guiSetVisible(GUI.window.routes, false)
		guiSetVisible(GUI.window.trucks, false)
		for i, route in ipairs(jobPos) do
			local row = guiGridListAddRow(GUI.gridlist.routes)
			guiGridListSetItemText(GUI.gridlist.routes, row, 1, route[1], false, false)
			guiGridListSetItemText(GUI.gridlist.routes, row, 2, route[2], false, false)
			guiGridListSetItemText(GUI.gridlist.routes, row, 3, "0", false, true)
			guiGridListSetItemData(GUI.gridlist.routes, row, 1, i)
		end
		for i, truck in ipairs(vehicle) do
			local row = guiGridListAddRow(GUI.gridlist.trucks)
			guiGridListSetItemText(GUI.gridlist.trucks, row, 1, truck[1], false, false)
			guiGridListSetItemText(GUI.gridlist.trucks, row, 2, tostring(truck[3]), false, false)
			guiGridListSetItemText(GUI.gridlist.trucks, row, 3, "0", false, true)
			guiGridListSetItemText(GUI.gridlist.trucks, row, 4, "0", false, true)	
			guiGridListSetItemData(GUI.gridlist.trucks, row, 1, i)
			guiGridListSetItemData(GUI.gridlist.trucks, row, 3, truck[4])
		end
    end
)

local actualCargoAmounts = {}
local routeID, routeCargoAmount, money

addEventHandler( "onClientGUIClick", resourceRoot,
	function()
		if (source == GUI.button.closeRoute) or (source == GUI.button.closeTruck) then
			guiSetVisible(GUI.window.routes, false)
			guiSetVisible(GUI.window.trucks, false)
			showCursor(false)
			
		elseif (source == GUI.button.chooseRoute) then
			local row = guiGridListGetSelectedItem(GUI.gridlist.routes)
			if (row) and (row ~= -1) then
				routeID = guiGridListGetItemData(GUI.gridlist.routes, row, 1)
				refreshTruckList()
				guiSetVisible(GUI.window.routes, false)
				guiSetVisible(GUI.window.trucks, true)
			end
			
		elseif (source == GUI.button.chooseTruck) then
			local selected = guiGridListGetSelectedItem(GUI.gridlist.trucks)
			if (not selected) or (selected == -1) then return end
			guiSetVisible(GUI.window.trucks, false)
			showCursor(false)
			if isResourceRunning("car_driving_school") and (not exports.car_driving_school:doesPlayerHaveLic(localPlayer, "truck")) then
				exports.car_driving_school:outputNoLicenseClient("truck")
				return
			end
			if (getElementDimension(localPlayer) ~= 0) or (getElementInterior(localPlayer) ~= 0) then
				return
			end
			local truckID = guiGridListGetItemData(GUI.gridlist.trucks, selected, 1)
			if actualCargoAmounts[routeID] > vehicle[truckID][3] then
				routeCargoAmount = vehicle[truckID][3]
			else
				routeCargoAmount = actualCargoAmounts[routeID]
			end
			money = math.ceil(routeCargoAmount * vehicle[truckID][4] * jobPos[routeID][3])
			triggerServerEvent("startTruckJob", resourceRoot, vehicle[truckID][2], routeID, routeCargoAmount)
			createJobMarker(jobPos[routeID][4], jobPos[routeID][5], jobPos[routeID][6])				
			
		end
	end
)

function catchCargoList(pasTable)
	actualCargoAmounts = pasTable
	refreshRouteList()
	refreshTruckList()
end
addEvent("catchCargoList", true)
addEventHandler("catchCargoList", resourceRoot, catchCargoList)

function refreshRouteList()
	for row = 0, #jobPos-1 do
		local route = guiGridListGetItemData(GUI.gridlist.routes, row, 1)
		guiGridListSetItemText(GUI.gridlist.routes, row, 3, tostring(math.ceil(actualCargoAmounts[route] or "0")), false, true)
	end
end

function refreshTruckList()
	if routeID then
		for row = 0, #vehicle-1 do
			local truckID = guiGridListGetItemData(GUI.gridlist.trucks, row, 1)
			local cargoToTransport
			if actualCargoAmounts[routeID] > vehicle[truckID][3] then
				cargoToTransport = vehicle[truckID][3]
			else
				cargoToTransport = actualCargoAmounts[routeID]
			end
			guiGridListSetItemText(GUI.gridlist.trucks, row, 3, tostring(cargoToTransport) or "0", false, true)
			guiGridListSetItemText(GUI.gridlist.trucks, row, 4, tostring( math.ceil(cargoToTransport * vehicle[truckID][4] * jobPos[routeID][3]) ), false, true)
		end
	end
end

local jobMarker, jobBlip
function createJobMarker(x, y, z)
	RemoveMarker()
	jobMarker = createMarker(x, y, z, "cylinder", 5, 255, 255, 255, 90)
	jobBlip = createBlipAttachedTo (jobMarker, 56, 2, 255, 0, 0, 255, 0, 99999999)
end

function RemoveMarker() 
	if isElement(jobMarker) then destroyElement(jobMarker) end
	if isElement(jobBlip) then destroyElement(jobBlip) end
end
addEvent("removeMarkers", true)
addEventHandler ("removeMarkers", resourceRoot, RemoveMarker)
addEventHandler ( "onClientPlayerWasted", localPlayer, RemoveMarker )

addEventHandler("onClientMarkerHit", resourceRoot,
	function(hitElement)
		if (hitElement ~= localPlayer) then return end
		
		if (source == startMarker) then				
			local _, _, mz = getElementPosition(source)
			local _, _, pz = getElementPosition(hitElement)
			if ((pz - mz) > 5) then return end
			if not isPedInVehicle(hitElement) then
				triggerServerEvent("getCargoList", resourceRoot, localPlayer)
				guiSetVisible(GUI.window.routes, true)
				showCursor(true)
			end
			
		elseif (source == jobMarker) then
			local vehicle = getPedOccupiedVehicle(hitElement)
			if vehicle and getVehicleController(vehicle) == hitElement and vehicleJob[getElementModel(vehicle)] then
				if getElementData ( vehicle, "JobVeh" ) then
					triggerServerEvent("finishTruckJob", resourceRoot, routeCargoAmount, money)
				else
					outputChatBox("Oye, ese es el camión equivocado", 255, 0, 0, true )
				end
			else
				outputChatBox("¿Dónde está tu carga?", 255, 255, 0, true )
			end
		end
	end
)

-- ==========     Проверка, что ресурс запущен     ==========
--function isResourceRunning(resName)
	--local res = getResourceFromName(resName)
	--return (res) and (getResourceState(res) == "running")
--end
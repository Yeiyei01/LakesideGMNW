addEventHandler('onClientResourceStart', resourceRoot, function()     
    local txd = engineLoadTXD('road-assistance/files/kamaz-town.txd',vehWalk[1])
    engineImportTXD(txd,vehWalk[1])
    local dff = engineLoadDFF('road-assistance/files/kamaz-town.dff',vehWalk[1])
    engineReplaceModel(dff,vehWalk[1])
end)

--------------------------------------------[Такси]
local entradaB = createMarker (611.7080078125, 1659.7265625, 6.9921875, "cylinder", 1, 255, 255, 255, 0)

addEventHandler( "onClientRender", root, function (  )
       local x, y, z = getElementPosition( entradaB )
       local Mx, My, Mz = getCameraMatrix(   )
        if ( getDistanceBetweenPoints3D( x, y, z, Mx, My, Mz ) <= 15 ) then
           local WorldPositionX, WorldPositionY = getScreenFromWorldPosition( x, y, z +1, 0.07 )
            if ( WorldPositionX and WorldPositionY ) then
			    dxDrawText("Trabajar Asistente Vial", WorldPositionX - 1, WorldPositionY + 1, WorldPositionX - 1, WorldPositionY + 1, tocolor(0, 0, 0, 255), 2.02, "default-bold", "center", "center", false, false, false, false, false)
			    dxDrawText("Trabajar Asistente Vial", WorldPositionX - 1, WorldPositionY + 1, WorldPositionX - 1, WorldPositionY + 1, tocolor(255, 255, 255, 255), 2.00, "default-bold", "center", "center", false, false, false, false, false)
            end
      end
end 
)
---------------------------------------------

local pickupW = createPickup(startPos[1], startPos[2], startPos[3], 3, 1275, 50)
local blip = createBlipAttachedTo(pickupW,51)
setBlipVisibleDistance(blip, 400)

local cveh = nil
local cmarker = nil
local cblip = nil
local vid = nil
local lp = nil

function getElementMatrix(element)
    local rx, ry, rz = getElementRotation(element, "ZXY")
    rx, ry, rz = math.rad(rx), math.rad(ry), math.rad(rz)
    local matrix = {}
    matrix[1] = {}
    matrix[1][1] = math.cos(rz)*math.cos(ry) - math.sin(rz)*math.sin(rx)*math.sin(ry)
    matrix[1][2] = math.cos(ry)*math.sin(rz) + math.cos(rz)*math.sin(rx)*math.sin(ry)
    matrix[1][3] = -math.cos(rx)*math.sin(ry)
    matrix[1][4] = 1
    
    matrix[2] = {}
    matrix[2][1] = -math.cos(rx)*math.sin(rz)
    matrix[2][2] = math.cos(rz)*math.cos(rx)
    matrix[2][3] = math.sin(rx)
    matrix[2][4] = 1
	
    matrix[3] = {}
    matrix[3][1] = math.cos(rz)*math.sin(ry) + math.cos(ry)*math.sin(rz)*math.sin(rx)
    matrix[3][2] = math.sin(rz)*math.sin(ry) - math.cos(rz)*math.cos(ry)*math.sin(rx)
    matrix[3][3] = math.cos(rx)*math.cos(ry)
    matrix[3][4] = 1
	
    matrix[4] = {}
    matrix[4][1], matrix[4][2], matrix[4][3] = getElementPosition(element)
    matrix[4][4] = 1
	
    return matrix
end

function getPositionFromElementOffset(element,offX,offY,offZ)
    local m = getElementMatrix ( element )  -- Get the matrix
    local x = offX * m[1][1] + offY * m[2][1] + offZ * m[3][1] + m[4][1]  -- Apply transform
    local y = offX * m[1][2] + offY * m[2][2] + offZ * m[3][2] + m[4][2]
    local z = offX * m[1][3] + offY * m[2][3] + offZ * m[3][3] + m[4][3]
    return x, y, z                               -- Return the transformed point
end

function destroyClientElements()
	if isElement(cveh) then destroyElement(cveh) end
	if isElement(cmarker) then destroyElement(cmarker) end
	if isElement(cblip) then destroyElement(cblip) end
end
addEvent("destroyClientElements",true)
addEventHandler("destroyClientElements",root,destroyClientElements)

function createVehicleMarker()
    local player = getLocalPlayer()
	destroyClientElements()
	vid = math.random(1,#cargoVehicles)
	lp = pickupPos[math.random(1,#pickupPos)]
	cveh = createVehicle(cargoVehicles[vid][1],lp[1],lp[2],lp[3],0,0,lp[4])
   setElementData(cveh, "fuel", exports.vehicle_fuel:getMaxFuel(cveh))
   setElementData(cveh, "battery", 100)
   setElementData(cveh, "engineCrash", 0)
   setElementData(cveh, "owner", -1)
   setElementData(cveh, "faction", -1)
   setElementData(cveh, "engine", 0)
   setElementData(cveh, "job", 0)
    setElementData(player,"Эвакуатор_Зарплата",lp[5])
	local x,y,z = getPositionFromElementOffset(cveh,0,0,-0.8)
	cmarker = createMarker(x,y,z,"cylinder",7,50,100,100,0)
	cblip = createBlipAttachedTo(cmarker,41,3)
end
addEvent("createVehicleMarker",true)
addEventHandler("createVehicleMarker",root,createVehicleMarker)

function createCargoMarker()
	destroyClientElements()
	cmarker = createMarker(dropPos[1],dropPos[2],dropPos[3]-1,"cylinder",4,50,100,100)
	cblip = createBlipAttachedTo(cmarker,41,3)
end
addEvent("createCargoMarker",true)
addEventHandler("createCargoMarker",root,createCargoMarker)

addEventHandler ( "onClientMarkerHit", getRootElement(), function(ply)
    local player = getLocalPlayer()
	if ply ~= localPlayer then return end
	if source == cmarker then
		if getPedOccupiedVehicle( localPlayer ) ~= getElementData(localPlayer,"routeVehicle") then return end
		if isElement(cveh) then
            outputChatBox("Espere hasta que el vehículo esté cargado...",255,255,255,true)
			destroyElement(cmarker) destroyElement(cblip)
			setElementFrozen(getPedOccupiedVehicle(localPlayer),true)
			toggleAllControls(false)
			setTimer(function(pl)
				triggerServerEvent( "pickupVehicle",pl,vid )
				setElementFrozen(getPedOccupiedVehicle(localPlayer),false)
				toggleAllControls(true)
			end,3000,1,ply)
            
            if not getElementData(player,"Эвакуатор_Прибавление") then
                setElementData(player,"Эвакуатор_Прибавление",0)
            end
            if not getElementData(player,"Эвакуатор_Зарплата") then setElementData(player,"Эвакуатор_Зарплата",0) end
            setElementData(player,"Эвакуатор_Прибавление",getElementData(player,"Эвакуатор_Прибавление") + getElementData(player,"Эвакуатор_Зарплата"))
		else
            outputChatBox("Esperar a que se descargue el vehículo...",255,255,255,true)
			destroyElement(cmarker) destroyElement(cblip)
			setElementFrozen(getPedOccupiedVehicle(localPlayer),true)
			toggleAllControls(false)
			setTimer(function(pl)
				triggerServerEvent( "endRoute",pl,lp )
				setElementFrozen(getPedOccupiedVehicle(localPlayer),false)
				toggleAllControls(true)
                outputChatBox("Asistio el vehiculo con exito. Ha ganado "..getElementData(player,"Эвакуатор_Прибавление").." $. Vaya por el siguiente coche.",255,255,255,true)
			end,3000,1,ply)
		end
	end
end)

addEventHandler ( "onClientPickupHit", getRootElement(), function(ply)
	if ply ~= localPlayer then return end
	if source == pickupW then
        triggerServerEvent("initCargoWindow",ply)
	end
end)

local wnd = nil

function centerWindow ( center_window )
	local sx, sy = guiGetScreenSize ( )
	local windowW, windowH = guiGetSize ( center_window, false )
	local x, y = ( sx - windowW ) / 2, ( sy - windowH ) / 2
	guiSetPosition ( center_window, x, y, false )
end

function initCargoWindow(state)
	if isElement(wnd) then
		destroyElement(wnd)
		showCursor(false)
	else
        wnd = guiCreateWindow(0,0,450,120,"Asistente Vial",false)
        centerWindow(wnd)
        label_Walk = guiCreateLabel(5,30,440,50, "Tu tarea consiste en asistir los vehiculos y llevarlos a la sede.\nEl salario depende de la ubicación del vehículo.", false, wnd)
        guiSetFont(label_Walk, "default-bold-small")
        guiLabelSetHorizontalAlign(label_Walk, "center", false)
		local txt = "Trabajar"
		if state then txt = "Terminar" end
		local btn1 = guiCreateButton(10,80,210,35,txt,false,wnd)
        guiSetFont(btn1,"default-bold-small")
        guiSetProperty(btn1, "NormalTextColour", "FF00FF00")
		local btn2 = guiCreateButton(230,80,210,35,"Ir a",false,wnd)
        guiSetFont(btn2,"default-bold-small")
        guiSetProperty(btn2, "NormalTextColour", "FFFF0000")
		showCursor(true)
		addEventHandler('onClientGUIClick',wnd,function()
			if source == btn1 then
				triggerServerEvent( "startRoute",localPlayer )
				initCargoWindow()
			elseif source == btn2 then
				initCargoWindow()
			end
		end)
	end
end
addEvent("initCargoWindow",true)
addEventHandler("initCargoWindow",root,initCargoWindow)
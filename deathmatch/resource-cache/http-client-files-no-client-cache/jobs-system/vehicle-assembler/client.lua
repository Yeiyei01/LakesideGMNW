--------------------------------------------[Устройство]
local dxMarker = createMarker(pickupUs[1],pickupUs[2],pickupUs[3]-0.4, "cylinder", 1, 255, 255, 255, 0)

addEventHandler( "onClientRender", root, function ()
       local x, y, z = getElementPosition(dxMarker)
       local Mx, My, Mz = getCameraMatrix()
        if (getDistanceBetweenPoints3D(x, y, z, Mx, My, Mz) <= 20) then
           local WorldPositionX, WorldPositionY = getScreenFromWorldPosition(x, y, z +1, 0.07)
            if (WorldPositionX and WorldPositionY) then
			    dxDrawText("Ensamblaje de Vehículos", WorldPositionX - 1, WorldPositionY + 1, WorldPositionX - 1, WorldPositionY + 1, tocolor(0, 0, 0, 255), 1.52, "default-bold", "center", "center", false, false, false, false, false)
			    dxDrawText("Ensamblaje de Vehículos", WorldPositionX - 1, WorldPositionY + 1, WorldPositionX - 1, WorldPositionY + 1, tocolor(255, 255, 255, 255), 1.50, "default-bold", "center", "center", false, false, false, false, false)
            end
      end
end 
)
---------------------------------------------

local pickupUs = createPickup(pickupUs[1],pickupUs[2],pickupUs[3], 3, 1275, 50)
local blip = createBlipAttachedTo(pickupUs, 25)
setBlipVisibleDistance(blip, 400)

function centerWindow ( center_window )
	local sx, sy = guiGetScreenSize ( )
	local windowW, windowH = guiGetSize ( center_window, false )
	local x, y = ( sx - windowW ) / 2, ( sy - windowH ) / 2
	guiSetPosition ( center_window, x, y, false )
end

local sw,sh = guiGetScreenSize()
local window={}
local label={}
local button={}

wndCon = guiCreateWindow(0,0,450,125,"Ensamblaje de Vehículos",false)
centerWindow(wndCon)
guiSetVisible(wndCon,false)

labeCon = guiCreateLabel(5,25,440,50,"Bienvenido al trabajo de mecánico de montaje de vehículos.\nSu trabajo es tomar los componentes del almacén\ne instalarlos en el coche.",false,wndCon)
guiSetFont(labeCon, "default-bold-small")
guiLabelSetHorizontalAlign(labeCon, "center", false)

buttonCon1 = guiCreateButton(10,80,210,35,"...",false,wndCon)
guiSetFont(buttonCon1,"default-bold-small")
guiSetProperty(buttonCon1, "NormalTextColour", "FF00FF00")
buttonCon2 = guiCreateButton(230,80,210,35,"Cerrar",false,wndCon)
guiSetFont(buttonCon2,"default-bold-small")
guiSetProperty(buttonCon2, "NormalTextColour", "FFFF0000")

function createMarkerAssembly(player)
    if player == getLocalPlayer() then
        local marker = createMarker(Stock[1],Stock[2],Stock[3]-1, "cylinder", 1, 255, 255, 255, 20)
        setElementData(marker,"Сборка_маркер_пациент",true)
        setElementData(player,"Сборка_маркер_пациент",marker)
        local blip = createBlipAttachedTo(marker, 41)
        setElementData(player,"Сборка_пациент_блип",blip)
        
        triggerServerEvent("giveAuto",player,player,0)
    end
end

function createMarkerAssembly2(player)
    if player == getLocalPlayer() then 
        if getElementData(player,"spare") == 1 or getElementData(player,"spare") == 7 then
            local marker = createMarker(sparePart1[1],sparePart1[2],sparePart1[3]-1, "cylinder", 1, 255, 255, 255, 20)
            setElementData(marker,"Сборка_маркер_пациент2",true)
            setElementData(player,"Сборка_маркер_пациент2",marker)
            local blip = createBlipAttachedTo(marker, 41)
            setElementData(player,"Сборка_пациент_блип2",blip)
        elseif getElementData(player,"spare") == 3 or getElementData(player,"spare") == 5 then
            local marker = createMarker(sparePart2[1],sparePart2[2],sparePart2[3]-1, "cylinder", 1, 255, 255, 255, 20)
            setElementData(marker,"Сборка_маркер_пациент2",true)
            setElementData(player,"Сборка_маркер_пациент2",marker)
            local blip = createBlipAttachedTo(marker, 41)
            setElementData(player,"Сборка_пациент_блип2",blip)
        elseif getElementData(player,"spare") == 4 or getElementData(player,"spare") == 6 then
            local marker = createMarker(sparePart3[1],sparePart3[2],sparePart3[3]-1, "cylinder", 1, 255, 255, 255, 20)
            setElementData(marker,"Сборка_маркер_пациент2",true)
            setElementData(player,"Сборка_маркер_пациент2",marker)
            local blip = createBlipAttachedTo(marker, 41)
            setElementData(player,"Сборка_пациент_блип2",blip)
        elseif getElementData(player,"spare") == 2 or getElementData(player,"spare") == 8 then
            local marker = createMarker(sparePart4[1],sparePart4[2],sparePart4[3]-1, "cylinder", 1, 255, 255, 255, 20)
            setElementData(marker,"Сборка_маркер_пациент2",true)
            setElementData(player,"Сборка_маркер_пациент2",marker)
            local blip = createBlipAttachedTo(marker, 41)
            setElementData(player,"Сборка_пациент_блип2",blip)
        end
    end
end

function deleteMarkerAssembly(player)
    if player == getLocalPlayer() then
        local blip = getElementData(player,"Сборка_пациент_блип")
        local marker = getElementData(player,"Сборка_маркер_пациент")
        if marker then
            if isElement(marker) then destroyElement(marker) end
        end
        if blip then
            if isElement(blip) then destroyElement(blip) end
        end
    end
end

function deleteMarkerAssembly2(player)
    if player == getLocalPlayer() then
        local marker = getElementData(player,"Сборка_маркер_пациент2")
        local blip = getElementData(player,"Сборка_пациент_блип2")
        if marker then
            if isElement(marker) then destroyElement(marker) end
        end
        if blip then
            if isElement(blip) then destroyElement(blip) end
        end
    end
end

function startClick()
    local player = getLocalPlayer()
    if (source == buttonCon1) then
        guiSetVisible(wndCon,false)
        showCursor(false)
        local state = getElementData(player,"Сборка_работает")
        if not state then
            setElementData(player,"Сборка_работает",0)
            createMarkerAssembly(player)
            outputChatBox("#00FF00[Despachador] #FFFFFFHas empezado a trabajar. Consigue las piezas de montaje en el almacén.",255,255,255,true)
            
            setElementData(player,"Сборка_скин_до",getElementModel(player))
            setElementModel(player,50)
            setElementData(player,"Сборка_машина_пациент",0)
            setElementData(player,"Заработано_Сейчас_Кон",moneyCon)
        else
            local hodok = tonumber(state)
            local profit = getElementData(player,"Заработано_Всего_Кон")
            if not profit then profit = 0 end
            
            setElementData(player,"Заработано_Всего_Кон",nil)
            setElementData(player,"Заработано_Сейчас_Кон",nil)
            triggerServerEvent("giveMoneyAssembly",player,player,profit)
            setElementData(player,"Сборка_работает",nil)
            setElementData(player, "spare", nil)
            
            setElementModel(player,getElementData(player,"Сборка_скин_до"))
            deleteMarkerAssembly(player)
            deleteMarkerAssembly2(player)
            triggerServerEvent("stopAuto",player,player)
        end
    elseif (source == buttonCon2) then
        guiSetVisible(wndCon,false)
        showCursor(false)
    end
end
addEventHandler("onClientGUIClick", getRootElement(), startClick)

function onClientMarkerHit(player, mdim)
    if player == getLocalPlayer() then
        if mdim then
            local veh = getPedOccupiedVehicle(player)
            local state = getElementData(player,"Сборка_работает")
            if getElementData(source,"Сборка_маркер_пациент") then
                if not veh then
                    deleteMarkerAssembly(player)
                    triggerServerEvent("onPlayerTakeWood", player)
                    setPedAnimation(player, "CARRY", "crry_prtial", 4.1, true, true, true )
                    
                    local spare = math.random(1,8)
                    if spare == 1 then
                        outputChatBox("#00FF00[Despachador] #FFFFFFCogiste el capó. Ve al coche y colócalo.",255,255,255,true)
                        setElementData(player, "spare", 1)
                    elseif spare == 2 then
                        outputChatBox("#00FF00[Despachador] #FFFFFFCogiste la parabrisas. Ve al coche y colócala.",255,255,255,true)
                        setElementData(player, "spare", 2)
                    elseif spare == 3 then
                        outputChatBox("#00FF00[Despachador] #FFFFFFCogiste la puerta delantera izquierda. Ve al coche y colócala.",255,255,255,true)
                        setElementData(player, "spare", 3)
                    elseif spare == 4 then
                        outputChatBox("#00FF00[Despachador] #FFFFFFCogiste la puerta delantera derecha. Ve al coche y colócala.",255,255,255,true)
                        setElementData(player, "spare", 4)
                    elseif spare == 5 then
                        outputChatBox("#00FF00[Despachador] #FFFFFFCogiste la puerta trasera izquierda. Ve al coche y colócala.",255,255,255,true)
                        setElementData(player, "spare", 5)
                    elseif spare == 6 then
                        outputChatBox("#00FF00[Despachador] #FFFFFFCogiste la puerta trasera derecha. Ve al coche y colócala.",255,255,255,true)
                        setElementData(player, "spare", 6)
                    elseif spare == 7 then
                        outputChatBox("#00FF00[Despachador] #FFFFFFCogiste el parachoques delantero. Ve al coche y colócala.",255,255,255,true)
                        setElementData(player, "spare", 7)
                    elseif spare == 8 then
                        outputChatBox("#00FF00[Despachador] #FFFFFFCogiste el parachoques trasero. Ve al coche y colócalo.",255,255,255,true)
                        setElementData(player, "spare", 8)
                    end
                    
                    setTimer(function() createMarkerAssembly2(player) end,500,1)
                end
            elseif getElementData(source,"Сборка_маркер_пациент2") then
                setElementData(player,"Сборка_машина_пациент",tonumber(getElementData(player,"Сборка_машина_пациент")) + 1)
                triggerServerEvent("onPlayerPutWood", player)
                setPedAnimation(player,"medic","cpr",1000,false,true,true,false)
                
                setTimer(function()
                    if isElement(player) and getElementData(player,"Сборка_работает") then
                        local pacienty = tonumber(getElementData(player,"Сборка_машина_пациент"))
                        if pacienty > 0 then
                            setElementData(player,"Сборка_работает",tonumber(state) + pacienty)
                            setElementData(player,"Сборка_машина_пациент",0)
                            if not getElementData(player,"Заработано_Всего_Кон") then
                                setElementData(player,"Заработано_Всего_Кон",0)
                            end
                            if not getElementData(player,"Заработано_Сейчас_Кон") then setElementData(player,"Заработано_Сейчас_Кон",0) end
                            setElementData(player,"Заработано_Всего_Кон",getElementData(player,"Заработано_Всего_Кон") + getElementData(player,"Заработано_Сейчас_Кон"))
                            deleteMarkerAssembly2(player)
                            setTimer(function() triggerServerEvent("stopAuto",player,player) end, 500 ,1)
                            setElementData(player, "spare", nil)
                            outputChatBox("#00FF00[Despachador] #FFFFFFLas piezas han sido ensambladas con éxito. El vehículo ha sido enviado para su posterior montaje.",255,255,255,true)
                            outputChatBox("#00FF00[Despachador] #FFFFFFGanado: #00FF00"..getElementData(player,"Заработано_Сейчас_Кон").." #FFFFFF$ Total Ganado: #00FF00"..getElementData(player,"Заработано_Всего_Кон").." #FFFFFF$",255,255,255,true)
                            setTimer(function()
                                createMarkerAssembly(player)
                                outputChatBox("#00FF00[Despachador] #FFFFFFHa llegado un nuevo coche. Ve al almacén.",255,255,255,true)
                            end, 5000 ,1)
                        end
                    end
                end,500,1)
            end
        end
    end
end
addEventHandler("onClientMarkerHit", getRootElement(), onClientMarkerHit )

addEventHandler ( "onClientPickupHit", getRootElement(), function(ply)
	if ply ~= localPlayer then return end
	if source == pickupUs then
        local state = getElementData(ply,"Сборка_работает")
        local veh = getPedOccupiedVehicle(ply)
        if not veh then
            guiSetVisible(wndCon,true)
            showCursor(true)
            if not state then
                guiSetText(buttonCon1,"Iniciar")
            else
                guiSetText(buttonCon1,"Completar")
            end
        end
	end
end)
function giveAuto(player)
    local veh = createVehicle(405, veh[1], veh[2], veh[3], 0, 0, 270)
    setElementFrozen(veh, true) --Замораживает машину.
    setElementCollisionsEnabled (veh, false)
    setVehiclePanelState(veh, 5, 3) -- Снять передний бампер.
    setVehiclePanelState(veh, 6, 3) -- Снять задний бампер.
    setVehicleDoorState(veh, 0, 4) -- Снять капот.
    setVehicleDoorState(veh, 1, 4) -- Снять багажник.
    setVehicleDoorState(veh, 2, 4) -- Снять левую переднюю дверю.
    setVehicleDoorState(veh, 3, 4) -- Снять правую переднюю дверю.
    setVehicleDoorState(veh, 4, 4) -- Снять левую заднюю дверю.
    setVehicleDoorState(veh, 5, 4) -- Снять правую заднюю дверю.
    setElementData(player,"Автомобиль",veh)
end
addEvent("giveAuto", true)
addEventHandler("giveAuto", getRootElement(), giveAuto)

function stopAuto(player)
    local veh = getElementData(player,"Автомобиль")
        if veh then
        destroyElement(veh)
        setElementData(player,"Автомобиль",nil)
    end
end
addEvent("stopAuto", true)
addEventHandler("stopAuto", getRootElement(), stopAuto) 

function onPlayerTakeWood()
	setTimer(function (source)
        local wood = createObject(2969, 0, 0, 0)
        setObjectScale(wood, 0.9)
        setElementCollisionsEnabled (wood, false)
        attachElements(wood, source, 0, 0.3, 0.4)
        setElementData(source, "attached", wood)
        setPedAnimation (source, false)
    end, 1500, 1, source)
end
addEvent("onPlayerTakeWood", true)
addEventHandler("onPlayerTakeWood", getRootElement(), onPlayerTakeWood)

function onPlayerPutWood()
	local wood = getElementData(source, "attached")
	if isElement(wood) then
      	destroyElement(wood)
	end
end
addEvent("onPlayerPutWood", true)
addEventHandler("onPlayerPutWood", getRootElement(), onPlayerPutWood)

function giveMoneyAssembly(player, summa)
    local state = getElementData(player,"Сборка_работает")
    if state then
        exports.global:giveMoney(player, summa)
        outputChatBox("#00FF00[Despachador] #FFFFFFEl turno ha terminado. Su salario #00FF00"..summa.." #FFFFFF$",player,255,255,255,true)
    end
end
addEvent("giveMoneyAssembly", true)
addEventHandler("giveMoneyAssembly", getRootElement(), giveMoneyAssembly) 

function onPlayerWasted()
    giveMoneyAssembly(source)
end
addEventHandler("onPlayerWasted", getRootElement(), onPlayerWasted)

function onPlayerQuit()
    giveMoneyAssembly(source)
end
addEventHandler("onPlayerQuit", getRootElement(), onPlayerQuit)
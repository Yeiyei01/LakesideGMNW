local mysql = exports.mysql
local connection = mysql:getConn()

local trailerPlayers = {}
local trailerCount = 0
local trailerPosList = {}

addEventHandler("onResourceStart" , resourceRoot , function()

    trailerMarker = createMarker(trailerMarkerPos , "cylinder" ,  2.5 , 255 , 153 , 0 , 155)
    addEventHandler("onMarkerHit" , trailerMarker , onMarkerGir)
    addEventHandler("onMarkerLeave" , trailerMarker , function(player) 

        if isElement(player) and getElementType(player) == "player" then

            triggerClientEvent(player , "truckHidePanel" , player)

        end

    end)

end)

function onMarkerGir(player)

    if isElement(player) and getElementType(player) == "player" then

        --if player:getData("job") ~= truckJob then
        --    exports['hud']:sendBottomNotification(player , "¡No ha entrado en la profesión de camión!")
        --return end

        if not player.vehicle or player.vehicle.model ~= truckModel then
            exports['hud']:sendBottomNotification(player , "¡Tienes que estar en un camión para comprar un remolque!")
        return end

        if trailerPlayers[player] then
            exports['hud']:sendBottomNotification(player , "Ya compraste un tráiler, para cancelarlo /cancelartráiler")
        return end

        local level = 1 --exports["jobs-level"]:getLevel(player , truckJob)

        triggerClientEvent(player , "truckShowPanel" , player , level)

    end

end

addEvent("truckCreateTrailer" , true)
addEventHandler("truckCreateTrailer" , root , function(index)

    trailerCount = 0

    for i=1 , #trailerPositions do 

        if not trailerPosList[i] then
            trailerCount = i
            trailerPosList[i] = true
            break
        end

    end

    if trailerCount == 0 then
        exports['hud']:sendBottomNotification(source , "No se pueden recibir más cargas en este momento, ¡espere un poco!")
    return end


        trailerPlayers[source]               = {}
        trailerPlayers[source]["trailer"]    = createVehicle(exped[index][2] , trailerPositions[trailerCount] ,  0 , 0 , trailerRot)
        trailerPlayers[source]["index"]      = index
        trailerPlayers[source]["trailerPos"] = trailerCount
		print(trailerCount)
        exports['hud']:sendBottomNotification(source , exped[index][1].." adlı firmanın yükünü aldın, dorseyi "..trailerCount..". sıradan al ve tırına tak!")

end)

addEventHandler("onTrailerAttach" , root , function(truck)

    if truck.model == truckModel then

        local player = getVehicleOccupant(truck)

        if trailerPlayers[player] and trailerPlayers[player]["trailer"] ~= source then

            setTimer(detachTrailer, 50, 1, truck, source)
            exports['hud']:sendBottomNotification(player , "¡Este tráiler no te pertenece!")

        elseif not trailerPlayers[player]["attached"] and trailerPlayers[player] and trailerPlayers[player]["trailer"] == source then

            trailerPlayers[player]["attached"] = true
            exports['hud']:sendBottomNotification(player , "¡Ha instalado correctamente el remolque, verifique el GPS y entregue la carga a su destino!")

            local index = trailerPlayers[player]["index"]

            --truck:setData("gpsDestination" , )
            triggerClientEvent(player , "truckMiddMarker" , player , index , {exped[index][6].x , exped[index][6].y})
            local index = trailerPlayers[player]["trailerPos"]

            setTimer(function(index)
                
                if trailerPosList[index] then

                    trailerPosList[index] = nil

                end

            end , 500 , 1 , index)

        end

    end

end)

function detachTrailer(theTruck, trailer)
    if (isElement(theTruck) and isElement(trailer)) then
        detachTrailerFromVehicle(theTruck, trailer)
    end
end

addEvent("truckMiddMarker" , true)
addEventHandler("truckMiddMarker" , root , function(vehicle)
 
    if trailerPlayers[source] then

        if trailerPlayers[source]["trailer"] == getVehicleTowedByVehicle(vehicle) then 

            exports['hud']:sendBottomNotification(source , "Ha entregado con éxito el tráiler al destino, ¡ahora regrese al punto de partida!")
            --vehicle:setData("gpsDestination" , {finishPosition.x , finishPosition.y})

            destroyElement(trailerPlayers[source]["trailer"])
            trailerPlayers[source]["trailer"] = nil
            triggerClientEvent(source , "truckDestroyMarker" , source , {finishPosition.x , finishPosition.y})

        else

            exports['hud']:sendBottomNotification(source , "¡No hay ningún remolque adjunto al camión o el remolque adjunto no le pertenece!")

        end

    end

end)

addEvent("truckFinish" , true)
addEventHandler("truckFinish" , root , function()

    if trailerPlayers[source] then

        local index = trailerPlayers[source]["index"]

        exports['hud']:sendBottomNotification(source , "¡Ha terminado con éxito y has ganado "..exped[index][4].."$!")
        exports['hud']:sendBottomNotification(source , "Cuidado, tus amigos de logística te regalaron un metal.")        
        exports.global:giveMoney(source, exped[index][4])
        exports.global:giveItem(source, exped[index][4])    

        for k , v in pairs(trailerPlayers) do 

            v = nil

        end

        trailerPlayers[source] = nil



    end

end)
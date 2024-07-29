function start_Washer(player)
    setElementData(player,"Мойщик_скин_до",getElementModel(player))
    setElementModel(player,31)
    local veh = createVehicle(574, 598.43359375, 1228.4521484375, 11.443918228149, 0, 0, 270)

   setElementData(veh, "fuel", exports.vehicle_fuel:getMaxFuel(veh))
   setElementData(veh, "battery", 100)
   setElementData(veh, "engineCrash", 0)
   setElementData(veh, "owner", -1)
   setElementData(veh, "faction", -1)
   setElementData(veh, "engine", 0)
   setElementData(veh, "job", 0)

    setElementData(player,"Мойщик_машина",veh)
    setElementData(veh,"Мойщик_машина_пациент",0)
    warpPedIntoVehicle(player,veh)
    setElementData(veh, "vehicle:Work", true)
    setElementData(veh, "vehicle:Work:Owner", player)
end
addEvent("start_Washer", true)
addEventHandler("start_Washer", getRootElement(), start_Washer)

function start_Ped(ped, veh)
    warpPedIntoVehicle(ped,veh)
end
addEvent("start_Ped", true)
addEventHandler("start_Ped", getRootElement(), start_Ped)

function enterVehicle ( player )
    local data = getElementData(source, "vehicle:Work")
	if not data then return end
	
	local owner = getElementData(source, "vehicle:Work:Owner")
	if owner ~= player then
	    cancelEvent()
        outputChatBox("#00FF00[Limpieza Calles] #FFFFFFEste no es su transporte.",player,255,255,255,true)
	end
end
addEventHandler ( "onVehicleStartEnter", getRootElement(), enterVehicle )

function stop_Washer(player)
    local state = getElementData(player,"Мойщик_работает")
    local veh0 = getElementData(player,"Мойщик_машина")
    if state then
        if veh0 then
            destroyElement(veh0)
            setElementData(player,"Мойщик_машина",nil)
        end
    end
    setElementModel(player,getElementData(player,"Мойщик_скин_до"))
    triggerClientEvent("deleteMarkers",player,player)
end
addEvent("stop_Washer", true)
addEventHandler("stop_Washer", getRootElement(), stop_Washer) 

function giveMoneyWasher(player, summa, urAm)
    local state = getElementData(player,"Мойщик_работает")
    if state then
        exports.global:giveMoney(player, summa)
        outputChatBox("#00FF00[Limpieza Calles] #FFFFFFEl trabajo se ha completado con éxito. Su pago es #00FF00"..summa.." #FFFFFF$",player,255,255,255,true)
    end
end
addEvent("giveMoneyWasher", true)
addEventHandler("giveMoneyWasher", getRootElement(), giveMoneyWasher) 

function job_quit_Medik()
    local player = source
    local state = getElementData(player,"Мойщик_работает")
    if state then
        local veh0 = getElementData(player,"Мойщик_машина")
        if veh0 then
            destroyElement(veh0)
			setElementData(player,"Мойщик_машина",nil)
        end
    end
end
addEventHandler("onPlayerQuit", root, job_quit_Medik)

function onVehicleStartEnter( player, seat, jacked )
local veh = source
local pveh = getElementData(player,"Мойщик_машина")
    if veh == pveh then
        setElementData(player,"Уничтожение_Мойщика",nil)
    end
end
addEventHandler ( "onVehicleStartEnter", getRootElement(), onVehicleStartEnter)

setTimer(function()
for lol,player in ipairs(getElementsByType("player")) do
    local pveh = getElementData(player,"Мойщик_машина")
    if pveh then
        local driverA = getVehicleOccupant(pveh)
        if driverA == player then
            if getElementData(player,"Уничтожение_Мойщика") then
                setElementData(player,"Уничтожение_Мойщика",nil)
            end
        else
            if getElementData(player,"Уничтожение_Мойщика") then
                setElementData(player,"Уничтожение_Мойщика",tonumber(getElementData(player,"Уничтожение_Мойщика")) - 1)
                if tonumber(getElementData(player,"Уничтожение_Мойщика")) < 0 then
                    setElementData(player,"Уничтожение_Мойщика",nil)
                    stop_Washer(player)
                    outputChatBox("#00FF00[Limpieza Calles] #FFFFFFHa dejado el vehículo de trabajo. El trabajo ha terminado.",player,255,255,255,true)
                end
            end
        end
   end
end
end,1000,0)

function onVehicleExit(player,seat)
    if seat == 0 then
        local pveh = getElementData(player,"Мойщик_машина")
        if source == pveh then
            setElementData(player,"Уничтожение_Мойщика",60)
            outputChatBox("#00FF00[Limpieza Calles] #FFFFFFSi no vuelve al vehículo, se eliminará después de 60 segundos.",player,255,255,255,true)
        end
    end
end
addEventHandler("onVehicleExit", getRootElement(), onVehicleExit)

function onPlayerWasted()
    giveMoneyWasher(source)
end
addEventHandler("onPlayerWasted", getRootElement(), onPlayerWasted)

function onPlayerQuit()
    giveMoneyWasher(source)
end
addEventHandler("onPlayerQuit", getRootElement(), onPlayerQuit)
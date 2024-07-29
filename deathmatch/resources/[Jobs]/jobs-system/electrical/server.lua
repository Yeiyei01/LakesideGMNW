local vehPositions = {
{844.81640625, -600.453125, 18.120244979858},
{873.5087890625, -594.8515625, 17.856628417969},
}

local numberSymbols =
{
	'A',
	'B',
	'C',
	'Y',
	'O',
	'P',
	'T',
	'E',
	'X',
	'M',
	'H',
	'K'
}

function start_Electrician(player)
    setElementData(player,"Электрик_скин_до",getElementModel(player))
    setElementModel(player,276)
    randomVeh = math.random (1,2)
    local veh = createVehicle(552,vehPositions[randomVeh][1], vehPositions[randomVeh][2], vehPositions[randomVeh][3], 0, 0, 0)

   setElementData(veh, "fuel", exports.vehicle_fuel:getMaxFuel(veh))
   setElementData(veh, "battery", 100)
   setElementData(veh, "engineCrash", 0)
   setElementData(veh, "owner", -1)
   setElementData(veh, "faction", -1)
   setElementData(veh, "engine", 0)
   setElementData(veh, "job", 0)

    local s1 = numberSymbols[math.random(1,#numberSymbols)]
    local s2 = numberSymbols[math.random(1,#numberSymbols)]
    local s3 = numberSymbols[math.random(1,#numberSymbols)]
    local num = math.random(100,999)
    local region =  math.random(10,99)
    setElementData(veh,"numberType","ru")
    setElementData(veh,"number:plate",s1..num..s2..s3..region)
    setElementData(player,"Электрик_машина",veh)
    warpPedIntoVehicle(player,veh)
    setElementData(veh, "vehicle:Work", true)
    setElementData(veh, "vehicle:Work:Owner", player)
end
addEvent("start_Electrician", true)
addEventHandler("start_Electrician", getRootElement(), start_Electrician)

function enterVehicle ( player )
    local data = getElementData(source, "vehicle:Work")
	if not data then return end
	
	local owner = getElementData(source, "vehicle:Work:Owner")
	if owner ~= player then
	    cancelEvent()
        outputChatBox("Este no es tu vehículo.",player,255,255,255,true)
	end
end
addEventHandler ( "onVehicleStartEnter", getRootElement(), enterVehicle )

function stop_Electrician(player)
    local state = getElementData(player,"Электрик_работает")
    local veh0 = getElementData(player,"Электрик_машина")
    if state then
        if veh0 then
            destroyElement(veh0)
            setElementData(player,"Электрик_машина",nil)
        end
    end
    setElementModel(player,getElementData(player,"Электрик_скин_до"))
    triggerClientEvent("deleteMarkerElectrician",player,player)
end
addEvent("stop_Electrician", true)
addEventHandler("stop_Electrician", getRootElement(), stop_Electrician) 

function giveMoneyElectrician(player, summa, urAm)
    local state = getElementData(player,"Электрик_работает")
    if state then
        exports.global:giveMoney(player, summa)
        outputChatBox("#FFFF00[Despachador] #FFFFFFUsted ha ganado #00FF00"..summa.." #FFFFFF$",player,255,255,255,true)
    end
end
addEvent("giveMoneyElectrician", true)
addEventHandler("giveMoneyElectrician", getRootElement(), giveMoneyElectrician) 

function job_quit_Medik()
    local player = source
    local state = getElementData(player,"Электрик_работает")
    if state then
        local veh0 = getElementData(player,"Электрик_машина")
        if veh0 then
            destroyElement(veh0)
			setElementData(player,"Электрик_машина",nil)
        end
    end
end
addEventHandler("onPlayerQuit", root, job_quit_Medik)

function onVehicleStartEnter( player, seat, jacked )
local veh = source
local pveh = getElementData(player,"Электрик_машина")
    if veh == pveh then
        setElementData(player,"Магическое_Уничтожение_Скорой",nil)
    end
end
addEventHandler ( "onVehicleStartEnter", getRootElement(), onVehicleStartEnter)

setTimer(function()
for lol,player in ipairs(getElementsByType("player")) do
    local pveh = getElementData(player,"Электрик_машина")
    if pveh then
        local driverA = getVehicleOccupant(pveh)
        if driverA == player then
            if getElementData(player,"Магическое_Уничтожение_Скорой") then
                setElementData(player,"Магическое_Уничтожение_Скорой",nil)
            end
        else
            if getElementData(player,"Магическое_Уничтожение_Скорой") then
                setElementData(player,"Магическое_Уничтожение_Скорой",tonumber(getElementData(player,"Магическое_Уничтожение_Скорой")) - 1)
                if tonumber(getElementData(player,"Магическое_Уничтожение_Скорой")) < 0 then
                    setElementData(player,"Магическое_Уничтожение_Скорой",nil)
                    stop_Electrician(player)
                    outputChatBox("Ha dejado el vehículo de trabajo. Se acabó el trabajo.",player,255,255,255,true)
                end
            end
        end
   end
end
end,1000,0)

function onVehicleExit(player,seat)
    if seat == 0 then
        local pveh = getElementData(player,"Электрик_машина")
        if source == pveh then
            setElementData(player,"Магическое_Уничтожение_Скорой",60)
            outputChatBox("Si no regresa al transporte, después de 60 segundos. será eliminado.",player,255,255,255,true)
        end
    end
end
addEventHandler("onVehicleExit", getRootElement(), onVehicleExit)

function onPlayerWasted()
    giveMoneyElectrician(source)
end
addEventHandler("onPlayerWasted", getRootElement(), onPlayerWasted)

function onPlayerQuit()
    giveMoneyElectrician(source)
end
addEventHandler("onPlayerQuit", getRootElement(), onPlayerQuit)
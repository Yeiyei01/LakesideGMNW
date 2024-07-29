
--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

function start_Tractor(player)
    local veh = createVehicle(531,spawnTractor[1],spawnTractor[2],spawnTractor[3], 0, 0, 160)
    setElementData(player,"tractor_veh",veh)
    trailer = createVehicle(610, 0, 0, 4, 0, 0, 160)
    attachTrailerToVehicle(veh, trailer)
    setElementData(player,"trailer_veh",trailer)
    setElementData(veh,"tractor_plus",0)
    warpPedIntoVehicle(player,veh)
    setElementData(veh, "vehicle:Work", true)
    setElementData(veh, "vehicle:Work:Owner", player)
end
addEvent("start_Tractor", true)
addEventHandler("start_Tractor", getRootElement(), start_Tractor)

function enterVehicle ( player )
    local data = getElementData(source, "vehicle:Work")
	if not data then return end
	
	local owner = getElementData(source, "vehicle:Work:Owner")
	if owner ~= player then
	    cancelEvent()
        outputChatBox("[Farmer] This vehicle is not for you!",player,0, 252, 255,true)
	end
end
addEventHandler ( "onVehicleStartEnter", getRootElement(), enterVehicle )

function stop_Tractor(player)
    local state = getElementData(player,"tractor_works")
    local veh1 = getElementData(player,"tractor_veh")
    local veh2 = getElementData(player,"trailer_veh")
    if state then
        if veh1 then
            destroyElement(veh1)
            setElementData(player,"tractor_veh",nil)
        end
        if veh2 then
            destroyElement(veh2)
            setElementData(player,"trailer_veh",nil)
        end
    end
    triggerClientEvent("deleteMarkerTractor",player,player)
end
addEvent("stop_Tractor", true)
addEventHandler("stop_Tractor", getRootElement(), stop_Tractor)

function giveMoneyTractor(player, summa)
    local state = getElementData(player,"tractor_works")
    if state then
        exports.global:giveMoney(player, summa)
        outputChatBox("[Farmer] You are done, your rights "..summa.."$",player,0, 252, 255,true)
    end
end
addEvent("giveMoneyTractor", true)
addEventHandler("giveMoneyTractor", getRootElement(), giveMoneyTractor) 

function job_quit_Medik()
    local player = source
    local state = getElementData(player,"tractor_works")
    if state then
        local veh = getElementData(player,"tractor_veh")
        if veh then
            destroyElement(veh)
			setElementData(player,"tractor_veh",nil)
        end
    end
end
addEventHandler("onPlayerQuit", root, job_quit_Medik)

function onVehicleStartEnter( player, seat, jacked )
local veh = source
local pveh = getElementData(player,"tractor_veh")
    if veh == pveh then
        setElementData(player,"Destruction of_Bus",nil)
    end
end
addEventHandler ( "onVehicleStartEnter", getRootElement(), onVehicleStartEnter)

setTimer(function()
for lol,player in ipairs(getElementsByType("player")) do
    local pveh = getElementData(player,"tractor_veh")
    if pveh then
        local driverA = getVehicleOccupant(pveh)
        if driverA == player then
            if getElementData(player,"Destruction of_Bus") then
                setElementData(player,"Destruction of_Bus",nil)
            end
        else
            if getElementData(player,"Destruction of_Bus") then
                setElementData(player,"Destruction of_Bus",tonumber(getElementData(player,"Destruction of_Bus")) - 1)
                if tonumber(getElementData(player,"Destruction of_Bus")) < 0 then
                    setElementData(player,"Destruction of_Bus",nil)
                    stop_Tractor(player)
                    outputChatBox("[Farmer] You quit your job.",player,0, 252, 255,true)
                end
            end
        end
   end
end
end,1000,0)

function onVehicleExit(player,seat)
    if seat == 0 then
        local pveh = getElementData(player,"tractor_veh")
        if source == pveh then
            setElementData(player,"Destruction_Bus",60)
            outputChatBox("[Farmer] You have 60 seconds to return to your tractor.",player,0, 252, 255,true)
        end
    end
end
addEventHandler("onVehicleExit", getRootElement(), onVehicleExit)

function onPlayerWasted()
    exports.global:giveMoney(source)
end
addEventHandler("onPlayerWasted", getRootElement(), onPlayerWasted)

function onPlayerQuit()
    exports.global:giveMoney(source)
end
addEventHandler("onPlayerQuit", getRootElement(), onPlayerQuit)

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

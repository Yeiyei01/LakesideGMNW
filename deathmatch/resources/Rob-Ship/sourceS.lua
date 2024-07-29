
--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

local MarkerStartShipRob = createMarker(149.08, -1964.76, 3.77-0.95, "cylinder", 1.2, 0, 156, 255, 100)
local MarkerBackShip = createMarker(6.29, -1969.16, 0.55-0.95, "cylinder", 3, 0, 156, 255, 100)

local MarkerShipMoney_1 = createMarker(34.24, -1986.03, 2.38-0.95, "cylinder", 1, 0, 156, 255, 100)
local MarkerShipMoney_2 = createMarker(37.46, -1989.42, 2.38-0.95, "cylinder", 1, 0, 156, 255, 100)
local MarkerShipMoney_3 = createMarker(43.53, -2007.80, 2.38-0.95, "cylinder", 1, 0, 156, 255, 100)
local MarkerShipMoney_4 = createMarker(40.04, -2011.51, 2.38-0.95, "cylinder", 1, 0, 156, 255, 100)

setMarkerSize(MarkerBackShip, 0)
setMarkerSize(MarkerShipMoney_1, 0)
setMarkerSize(MarkerShipMoney_2, 0)
setMarkerSize(MarkerShipMoney_3, 0)
setMarkerSize(MarkerShipMoney_4, 0)

function EnterMarkerBackShip(source)
    setElementData(source, "GameLight:TimeDestroy", false)
	setMarkerSize(MarkerBackShip, 0)
	outputChatBox("(Go inside and steal the money)", source,  255, 194, 15, true)
	outputChatBox("(The boat will be removed in 4 minutes, so be quick)", source,  255, 194, 15, true)
	triggerClientEvent(source, "ActiveTimerGoBackShip", getRootElement())
	local Boat = getElementData(source, "GameLight:Boat")
	setMarkerSize(MarkerShipMoney_1, 1)
	setMarkerSize(MarkerShipMoney_2, 1)
	setMarkerSize(MarkerShipMoney_3, 1)
	setMarkerSize(MarkerShipMoney_4, 1)
	setTimer(function(source)
		setMarkerSize(MarkerShipMoney_1, 0)
		setMarkerSize(MarkerShipMoney_2, 0)
		setMarkerSize(MarkerShipMoney_3, 0)
		setMarkerSize(MarkerShipMoney_4, 0)
		destroyElement(Boat)
	end,240000,1,source)
end
addEventHandler("onMarkerHit", MarkerBackShip, EnterMarkerBackShip)

function EnterMarkerStartShipRob(source)
    triggerClientEvent(source, "ActiveInfoStartRobShip", getRootElement())
end
addEventHandler("onMarkerHit", MarkerStartShipRob, EnterMarkerStartShipRob)

function LeaveMarkerStartShipRob(source)
    triggerClientEvent(source, "ActiveInfoStartRobShip", getRootElement())
end
addEventHandler("onMarkerLeave", MarkerStartShipRob, LeaveMarkerStartShipRob)

function GetOnlineDuty(factionID)
	local Duty = 0
	for index,thePlayer in ipairs(getElementsByType("player")) do
		if getElementData(thePlayer,"loggedin") and getElementData(thePlayer,"loggedin") == 1 then
			if tonumber(getElementData(thePlayer, "duty")) > 0 then
				local theTeam = getPlayerTeam(thePlayer)
				local factionType = tonumber(getElementData(thePlayer, "faction"))
				if factionType == tonumber(factionID) then
					Duty = tonumber( Duty ) + 1
				end
			end
		end
	end
	return Duty
end

function StartRobShip(source)
    if isElementWithinMarker(source, MarkerStartShipRob) then
	    --local PlayersInTeam = getElementData(source, "faction") -- Faction Player information code
		--local FactionID = 80 -- Faction ID that a member must be a member of to start
		--if tonumber(PlayersInTeam) == tonumber(FactionID) then
		    --local FactionIDPolice = 1 -- Faction ID Police
		    --if GetOnlineDuty(FactionIDPolice) < 2 then 
			    local Boat = createVehicle(452, 133.49, -1970.47, -0.55+1, 0, 0, 33.65)
				setElementData(source, "GameLight:Boat", Boat)
				setElementData(source, "GameLight:TimeDestroy", true)
				warpPedIntoVehicle(source, Boat)
				outputChatBox("(A robbery started from the ship)", source,  255, 194, 15, true)
				outputChatBox("(Go to the back of the ship. You have one minute)", source,  255, 194, 15, true)
				triggerClientEvent(source, "ActiveTimerGoBackShip", getRootElement())
				triggerClientEvent(root, "StartRobShipAlarm", root, source)
				setMarkerSize(MarkerStartShipRob, 0)
				setMarkerSize(MarkerBackShip, 3)
				local ID = getElementData(source, "playerid")
				local Name = getPlayerName(source)
				exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the ship!")
				--local MassageFactionID = 1 -- The faction ID to which the message should be sent to its members
				--local teamPlayers = getPlayersInTeam(exports.factions:getTeamFromFactionID(MassageFactionID))
				--for k, v in ipairs(teamPlayers) do
				    --outputChatBox("[Log] Stolen from the ship!", v, 0, 252, 255)
				--end
				setTimer(function(source)
				    if getElementData(source, "GameLight:TimeDestroy") == true then
					    destroyElement(Boat)
						setMarkerSize(MarkerBackShip, 0)
						outputChatBox("(You didn't go to the back of the ship and the theft from the ship was cancelled)", source,  255, 194, 15, true)
                        triggerClientEvent(source, "ActiveTimerGoBackShip", getRootElement())
					end
				end,60000,1,source)
				setTimer(function(source)
				    setMarkerSize(MarkerStartShipRob, 1.2)
				end,1800000,1,source)
			--else
			    --outputChatBox("(2 policemen are not on duty in the server)", source,  255, 194, 15, true)
			--end
		--else
		    --outputChatBox("(You are not a member of Gang Faction)", source,  255, 194, 15, true)
		--end
	end
end

function Key_1_Ship()
    for i, v in ipairs(getElementsByType("player")) do
        bindKey(v, "h", "down", StartRobShip)
    end
end
addEventHandler("onResourceStart", getResourceRootElement(getThisResource()), Key_1_Ship)

function Key_2_Ship()
    bindKey(source, "h", "down", StartRobShip)
end
addEventHandler("onPlayerJoin", getRootElement(), Key_2_Ship)

function EnterMarkerShipMoney_1(source)
    setElementFrozen(source, true)
	setPedAnimation(source, "bomber", "BOM_Plant_Loop", 30000, true, false, false)
	triggerClientEvent(source, "ActiveTimerMoneyShip", getRootElement())
	setMarkerSize(MarkerShipMoney_1, 0)
	setTimer(function(source)
	    setElementFrozen(source, false)
		setPedAnimation(source, nil)
		triggerClientEvent(source, "ActiveTimerMoneyShip", getRootElement())
		local Money = math.random(50000, 100000)
		exports.global:giveMoney(source, Money)
		outputChatBox("(You stole $"..Money..")", source,  255, 194, 15, true)
		local ID = getElementData(source, "playerid")
		local Name = getPlayerName(source)
		exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the ship $"..Money.." !")
	end,30000,1,source)
end
addEventHandler("onMarkerHit", MarkerShipMoney_1, EnterMarkerShipMoney_1)

function EnterMarkerShipMoney_2(source)
    setElementFrozen(source, true)
	setPedAnimation(source, "bomber", "BOM_Plant_Loop", 30000, true, false, false)
	triggerClientEvent(source, "ActiveTimerMoneyShip", getRootElement())
	setMarkerSize(MarkerShipMoney_2, 0)
	setTimer(function(source)
	    setElementFrozen(source, false)
		setPedAnimation(source, nil)
		triggerClientEvent(source, "ActiveTimerMoneyShip", getRootElement())
		local Money = math.random(50000, 100000)
		exports.global:giveMoney(source, Money)
		outputChatBox("(You stole $"..Money..")", source,  255, 194, 15, true)
		local ID = getElementData(source, "playerid")
		local Name = getPlayerName(source)
		exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the ship $"..Money.." !")
	end,30000,1,source)
end
addEventHandler("onMarkerHit", MarkerShipMoney_2, EnterMarkerShipMoney_2)

function EnterMarkerShipMoney_3(source)
    setElementFrozen(source, true)
	setPedAnimation(source, "bomber", "BOM_Plant_Loop", 30000, true, false, false)
	triggerClientEvent(source, "ActiveTimerMoneyShip", getRootElement())
	setMarkerSize(MarkerShipMoney_3, 0)
	setTimer(function(source)
	    setElementFrozen(source, false)
		setPedAnimation(source, nil)
		triggerClientEvent(source, "ActiveTimerMoneyShip", getRootElement())
		local Money = math.random(50000, 100000)
		exports.global:giveMoney(source, Money)
		outputChatBox("(You stole $"..Money..")", source,  255, 194, 15, true)
		local ID = getElementData(source, "playerid")
		local Name = getPlayerName(source)
		exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the ship $"..Money.." !")
	end,30000,1,source)
end
addEventHandler("onMarkerHit", MarkerShipMoney_3, EnterMarkerShipMoney_3)

function EnterMarkerShipMoney_4(source)
    setElementFrozen(source, true)
	setPedAnimation(source, "bomber", "BOM_Plant_Loop", 30000, true, false, false)
	triggerClientEvent(source, "ActiveTimerMoneyShip", getRootElement())
	setMarkerSize(MarkerShipMoney_4, 0)
	setTimer(function(source)
	    setElementFrozen(source, false)
		setPedAnimation(source, nil)
		triggerClientEvent(source, "ActiveTimerMoneyShip", getRootElement())
		local Money = math.random(50000, 100000)
		exports.global:giveMoney(source, Money)
		outputChatBox("(You stole $"..Money..")", source,  255, 194, 15, true)
		local ID = getElementData(source, "playerid")
		local Name = getPlayerName(source)
		exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the ship $"..Money.." !")
	end,30000,1,source)
end
addEventHandler("onMarkerHit", MarkerShipMoney_4, EnterMarkerShipMoney_4)

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

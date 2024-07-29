
--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

local DoorObject = createObject(2634, 453.5, -1525, 21, 0, 0, 191.24)
local MarkerRob = createMarker(454.99, -1525.68, 20.57-0.95, "cylinder", 1, 0, 156, 255, 100)
local MarkerRobLeave = createMarker(480.77, -1540.57, 19.18-0.95, "cylinder", 2.4, 0, 156, 255, 0)

local MarkerMoney_1 = createMarker(450.65, -1523.14, 20.55-0.95, "cylinder", 1, 0, 156, 255, 100)
local MarkerMoney_2 = createMarker(450.08, -1520.83, 20.55-0.95, "cylinder", 1, 0, 156, 255, 100)
local MarkerMoney_3 = createMarker(452.92, -1521.50, 20.55-0.95, "cylinder", 1, 0, 156, 255, 100)

setMarkerSize(MarkerRobLeave, 0)
setMarkerSize(MarkerMoney_1, 0)
setMarkerSize(MarkerMoney_2, 0)
setMarkerSize(MarkerMoney_3, 0)

function EnterLeavePlayer(source)
    if getElementData(source, "GameLight:RobJewelryLeave") == true then
	    setElementData(source, "GameLight:RobJewelryLeave", false)
		setMarkerSize(MarkerRobLeave, 0)
		triggerClientEvent(source, "ActiveTimerStartRob", getRootElement())
		outputChatBox("(You escaped from a jewel, the heist failed)", source,  255, 194, 15, true)
	end
end
addEventHandler("onMarkerHit", MarkerRobLeave, EnterLeavePlayer)

function EnterMarkerRob(source)
    triggerClientEvent(source, "ActiveInfoStartRob", getRootElement())
end
addEventHandler("onMarkerHit", MarkerRob, EnterMarkerRob)

function LeaveMarkerRob(source)
    triggerClientEvent(source, "ActiveInfoStartRob", getRootElement())
end
addEventHandler("onMarkerLeave", MarkerRob, LeaveMarkerRob)

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

function StartRobJewelry(source)
    if isElementWithinMarker(source, MarkerRob) then
	    --local PlayersInTeam = getElementData(source, "faction") -- Faction Player information code
		--local FactionID = 80 -- Faction ID that a member must be a member of to start
		--if tonumber(PlayersInTeam) == tonumber(FactionID) then
		    --local FactionIDPolice = 1 -- Faction ID Police
		    --if GetOnlineDuty(FactionIDPolice) < 4 then 
			    outputChatBox("(A jewel robbery has started. Wait until the door is hacked)", source,  255, 194, 15, true)
				triggerClientEvent(source, "ActiveTimerStartRob", getRootElement())
				triggerClientEvent(root, "StartRobJewelryAlarm", root, source)
				setMarkerSize(MarkerRob, 0)
				setMarkerSize(MarkerRobLeave, 2.4)
				setElementData(source, "GameLight:RobJewelryLeave", true)
				setElementRotation(source, 0, 0, 15.70)
				setPedAnimation(source, "SHOP", "SHP_Serve_End", 1000, true, false, true)
				local ID = getElementData(source, "playerid")
				local Name = getPlayerName(source)
				exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the jeweler!")
				--local MassageFactionID = 1 -- The faction ID to which the message should be sent to its members
				--local teamPlayers = getPlayersInTeam(exports.factions:getTeamFromFactionID(MassageFactionID))
				--for k, v in ipairs(teamPlayers) do
				    --outputChatBox("[Log] Stolen from the jeweler!", v, 0, 252, 255)
				--end
				setTimer(function(source)
				    if getElementData(source, "GameLight:RobJewelryLeave") == true then
				        triggerClientEvent(source, "ActiveTimerStartRob", getRootElement())
					end
					if isPedDead(source) then
					    outputChatBox("(You die and the heist fails)", source,  255, 194, 15, true)
						setElementData(source, "GameLight:RobJewelryLeave", false)
						setMarkerSize(MarkerRobLeave, 0)
					else
					    if getElementData(source, "GameLight:RobJewelryLeave") == true then
						    setElementData(source, "GameLight:RobJewelryLeave", false)
							setMarkerSize(MarkerRobLeave, 0)
						    outputChatBox("(The door was opened, steal the money)", source,  255, 194, 15, true)
							moveObject(DoorObject, 1800, 454.10, -1524, 21, 0, 0, -70, "OutBounce")
							setMarkerSize(MarkerMoney_1, 1)
							setMarkerSize(MarkerMoney_2, 1)
							setMarkerSize(MarkerMoney_3, 1)
							setTimer(function(source)
							    setMarkerSize(MarkerMoney_1, 0)
								setMarkerSize(MarkerMoney_2, 0)
								setMarkerSize(MarkerMoney_3, 0)
							end,150000,1,source)
						end
					end
				end,120000,1,source)
				setTimer(function(source)
				    setMarkerSize(MarkerRob, 1)
					moveObject(DoorObject, 1800, 453.5, -1525, 21, 0, 0, 70, "InQuad")
				end,1800000,1,source)
			--else
			    --outputChatBox("(4 policemen are not on duty in the server)", source,  255, 194, 15, true)
			--end
		--else
		    --outputChatBox("(You are not a member of Gang Faction)", source,  255, 194, 15, true)
		--end
	end
end

function Key_1_Jewe()
    for i, v in ipairs(getElementsByType("player")) do
        bindKey(v, "h", "down", StartRobJewelry)
    end
end
addEventHandler("onResourceStart", getResourceRootElement(getThisResource()), Key_1_Jewe)

function Key_2_Jewe()
    bindKey(source, "h", "down", StartRobJewelry)
end
addEventHandler("onPlayerJoin", getRootElement(), Key_2_Jewe)

function MarkerMoneyHit_1(source)
    setElementFrozen(source, true)
	setPedAnimation(source, "SHOP", "SHP_Serve_Loop", 30000, true, false, false)
	triggerClientEvent(source, "ActiveTimerMoney", getRootElement())
	setMarkerSize(MarkerMoney_1, 0)
	setTimer(function(source)
	    setElementFrozen(source, false)
		triggerClientEvent(source, "ActiveTimerMoney", getRootElement())
		local Money = math.random(100000, 150000)
		exports.global:giveMoney(source, Money)
		outputChatBox("(You stole $"..Money..")", source,  255, 194, 15, true)
		local ID = getElementData(source, "playerid")
		local Name = getPlayerName(source)
		exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the jeweler $"..Money.." !")
	end,30000,1,source)
end
addEventHandler("onMarkerHit", MarkerMoney_1, MarkerMoneyHit_1)

function MarkerMoneyHit_2(source)
    setElementFrozen(source, true)
	setPedAnimation(source, "SHOP", "SHP_Serve_Loop", 30000, true, false, false)
	triggerClientEvent(source, "ActiveTimerMoney", getRootElement())
	setMarkerSize(MarkerMoney_2, 0)
	setTimer(function(source)
	    setElementFrozen(source, false)
		triggerClientEvent(source, "ActiveTimerMoney", getRootElement())
		local Money = math.random(100000, 150000)
		exports.global:giveMoney(source, Money)
		outputChatBox("(You stole $"..Money..")", source,  255, 194, 15, true)
		local ID = getElementData(source, "playerid")
		local Name = getPlayerName(source)
		exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the jeweler $"..Money.." !")
	end,30000,1,source)
end
addEventHandler("onMarkerHit", MarkerMoney_2, MarkerMoneyHit_2)

function MarkerMoneyHit_3(source)
    setElementFrozen(source, true)
	setPedAnimation(source, "SHOP", "SHP_Serve_Loop", 30000, true, false, false)
	triggerClientEvent(source, "ActiveTimerMoney", getRootElement())
	setMarkerSize(MarkerMoney_3, 0)
	setTimer(function(source)
	    setElementFrozen(source, false)
		triggerClientEvent(source, "ActiveTimerMoney", getRootElement())
		local Money = math.random(100000, 150000)
		exports.global:giveMoney(source, Money)
		outputChatBox("(You stole $"..Money..")", source,  255, 194, 15, true)
		local ID = getElementData(source, "playerid")
		local Name = getPlayerName(source)
		exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the jeweler $"..Money.." !")
	end,30000,1,source)
end
addEventHandler("onMarkerHit", MarkerMoney_3, MarkerMoneyHit_3)

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

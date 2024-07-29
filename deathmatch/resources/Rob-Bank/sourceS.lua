
--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

local DoorBankObject = createObject(2634, 2344.9384765625, 2355.5224609375, 2010.3991699219, 3, 5, 185.24055480957)
local MarkerBankRob = createMarker(1793.85, -1362.23, 14.39-0.95, "cylinder", 1.5, 0, 156, 255, 100)

local MarkerBankMoney_1 = createMarker(1813.76, -1365.76, 14.39-0.95, "cylinder", 1, 0, 156, 255, 100)
local MarkerBankMoney_2 = createMarker(1813.76, -1364.25, 14.39-0.95, "cylinder", 1, 0, 156, 255, 100)
local MarkerBankMoney_3 = createMarker(1813.76, -1363.03, 14.39-0.95, "cylinder", 1, 0, 156, 255, 100)
local MarkerBankMoney_4 = createMarker(1813.76, -1361.68, 14.39-0.95, "cylinder", 1, 0, 156, 255, 100)
local MarkerBankMoney_5 = createMarker(1813.76, -1360.36, 14.39-0.95, "cylinder", 1, 0, 156, 255, 100)
local MarkerBankMoney_6 = createMarker(1813.76, -1358.93, 14.39-0.95, "cylinder", 1, 0, 156, 255, 100)

setMarkerSize(MarkerBankMoney_1, 0)
setMarkerSize(MarkerBankMoney_2, 0)
setMarkerSize(MarkerBankMoney_3, 0)
setMarkerSize(MarkerBankMoney_4, 0)
setMarkerSize(MarkerBankMoney_5, 0)
setMarkerSize(MarkerBankMoney_6, 0)

function EnterMarkerBankRob(source)
    triggerClientEvent(source, "ActiveInfoStartBankRob", getRootElement())
end
addEventHandler("onMarkerHit", MarkerBankRob, EnterMarkerBankRob)

function LeaveMarkerBankRob(source)
    triggerClientEvent(source, "ActiveInfoStartBankRob", getRootElement())
end
addEventHandler("onMarkerLeave", MarkerBankRob, LeaveMarkerBankRob)

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

function BankRobStart(source)
    if isElementWithinMarker(source, MarkerBankRob) then
	    --local PlayersInTeam = getElementData(source, "faction") -- Faction Player information code
		--local FactionID = 80 -- Faction ID that a member must be a member of to start
		--if tonumber(PlayersInTeam) == tonumber(FactionID) then
		    --local FactionIDPolice = 1 -- Faction ID Police
		    --if GetOnlineDuty(FactionIDPolice) < 6 then 
			    outputChatBox("(You started robbing the bank)", source,  255, 194, 15, true)
				triggerClientEvent(source, "ActiveTimerRobBankStart", getRootElement())
				triggerClientEvent(root, "StartRobBankAlarm", root, source)
				setMarkerSize(MarkerBankRob, 0)
				setElementFrozen(source, true)
				setElementRotation(source, 0, 0, 270)
				setPedAnimation(source, "SHOP", "SHP_Serve_End", 5000, true, false, true)
				local ID = getElementData(source, "playerid")
				local Name = getPlayerName(source)
				exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the bank!")
				--local MassageFactionID = 1 -- The faction ID to which the message should be sent to its members
				--local teamPlayers = getPlayersInTeam(exports.factions:getTeamFromFactionID(MassageFactionID))
				--for k, v in ipairs(teamPlayers) do
				    --outputChatBox("[Log] Stolen from the bank!", v, 0, 252, 255)
				--end
				setTimer(function(source)
				    triggerClientEvent(source, "ActiveTimerRobBankStart", getRootElement())
					setElementFrozen(source, false)
					setPedAnimation(source, nil)
					if isPedDead(source) then
					    outputChatBox("(You die and the heist fails)", source,  255, 194, 15, true) return
					else
					    outputChatBox("(The door was opened, steal the money)", source,  255, 194, 15, true)
						moveObject(DoorBankObject, 1800, 1796.19, -1362.90, 14.89, 0, 0, -70, "OutBounce")
						setMarkerSize(MarkerBankMoney_1, 1)
						setMarkerSize(MarkerBankMoney_2, 1)
						setMarkerSize(MarkerBankMoney_3, 1)
						setMarkerSize(MarkerBankMoney_4, 1)
						setMarkerSize(MarkerBankMoney_5, 1)
						setMarkerSize(MarkerBankMoney_6, 1)
						setTimer(function(source)
						    setMarkerSize(MarkerBankMoney_1, 0)
							setMarkerSize(MarkerBankMoney_2, 0)
							setMarkerSize(MarkerBankMoney_3, 0)
							setMarkerSize(MarkerBankMoney_4, 0)
							setMarkerSize(MarkerBankMoney_5, 0)
							setMarkerSize(MarkerBankMoney_6, 0)
						end,300000,1,source)
					end
				end,120000,1,source)
				setTimer(function(source)
				    setMarkerSize(MarkerBankRob, 1.5)
					moveObject(DoorBankObject, 1800, 1795.30, -1362.19, 14.89, 0, 0, 70, "OutBounce")
				end,1800000,1,source)
			--else
			    --outputChatBox("(6 policemen are not on duty in the server)", source,  255, 194, 15, true)
			--end
		--else
		    --outputChatBox("(You are not a member of Gang Faction)", source,  255, 194, 15, true)
		--end
	end
end

function Key_1_Bank()
    for i, v in ipairs(getElementsByType("player")) do
        bindKey(v, "h", "down", BankRobStart)
    end
end
addEventHandler("onResourceStart", getResourceRootElement(getThisResource()), Key_1_Bank)

function Key_2_Bank()
    bindKey(source, "h", "down", BankRobStart)
end
addEventHandler("onPlayerJoin", getRootElement(), Key_2_Bank)

function EnterMarkerBankMoney_1(source)
    setElementFrozen(source, true)
	setPedAnimation(source, "bomber", "BOM_Plant_Loop", 30000, true, false, false)
	triggerClientEvent(source, "ActiveTimerBankMoney", getRootElement())
	setMarkerSize(MarkerBankMoney_1, 0)
	setTimer(function(source)
	    setElementFrozen(source, false)
		setPedAnimation(source, nil)
		triggerClientEvent(source, "ActiveTimerBankMoney", getRootElement())
		local Money = math.random(100000, 150000)
		exports.global:giveMoney(source, Money)
		outputChatBox("(You stole $"..Money..")", source,  255, 194, 15, true)
		local ID = getElementData(source, "playerid")
		local Name = getPlayerName(source)
		exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the bank $"..Money.." !")
	end,30000,1,source)
end
addEventHandler("onMarkerHit", MarkerBankMoney_1, EnterMarkerBankMoney_1)

function EnterMarkerBankMoney_2(source)
    setElementFrozen(source, true)
	setPedAnimation(source, "bomber", "BOM_Plant_Loop", 30000, true, false, false)
	triggerClientEvent(source, "ActiveTimerBankMoney", getRootElement())
	setMarkerSize(MarkerBankMoney_2, 0)
	setTimer(function(source)
	    setElementFrozen(source, false)
		setPedAnimation(source, nil)
		triggerClientEvent(source, "ActiveTimerBankMoney", getRootElement())
		local Money = math.random(100000, 150000)
		exports.global:giveMoney(source, Money)
		outputChatBox("(You stole $"..Money..")", source,  255, 194, 15, true)
		local ID = getElementData(source, "playerid")
		local Name = getPlayerName(source)
		exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the bank $"..Money.." !")
	end,30000,1,source)
end
addEventHandler("onMarkerHit", MarkerBankMoney_2, EnterMarkerBankMoney_2)

function EnterMarkerBankMoney_3(source)
    setElementFrozen(source, true)
	setPedAnimation(source, "bomber", "BOM_Plant_Loop", 30000, true, false, false)
	triggerClientEvent(source, "ActiveTimerBankMoney", getRootElement())
	setMarkerSize(MarkerBankMoney_3, 0)
	setTimer(function(source)
	    setElementFrozen(source, false)
		setPedAnimation(source, nil)
		triggerClientEvent(source, "ActiveTimerBankMoney", getRootElement())
		local Money = math.random(100000, 150000)
		exports.global:giveMoney(source, Money)
		outputChatBox("(You stole $"..Money..")", source,  255, 194, 15, true)
		local ID = getElementData(source, "playerid")
		local Name = getPlayerName(source)
		exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the bank $"..Money.." !")
	end,30000,1,source)
end
addEventHandler("onMarkerHit", MarkerBankMoney_3, EnterMarkerBankMoney_3)

function EnterMarkerBankMoney_4(source)
    setElementFrozen(source, true)
	setPedAnimation(source, "bomber", "BOM_Plant_Loop", 30000, true, false, false)
	triggerClientEvent(source, "ActiveTimerBankMoney", getRootElement())
	setMarkerSize(MarkerBankMoney_4, 0)
	setTimer(function(source)
	    setElementFrozen(source, false)
		setPedAnimation(source, nil)
		triggerClientEvent(source, "ActiveTimerBankMoney", getRootElement())
		local Money = math.random(100000, 150000)
		exports.global:giveMoney(source, Money)
		outputChatBox("(You stole $"..Money..")", source,  255, 194, 15, true)
		local ID = getElementData(source, "playerid")
		local Name = getPlayerName(source)
		exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the bank $"..Money.." !")
	end,30000,1,source)
end
addEventHandler("onMarkerHit", MarkerBankMoney_4, EnterMarkerBankMoney_4)

function EnterMarkerBankMoney_5(source)
    setElementFrozen(source, true)
	setPedAnimation(source, "bomber", "BOM_Plant_Loop", 30000, true, false, false)
	triggerClientEvent(source, "ActiveTimerBankMoney", getRootElement())
	setMarkerSize(MarkerBankMoney_5, 0)
	setTimer(function(source)
	    setElementFrozen(source, false)
		setPedAnimation(source, nil)
		triggerClientEvent(source, "ActiveTimerBankMoney", getRootElement())
		local Money = math.random(100000, 150000)
		exports.global:giveMoney(source, Money)
		outputChatBox("(You stole $"..Money..")", source,  255, 194, 15, true)
		local ID = getElementData(source, "playerid")
		local Name = getPlayerName(source)
		exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the bank $"..Money.." !")
	end,30000,1,source)
end
addEventHandler("onMarkerHit", MarkerBankMoney_5, EnterMarkerBankMoney_5)

function EnterMarkerBankMoney_6(source)
    setElementFrozen(source, true)
	setPedAnimation(source, "bomber", "BOM_Plant_Loop", 30000, true, false, false)
	triggerClientEvent(source, "ActiveTimerBankMoney", getRootElement())
	setMarkerSize(MarkerBankMoney_6, 0)
	setTimer(function(source)
	    setElementFrozen(source, false)
		setPedAnimation(source, nil)
		triggerClientEvent(source, "ActiveTimerBankMoney", getRootElement())
		local Money = math.random(100000, 150000)
		exports.global:giveMoney(source, Money)
		outputChatBox("(You stole $"..Money..")", source,  255, 194, 15, true)
		local ID = getElementData(source, "playerid")
		local Name = getPlayerName(source)
		exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the bank $"..Money.." !")
	end,30000,1,source)
end
addEventHandler("onMarkerHit", MarkerBankMoney_6, EnterMarkerBankMoney_6)

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

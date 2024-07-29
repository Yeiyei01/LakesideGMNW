
--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

local KeyStartRobATM = "h"

local Object = createObject(2942, 383.90091, -2081.57227, 7.4, 0, 0, 180);
local Marker = createMarker(383.90659, -2080.70, 7.83-0.95, "cylinder", 1, 0, 156, 255, 100);

function MassageJoinMarker(source)
	triggerClientEvent(source, "EnableMassageMarker", getRootElement())
end
addEventHandler("onMarkerHit", Marker, MassageJoinMarker)

function MassageLeaveMarker(source)
	triggerClientEvent(source, "EnableMassageMarker", getRootElement())
end
addEventHandler("onMarkerLeave", Marker, MassageLeaveMarker)

function StartRobATM(source)
    if isElementWithinMarker(source, Marker) then
	    --local PlayersInTeam = getElementData(source, "faction") -- Faction Player information code
		--local FactionID = 80 -- Faction ID that a member must be a member of to start
		--if tonumber(PlayersInTeam) == tonumber(FactionID) then
		    --local FactionIDPolice = 1 -- Faction ID Police
		    --if GetOnlineDuty(FactionIDPolice) < 2 then 
	            outputChatBox("(You started robbing the ATM)", source,  255, 194, 15, true)
		        setElementFrozen(source, true)
		        setPedAnimation(source, "INT_SHOP", "shop_cashier", -1, true, false, true)
		        setElementRotation(source, 0, 0, 180)
		        setMarkerSize(Marker, 0)
		        triggerClientEvent(source, "EnableTimer3D", getRootElement())
				local ID = getElementData(source, "playerid")
				local Name = getPlayerName(source)
				exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the ATM!")
				--local MassageFactionID = 1 -- The faction ID to which the message should be sent to its members
				--local teamPlayers = getPlayersInTeam(exports.factions:getTeamFromFactionID(MassageFactionID))
				--for k, v in ipairs(teamPlayers) do
				    --outputChatBox("[Log] Stolen from the shop!", v, 0, 252, 255)
				--end
		        setTimer(function(source)
		            setElementFrozen(source, false)
			        setPedAnimation(source, nil)
			        local Money = math.random(50000, 80000)
			        exports.global:giveMoney(source, Money)
			        outputChatBox("(You stole $"..Money.." from the ATM)", source,  255, 194, 15, true)
			        local ID = getElementData(source, "playerid")
			        local Name = getPlayerName(source)
			        exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the ATM $"..Money.." !")
		        end,90000,1,source)
		        setTimer(function(source)
		            setMarkerSize(Marker, 1)
		        end,1200000,1,source)
			--else
			    --outputChatBox("(2 policemen are not on duty in the server)", source,  255, 194, 15, true)
			--end
		--else
		    --outputChatBox("(You are not a member of Gang Faction)", source,  255, 194, 15, true)
		--end
	end
end

function StartBindKey()
    for i, v in ipairs(getElementsByType("player")) do
        bindKey ( v, KeyStartRobATM, "down", StartRobATM )
    end
end
addEventHandler("onResourceStart", getResourceRootElement(getThisResource()), StartBindKey)

function JoinBindKey()
    bindKey ( source, KeyStartRobATM, "down", StartRobATM )
end
addEventHandler("onPlayerJoin", getRootElement(), JoinBindKey)

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

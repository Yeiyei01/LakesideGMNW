
--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

local MarkerStart = createMarker(245.06640625, -54.3564453125, 1.5776442289352-0.95, "cylinder", 1, 0, 156, 255, 100)
local MarkerLeave = createMarker(254.72265625, -62.853515625, 1.578125-0.95, "cylinder", 2.5, 0, 156, 255, 0)
setMarkerSize(MarkerLeave, 0)

function EnterMarkerLeave(source)
    if getElementData(source, "GameLight:RobLeave") == true then
	    setElementData(source, "GameLight:RobLeave", false)
		setMarkerSize(MarkerLeave, 0)
		triggerClientEvent(source, "ActiveTimerRobShop", getRootElement())
		outputChatBox("(Te has alejado de la zona de robo, se canceló el robo)", source,  255, 194, 15, true)
	end
end
addEventHandler("onMarkerHit", MarkerLeave, EnterMarkerLeave)

function EnterMarker(source)
    triggerClientEvent(source, "ActiveInfoInMarker", getRootElement())
end
addEventHandler("onMarkerHit", MarkerStart, EnterMarker)

function LeaveMarker(source)
    triggerClientEvent(source, "ActiveInfoInMarker", getRootElement())
end
addEventHandler("onMarkerLeave", MarkerStart, LeaveMarker)

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

function StartRobShop(source)
    if isElementWithinMarker(source, MarkerStart) then
	    --local PlayersInTeam = getElementData(source, "faction") -- Faction Player information code
		--local FactionID = 80 -- Faction ID that a member must be a member of to start
		if tonumber(PlayersInTeam) == tonumber(FactionID) then
		    local FactionIDPolice = 1 -- Faction ID Police
		    if GetOnlineDuty(FactionIDPolice) < 2 then 
			    outputChatBox("(El robo ha comenzado, espera el tiempo mostrado)", source,  255, 194, 15, true)
				triggerClientEvent(source, "ActiveTimerRobShop", getRootElement())
				triggerClientEvent(root, "StartRobAlarm", root, source)
				setMarkerSize(MarkerStart, 0)
				setMarkerSize(MarkerLeave, 2.5)
				setElementData(source, "GameLight:RobLeave", true)
				setElementRotation(source, 0, 0, 0)
				setPedAnimation(source, "bomber", "BOM_Plant_Loop", 1000, true, false, true)
				local ID = getElementData(source, "playerid")
				local Name = getPlayerName(source)
				exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the shop!")
				--local MassageFactionID = 1 -- The faction ID to which the message should be sent to its members
				--local teamPlayers = getPlayersInTeam(exports.factions:getTeamFromFactionID(MassageFactionID))
				--for k, v in ipairs(teamPlayers) do
				    --outputChatBox("[Log] Stolen from the shop!", v, 0, 252, 255)
				--end
				setTimer(function(source)
				    if getElementData(source, "GameLight:RobLeave") == true then
				        triggerClientEvent(source, "ActiveTimerRobShop", getRootElement())
						setPedAnimation(source, nil)
					end
					if isPedDead(source) then
					    outputChatBox("(Has muerto, así que el robo se ha cancelado)", source,  255, 194, 15, true)
						setElementData(source, "GameLight:RobLeave", false)
						setMarkerSize(MarkerLeave, 0)
					else
					    if getElementData(source, "GameLight:RobLeave") == true then
					        local Money = math.random(80000, 130000)
						    exports.global:giveMoney(source, Money)
						    setElementData(source, "GameLight:RobLeave", false)
						    setMarkerSize(MarkerLeave, 0)
						    outputChatBox("(Has robado $"..Money..")", source,  255, 194, 15, true)
							local ID = getElementData(source, "playerid")
							local Name = getPlayerName(source)
							exports.global:sendMessageToAdmins("[Admin-Log] ID:("..ID..") "..Name.." stole from the shop $"..Money.." !")
						end
					end
				end,120000,1,source)
				setTimer(function(source)
				    setMarkerSize(MarkerStart, 1)
				end,1800000,1,source)
			else
			    outputChatBox("(2 policemen are not on duty in the server)", source,  255, 194, 15, true)
			end
		--else
		    --outputChatBox("(You are not a member of Gang Faction)", source,  255, 194, 15, true)
		end
	end
end

function Key_1()
    for i, v in ipairs(getElementsByType("player")) do
        bindKey(v, "h", "down", StartRobShop)
    end
end
addEventHandler("onResourceStart", getResourceRootElement(getThisResource()), Key_1)

function Key_2()
    bindKey(source, "h", "down", StartRobShop)
end
addEventHandler("onPlayerJoin", getRootElement(), Key_2)

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

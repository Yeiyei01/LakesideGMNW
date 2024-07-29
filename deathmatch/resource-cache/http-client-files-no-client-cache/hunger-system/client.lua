addEventHandler ("onClientResourceStart",getResourceRootElement(getThisResource()),
function ()
	setTimer (lowerHunger,150000,0,getLocalPlayer())
	setTimer (lowerThirst,120000,0,getLocalPlayer())
end)

setTimer(function() 
		if not getElementData(getLocalPlayer(), "loggedin") or getElementData(getLocalPlayer(), "loggedin") == 0 then
			return
		end
		if getPlayerHunger(getLocalPlayer()) <= 10 then triggerServerEvent("hunger:autoEmote", getLocalPlayer()) end end, 900000, 0)

setTimer(function()
		if not getElementData(getLocalPlayer(), "loggedin") or getElementData(getLocalPlayer(), "loggedin") == 0 then
			return
		end
		if (getPlayerHunger(getLocalPlayer()) <= 10) then
			setElementHealth(getLocalPlayer(), getElementHealth(getLocalPlayer()) - 0.2)
		elseif (getPlayerHunger(getLocalPlayer()) <= 0) then
			setElementHealth(getLocalPlayer(), getElementHealth(getLocalPlayer()) - 0.5)
		else
			setElementHealth(getLocalPlayer(), getElementHealth(getLocalPlayer()) + 2)
		end
		
		if (getPlayerThirst(getLocalPlayer()) <= 10) then
			setElementHealth(getLocalPlayer(), getElementHealth(getLocalPlayer()) - 0.5)
		elseif (getPlayerThirst(getLocalPlayer()) <= 0) then
			setElementHealth(getLocalPlayer(), getElementHealth(getLocalPlayer()) - 1)
		else
			setElementHealth(getLocalPlayer(), getElementHealth(getLocalPlayer()) + 2.5)
		end end, 60000, 0)

function lowerHunger (player)
	if not getElementData(player, "loggedin") or getElementData(getLocalPlayer(), "loggedin") == 0 then
		return
	end
	if (player == getLocalPlayer()) then
		if not (getPlayerHunger(player) <= 0) then
			return setElementData(player, "hunger", getPlayerHunger(player) - 1)
		end
	end
end

function lowerThirst (player)
	if not getElementData(player, "loggedin") or getElementData(getLocalPlayer(), "loggedin") == 0 then
		return
	end
	if (player == getLocalPlayer()) then
		if not (getPlayerHunger(player) <= 0) then
			return setElementData(player, "thirst", getPlayerHunger(player) - 1)
		end
	end
end

-- EXPORTS
function getPlayerHunger(player)
	if (player == getLocalPlayer()) then
		return getElementData(player, "hunger")
	end
end

function getPlayerThirst(player)
	if (player == getLocalPlayer()) then
		return getElementData(player, "thirst")
	end
end
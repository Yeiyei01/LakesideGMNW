function ogren(thePlayer,cmd)
local data = getElementData(thePlayer, "sapka")
local data1 = tonumber(data)
outputChatBox(""..data1.."",thePlayer,255,255,255)
end
addCommandHandler("estudiantes",ogren)

function dsa(thePlayer,cmd)
setElementData(thePlayer, "sapka",1)
end
addCommandHandler("siestudiante",dsa)

function setHunger(thePlayer, commandName, targetPlayerName, hunger)
	if exports.integration:isPlayerAdmin(thePlayer) then
		if not targetPlayerName or not hunger then
			outputChatBox("CMD: /" .. commandName .. " [Nombre / ID] [Hambre]", thePlayer, 255, 194, 14)
		else
			local targetPlayer, targetPlayerName = exports.global:findPlayerByPartialNick( thePlayer, targetPlayerName )
			if not targetPlayer then
			elseif getElementData( targetPlayer, "loggedin" ) ~= 1 then
				outputChatBox( "El jugador aún no ha iniciado sesión.", thePlayer, 255, 0, 0 )
			else
				exports.anticheat:changeProtectedElementData(targetPlayer, "hunger", tonumber(hunger))
				exports.hud:sendBottomNotification(thePlayer, targetPlayerName .. " se le cambio el hambre a %" .. hunger .. ".")
				exports.hud:sendBottomNotification(targetPlayer, "Tu hambre ha sido cambiada por un staff, ahora es %" .. hunger .. ".")
			end
		end
	end
end
addCommandHandler("sethunger", setHunger)

-- /setthirst for Admin+
function setThirst(thePlayer, commandName, targetPlayerName, thirst)
	if exports.integration:isPlayerAdmin(thePlayer) then
		if not targetPlayerName or not thirst then
			outputChatBox("CMD: /" .. commandName .. " [Nombre / ID] [Sed]", thePlayer, 255, 194, 14)
		else
			local targetPlayer, targetPlayerName = exports.global:findPlayerByPartialNick( thePlayer, targetPlayerName )
			if not targetPlayer then
			elseif getElementData( targetPlayer, "loggedin" ) ~= 1 then
				outputChatBox( "El jugador aún no ha iniciado sesión.", thePlayer, 255, 0, 0 )
			else
				exports.anticheat:changeProtectedElementData(targetPlayer, "thirst", tonumber(thirst))
				exports.hud:sendBottomNotification(thePlayer, targetPlayerName .. " se le cambio la sed a %" .. thirst .. ".")
				exports.hud:sendBottomNotification(targetPlayer, "Tu sed ha sido cambiada por un staff, ahora tienes %" .. thirst .. ".")
			end
		end
	end
end
addCommandHandler("setthirst", setThirst)

function autoEmote()
	exports.global:sendLocalDoAction(source, "Es posible que escuche un ruido de estómago.")
end
addEvent("hunger:autoEmote", true)
addEventHandler("hunger:autoEmote", getRootElement(), autoEmote)

-- EXPORTS
function getPlayerHunger(player)
	return getElementData(player, "hunger")
end

function getPlayerThirst(player)
	return getElementData(player, "thirst")
end

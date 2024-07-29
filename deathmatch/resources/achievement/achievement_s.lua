mysql = exports.mysql

function awardPlayer(thePlayer, title, desc, gc)
	if gc and tonumber(gc) and tonumber(gc) >= 0 then
		if dbExec(exports.mysql:getConn("core"), "UPDATE `accounts` SET `credits`=credits+? WHERE `id`=?", gc, getElementData( thePlayer, "account:id") ) then
			local currentCredits = getElementData(thePlayer, "credits")
			setElementData(thePlayer, "credits", currentCredits + gc)
			triggerClientEvent(thePlayer, "displayAchievement", source or thePlayer, title, desc, gc)
			exports.donators:addPurchaseHistory(thePlayer, title or "LOGRO DESBLOQUEADO "..(desc and ("("..desc..")") or ("")), tonumber(gc))
		else
			outputChatBox("Se te ha regalado "..gc.."LakeCoins.", thePlayer, 255, 0, 0)
			outputChatBox("Pero, desafortunadamente ha ocurrido un error en la base de datos :(...", thePlayer, 255, 0, 0)
		end
	end
end
addEvent("awardPlayer", true)
addEventHandler("awardPlayer", root, awardPlayer)

function playSoundFx(thePlayer)
	triggerClientEvent(thePlayer, "playSoundFx", thePlayer)
end
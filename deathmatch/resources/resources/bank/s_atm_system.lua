--MAXIME
--ATM Card system
local cooldown = {}


function checkInsideATMMachine(theATM, absX, absY)
	local foundAnATMCard = getATMCardFromATMMachine(theATM)
	if not foundAnATMCard then
		exports.hud:sendBottomNotification(source,"Tarjeta ATM requerida", "Por favor, coloque una tarjeta ATM en el cajero")
		return false
	end

	local cardOwner, cardNumber, cardOwnerCharID = getCardInfo(foundAnATMCard)
	if not cardOwnerCharID then
		triggerClientEvent( client, "bank:respondToPendingTransfer", client, "Tu tarjeta ATM ha expirado. Por favor, consigue una nueva en el banco.")
		ejectATMCard(theATM, source)
		return false
	end
	local atmLocationName = exports.global:getElementZoneName(theATM)
	triggerClientEvent(source,"bank:ATMCardInteractions", source, theATM, foundAnATMCard, absX, absY, atmLocationName)
end
addEvent( "bank:checkInsideATMMachine", true )
addEventHandler( "bank:checkInsideATMMachine", getRootElement(), checkInsideATMMachine )

--[[function iAmTester(thePlayer)
	if setElementData(thePlayer, "IAmTester", not getElementData(thePlayer, "IAmTester"), true) then
		exports.hud:sendBottomNotification(thePlayer,"Maxime's Tester",( ( getElementData(thePlayer, "IAmTester") and "You're now a Maxime's Tester. Do not leak this cmd to new player. Thank you :3" ) or ("You're no longer a Maxime's Tester") ))
	end
end
addCommandHandler("iamtester",iAmTester)]]

function isAltToAlt(source, item)
	local result = exports.mysql:query_fetch_assoc("SELECT account FROM characters WHERE id='"..exports.mysql:escape_string(item).."'")
	if result then
		if tostring(result["account"]) == tostring(getElementData(source, "account:id")) then
			return true
		end
	end
	return false
end

function takeOutATMCard(theATM, item)
	local v = split( item[2], ";" )[2]
	if tonumber(v) ~= tonumber(getElementData(source, "account:character:id")) then
		if isAltToAlt(source, v) then
			outputChatBox("Denegado - Tarjeta borrada.", source, 255, 0, 0)
			exports["item-system"]:takeItem(theATM, item[1], item[2])
			return
		end
	end
	if exports["item-system"]:takeItem(theATM, item[1], item[2]) then
		if exports["item-system"]:giveItem(source, item[1], item[2]) then
			triggerEvent('sendAme',  source, "coloca la tarjeta ATM en la ranura del cajero." )
			playAtmInsert(theATM) --SoundFX
		else
			triggerEvent('sendAme',  source, "trata de sacar la tarjeta del cajero pero falla." )
			exports["item-system"]:giveItem(theATM, item[1], item[2])
			exports.hud:sendBottomNotification(source,"Cajero ATM", "Tu inventario está lleno.")
		end
	else
		triggerEvent('sendAme',  source, "trata de sacar la tarjeta del cajero pero falla." )
	end
end
addEvent( "bank:takeOutATMCard", true )
addEventHandler( "bank:takeOutATMCard", getRootElement(), takeOutATMCard )


local cooldownSec = 5000

function applyForNewATMCard(replacingOldATMCard, limitType)
	local playerName = getPlayerName(source)
	local playerGender = (getElementData(source,"gender") == 0) and "señor" or "madam"
	local charID = getElementData(source,"dbid")
	--[[
	if not replacingOldATMCard and cooldown[source] and ((getTickCount() - cooldown[source]) < 1000*cooldownSec) then
		exports.hud:sendBottomNotification(source, "Maxime Du Trieux says:", "'I'm sorry, "..playerGender..". Our system is currently busy, please come back later'")
		return false
	end
	]]

	if not replacingOldATMCard then
		local check = mysql:query_fetch_assoc("SELECT * FROM `atm_cards` WHERE `card_type`='1' AND `card_owner`='"..charID.."' ")
		if check then
			if check["card_id"] then
				exports.hud:sendBottomNotification(source, "Maxime Du Trieux dice:", "'Lo siento,"..playerGender.." pero no permitimos multiples tarjetas'")
				triggerClientEvent(source, "atm:atmCardExisted", source)
				return false
			end
		else
			triggerClientEvent(source, "atm:chooseAtm", source)
			return false
		end
	else
		triggerEvent("bank:cancelATMCard", source, true)
	end

	local numSum = false
	while true do
		local num1 = tostring(math.random(0,9999))
		local num2 = tostring(math.random(0,9999))
		local num3 = tostring(math.random(0,9999))
		local num4 = tostring(math.random(0,9999))
		numSum = num1.." "..num2.." "..num3.." "..num4
		--outputDebugString(numSum)
		if string.len(numSum) == 19 then
			local checkNumber = mysql:query_fetch_assoc("SELECT `card_number` FROM `atm_cards` WHERE `card_number`='"..numSum.."' ")
			if (not checkNumber or checkNumber["card_number"]==mysql_null() or checkNumber["card_number"] ~= numSum) then
				break
			end
		end
	end

	if not numSum then
		exports.hud:sendBottomNotification(source, "SQL Error", "An SQL Error CODE01 has occured in Bank System. Please report this on http://bugs.owlgaming.net")
		return false
	end

	if not exports.global:hasSpaceForItem(source, 150, 1) then
		exports.hud:sendBottomNotification(source, "Inventory", "Tu inventario está lleno, borra algo y intenta denuevo.")
		return false
	end

	if not limitType then
		limitType = 1
	end

	if limitType == 2 then
		if not exports.global:takeMoney(source, 200) then
			exports.hud:sendBottomNotification(source, "Maxime Du Trieux dice:", "'Me daría 200 dólares, por favor "..playerGender.."'.")
			return false
		end
	elseif limitType == 3 then
		if not exports.global:takeMoney(source, 500) then
			exports.hud:sendBottomNotification(source, "Maxime Du Trieux dice:", "'Me daría 200 dólares, por favor "..playerGender.."'.")
			return false
		end
	else
		if not exports.global:takeMoney(source, 50) then
			exports.hud:sendBottomNotification(source, "Maxime Du Trieux dice:", "'Me daría 50 dólares, por favor "..playerGender.."'.")
			return false
		end
	end

	if not exports.global:giveItem(source, 150, numSum..";"..charID..";"..limitType) then
		exports.hud:sendBottomNotification(source, "Internal Error", "An SQL Error CODE0223 has occured in Bank System. Please report this on http://bugs.owlgaming.net.")
		return false
	end

	local makeNewCard = mysql:query_free("INSERT INTO `atm_cards`(`card_owner`, `card_number`, `limit_type`) VALUES ('"..tostring(charID).."', '"..numSum.."', '"..limitType.."') ")
	if not makeNewCard then
		exports.hud:sendBottomNotification(source, "SQL Error", "An SQL Error CODE02 has occured in Bank System. Please report this on http://bugs.owlgaming.net.")
		return false
	end

	triggerEvent('sendAme', source, "takes some dollar notes and gives them to Maxime Du Trieux.")
	exports.global:sendLocalText(source, "* Maxime Du Trieux gives "..tostring(playerName):gsub("_"," ").." a sleek plastic ATM card.", 255, 51, 102, 30, {}, true)

	exports.hud:sendBottomNotification(source, "Maxime Du Trieux dice:", "'Muchas gracias,"..playerGender.."! Aquí tiene su tarjeta ATM (Numero de tarjeta: '"..numSum.."', PIN: '0000').'")

	--cooldown[source] = getTickCount()
end
addEvent( "bank:applyForNewATMCard", true )
addEventHandler( "bank:applyForNewATMCard", getRootElement(), applyForNewATMCard )

function lockATMCard()
	local playerName = getPlayerName(source)
	local playerGender = (getElementData(source,"gender") == 0) and "señor" or "señorita"
	local charID = getElementData(source,"dbid")
	--[[
	if cooldown[source] and ((getTickCount() - cooldown[source]) < 1000*cooldownSec) then
		exports.hud:sendBottomNotification(source, "Maxime Du Trieux says:", "'I'm sorry, "..playerGender..". Our system is currently busy, please come back later'")
		return false
	end
	]]

	local iban = ""
	local check = mysql:query_fetch_assoc("SELECT `card_id`, `card_locked`, `card_pin`, `card_number` FROM `atm_cards` WHERE `card_type`='1' AND `card_owner`='"..tostring(charID).."' ")
	if check and check["card_locked"] then
		iban = check["card_number"]
		if check["card_locked"] == "1" then
			exports.hud:sendBottomNotification(source, "Maxime Du Trieux dice:", "'Oh, bueno, creo que su tarjeta de cajero automático ya había sido bloqueada'.")
			return false
		end
	else
		exports.hud:sendBottomNotification(source, "Maxime Du Trieux dice:", "'Hm..estás seguro de que has solicitado una aquí,"..playerGender.."? Porque no encuentro tu nombre en la base de datos'.")
		return false
	end

	local cardID = check["card_id"]

	local lockATMCard = mysql:query_free("UPDATE `atm_cards` SET `card_locked`='1' WHERE `card_id` = '".. cardID .."' ")
	if not lockATMCard then
		exports.hud:sendBottomNotification(source, "SQL Error", "An SQL Error CODE03 has occured in Bank System. Please report this to admin Maxime.")
		return false
	end

	exports.hud:sendBottomNotification(source, "Maxime Du Trieux dice:", "'Tu tarjeta ATM con el numero '"..iban.."' ha sido bloqueada, "..playerGender.."'.")
	--cooldown[source] = getTickCount()
end
addEvent( "bank:lockATMCard", true )
addEventHandler( "bank:lockATMCard", getRootElement(), lockATMCard )

function unlockATMCard()
	local playerName = getPlayerName(source)
	local playerGender = (getElementData(source,"gender") == 0) and "señor" or "señorita"
	local charID = getElementData(source,"dbid")
	--[[
	if cooldown[source] and ((getTickCount() - cooldown[source]) < 1000*cooldownSec) then
		exports.hud:sendBottomNotification(source, "Maxime Du Trieux says:", "'I'm sorry, "..playerGender..". Our system is currently busy, please come back later'")
		return false
	end
	]]

	local iban = ""
	local check = mysql:query_fetch_assoc("SELECT `card_id`, `card_locked`, `card_pin`, `card_number` FROM `atm_cards` WHERE `card_owner`='"..tostring(charID).."' ")
	if check and check["card_locked"] then
		iban = check["card_number"]
		if check["card_locked"] == "0" then
			exports.hud:sendBottomNotification(source, "Maxime Du Trieux dice:", "'Oh, bueno, creo que tu tarjeta de cajero automático no estaba bloqueada en absoluto'.")
			return false
		end
	else
		exports.hud:sendBottomNotification(source, "Maxime Du Trieux dice:", "'Hm..estás seguro de que has solicitado una aquí,"..playerGender.."? Porque no encuentro su nombre en la base de datos.")
		return false
	end

	local cardID = check["card_id"]

	local unlockATMCard = mysql:query_free("UPDATE `atm_cards` SET `card_locked`='0' WHERE `card_id` = '".. cardID .."' ")
	if not unlockATMCard then
		exports.hud:sendBottomNotification(source, "SQL Error", "An SQL Error CODE03 has occured in Bank System. Please report this to admin Maxime.")
		return false
	end

	exports.hud:sendBottomNotification(source, "Maxime Du Trieux says:", "'Tu tarjeta ATM con el numero '"..iban.."' ha sido desbloqueada, "..playerGender.."'.")
	--cooldown[source] = getTickCount()
end
addEvent( "bank:unlockATMCard", true )
addEventHandler( "bank:unlockATMCard", getRootElement(), unlockATMCard )

function recoverATMCard()
	local playerName = getPlayerName(source)
	local playerGender = (getElementData(source,"gender") == 0) and "señor" or "señorita"
	local charID = getElementData(source,"dbid")
	--[[
	if cooldown[source] and ((getTickCount() - cooldown[source]) < 1000*cooldownSec) then
		exports.hud:sendBottomNotification(source, "Maxime Du Trieux says:", "'I'm sorry, "..playerGender..". Our system is currently busy, please come back later'")
		return false
	end
	]]

	local iban = ""
	local bankPin = ""
	local check = mysql:query_fetch_assoc("SELECT `card_id`, `card_locked`, `card_pin`, `card_number`, `limit_type` FROM `atm_cards` WHERE `card_owner`='"..tostring(charID).."' ")
	if check and check["card_number"] then
		iban = check["card_number"]
		bankPin = check["card_pin"]
		-- if check["card_locked"] == "0" then
			-- exports.hud:sendBottomNotification(source, "Maxime Du Trieux says:", "'Oh well, I think your ATM card wasn't locked at all'.")
			-- return false
		-- end
	else
		exports.hud:sendBottomNotification(source, "Maxime Du Trieux dice:", "'Hm..está seguro de que solicitó una aquí,"..playerGender.."? Porque no encuentro su nombre en la base de datos.")
		return false
	end
	local cardID = check["card_id"]

	if not exports.global:takeMoney(source, 50) then
		exports.hud:sendBottomNotification(source, "Maxime Du Trieux dice:", "'Me daría 50 dolares, "..playerGender.."'.")
		return false
	end

	local recoverATMCard = mysql:query_free("UPDATE `atm_cards` SET `card_locked`='0' WHERE `card_id` = '".. cardID .."' ")
	if not recoverATMCard then
		exports.hud:sendBottomNotification(source, "SQL Error", "An SQL Error CODE04 has occured in Bank System. Please report this to admin Maxime.")
		return false
	end

	if not exports.global:giveItem(source, 150, iban..";"..charID..";"..check['limit_type']) then
		exports.global:giveMoney(source, 50)
		exports.hud:sendBottomNotification(source, "Inventory", "Tu inventario está lleno. Borra algo y intenta denuevo. $50 ha sido reembolsado.")
		return false
	end

	triggerEvent('sendAme', source, "coge unos billetes de dólar y se los da a Maxime Du Trieux.")
	exports.global:sendLocalText(source, "* Maxime Du Trieux le da "..tostring(playerName):gsub("_"," ").." una elegante tarjeta de plástico para cajeros automáticos.", 255, 51, 102, 30, {}, true)

	exports.hud:sendBottomNotification(source, "Maxime Du Trieux dice:", "'Muchas gracias,"..playerGender.."! Aquí está tu tarjeta (Número de  tarjeta: '"..iban.."', PIN: '"..bankPin.."').'")

	--cooldown[source] = getTickCount()
end
addEvent( "bank:recoverATMCard", true )
addEventHandler( "bank:recoverATMCard", getRootElement(), recoverATMCard )

function cancelATMCard(replacingOldATMCard)
	local playerName = getPlayerName(source)
	local playerGender = (getElementData(source,"gender") == 0) and "Sir" or "Ma'am"
	local charID = getElementData(source,"dbid")
	--[[
	if not replacingOldATMCard and cooldown[source] and ((getTickCount() - cooldown[source]) < 1000*cooldownSec) then
		exports.hud:sendBottomNotification(source, "Maxime Du Trieux says:", "'I'm sorry, "..playerGender..". Our system is currently busy, please come back later.'")
		return false
	end
	]]

	local iban = ""
	local bankPin = ""
	local check = mysql:query_fetch_assoc("SELECT `card_id`, `card_locked`, `card_pin`, `card_number` FROM `atm_cards` WHERE `card_owner`='"..tostring(charID).."' ")
	if check and check["card_number"] then
		iban = check["card_number"]
		bankPin = check["card_pin"]
		-- if check["card_locked"] == "0" then
			-- exports.hud:sendBottomNotification(source, "Maxime Du Trieux says:", "'Oh well, I think your ATM card wasn't locked at all'.")
			-- return false
		-- end
	else
		if not replacingOldATMCard then
			exports.hud:sendBottomNotification(source, "Maxime Du Trieux says:", "'Hmm... Are you sure you have applied for one in here, "..playerGender.."? Because I can't find your profile in our database'.")
			return false
		end
	end

	local cancelATMCard = mysql:query_free("DELETE FROM `atm_cards` WHERE `card_owner`='"..tostring(charID).."' ")
	if not cancelATMCard then
		exports.hud:sendBottomNotification(source, "SQL Error", "An SQL Error CODE05 has occured in Bank System. Please report this to admin Maxime.")
		return false
	end
	if not replacingOldATMCard then
		exports.hud:sendBottomNotification(source, "Maxime Du Trieux dice:", "'Muy bien, acabo de dar de baja su anterior tarjeta ATM con el número '"..iban.."', "..playerGender.."!'")
	end

	--cooldown[source] = getTickCount()
end
addEvent( "bank:cancelATMCard", true )
addEventHandler( "bank:cancelATMCard", getRootElement(), cancelATMCard )

local retryPIN = {}
function checkPINCode(theATM, enteredCode)
	local playerName = getPlayerName(source)
	local playerGender = (getElementData(source,"gender") == 0) and "señor" or "señorita"

	local foundAnATMCard = getATMCardFromATMMachine(theATM)
	if not foundAnATMCard then
		exports.hud:sendBottomNotification(source,"El cajero automático no funciona correctamente", "Esto es realmente extraño, la tarjeta que acabas de insertar, ha desaparecido mágicamente!")
		return false
	end

	local cardOwner, cardNumber, cardOwnerCharID = getCardInfo(foundAnATMCard)
	--outputDebugString(cardOwner.." - "..cardNumber.." - "..cardOwnerCharID)
	local check = mysql:query_fetch_assoc("SELECT `card_locked`, `card_pin`, `card_number` FROM `atm_cards` WHERE `card_number`='"..cardNumber.."' AND `card_pin`='"..enteredCode.."' ")
	if not check or not check["card_number"] then
		retryPIN[source] = (retryPIN[source] or 0) + 1
		if retryPIN[source] < 3 then
			triggerClientEvent(source, "bank:respondToATMInterfacePIN", source, "Acceso denegado ("..retryPIN[source].."/3)", 255,0,0, "failedLessThan3", retryPIN[source])
		else
			triggerClientEvent(source, "bank:respondToATMInterfacePIN", source, "Acceso denegado ("..retryPIN[source].."/3)", 255,0,0, "failedMoreThan3", retryPIN[source])
			retryPIN[source] = 0
			exports["item-system"]:clearItems(theATM)
			disableATMCard(cardNumber)
		end
		return false
	end

	if check["card_locked"] == "1" then
		triggerClientEvent(source, "bank:respondToATMInterfacePIN", source, "ERROR: Esta tarjeta ATM no se puede usar.", 255,0,0, "locked", cardNumber )
		retryPIN[source] = 0
		return false
	end

	triggerClientEvent(source, "bank:respondToATMInterfacePIN", source, "Acceso concedido", 70,255,14, "success" )
	retryPIN[source] = 0

	local withdraw = true
	local deposit = ((getElementData(theATM, "depositable") == 1) and (true)) or (false)
	local limit = getElementData(theATM, "limit")
	local cardOwner, cardNumber, cardOwnerCharID, amountLimit = getCardInfo(foundAnATMCard)
	local balance = mysql:query_fetch_assoc("SELECT `bankmoney` from `characters` WHERE `id`= (SELECT `card_owner` FROM `atm_cards` WHERE `card_number`='".. cardNumber .."') ")
	if not balance or not balance["bankmoney"] then
		balance = 0
	else
		balance = tonumber(balance["bankmoney"])
	end

	local isPinCodeDefault = check["card_pin"] == "0000"
	triggerClientEvent(source, "bank:openATMGrantedGUI", getRootElement(), {cardOwner, cardNumber, balance, cardOwnerCharID, amountLimit}, deposit, limit, withdraw, theATM, exports.global:getElementZoneName(theATM), isPinCodeDefault)
end
addEvent( "bank:checkPINCode", true )
addEventHandler( "bank:checkPINCode", getRootElement(), checkPINCode )

function ejectATMCard(theATM, player)
	if player then source = player end
	local foundAnATMCard = getATMCardFromATMMachine(theATM)
	if not foundAnATMCard then
		exports.hud:sendBottomNotification(source,"Este cajero no funciona correctamente", "Esto es realmente raro, la tarjeta que puso desapareció magicamente")
		return false
	end

	if exports["item-system"]:takeItem(theATM, foundAnATMCard[1], foundAnATMCard[2]) then
		if exports["item-system"]:giveItem(source, foundAnATMCard[1], foundAnATMCard[2]) then
			triggerEvent('sendAme',  source, "saca una tarjeta de cajero automático de la ranura del cajero." )
			playAtmInsert(theATM) --SoundFX
		else
			triggerEvent('sendAme',  source, "intenta sacar la tarjeta del cajero automático pero no lo consigue." )
			exports["item-system"]:giveItem(theATM, foundAnATMCard[1], foundAnATMCard[2])
			exports.hud:sendBottomNotification(source,"ATM Machine", "Your inventory is full.")
		end
	else
		triggerEvent('sendAme',  source, "intenta sacar la tarjeta del cajero automático pero no lo consigue." )
	end
end
addEvent( "bank:ejectATMCard", true )
addEventHandler( "bank:ejectATMCard", getRootElement(), ejectATMCard )

function changePIN(theATM, enteredCode)
	local foundAnATMCard = getATMCardFromATMMachine(theATM)
	if not foundAnATMCard then
		exports.hud:sendBottomNotification(source,"Este cajero no está funcionando correctamente", "Esto es realmente extraño, la tarjeta que acabas de insertar, ha desaparecido mágicamente")
		return false
	end

	-- local cardOwner = foundAnATMCard[2]
	-- cardOwner = tostring(cardOwner):sub(1 , tostring(cardOwner):find( ";" ) - 1 )
	local cardOwner, cardNumber, cardOwnerCharID = getCardInfo(foundAnATMCard)

	if enteredCode == "0000" then
		triggerClientEvent(source, "bank:respondToATMInterfacePIN", source, "'0000' es el codigo por defecto en las tarjetas nuevas\n\nPara hacer mas segura la cuenta bancaria, cambielo.", 255,0,0, "changedPIN", "failed" )
		return false
	end

	if not mysql:query_free("UPDATE `atm_cards` SET `card_pin`='"..enteredCode.."' WHERE `card_number`='"..cardNumber.."' ") then
		exports.hud:sendBottomNotification(source, "SQL Error", "An SQL Error CODE06 has occured in Bank System. Please report this bug on http://bugs.owlgaming.net")
		triggerClientEvent(source, "bank:respondToATMInterfacePIN", source, "An SQL Error CODE06 has occured in Bank System. Please report this bug on http://bugs.owlgaming.net", 255,0,0, "changedPIN", "failed" )
		return false
	end

	triggerClientEvent(source, "bank:respondToATMInterfacePIN", source, "Codigo PIN cambiado correctamente", 0,255,0, "changedPIN", "ok" )
	exports.hud:sendBottomNotification(source, "Cajero ATM", "Haz cambiado correctamente el codigo PIN de la tarjeta. ("..enteredCode..")")
end
addEvent( "bank:changePIN", true )
addEventHandler( "bank:changePIN", getRootElement(), changePIN )

function withdrawATMMoneyPersonal(amount, theATM)
	local state = tonumber(getElementData(client, "loggedin")) or 0
	if (state == 0) then
		return false
	end

	local foundAnATMCard = getATMCardFromATMMachine(theATM)
	if not foundAnATMCard then
		triggerClientEvent( client, "bank:respondToPendingTransfer", client, "Este cajero no está funcionando correctamente", "Esto es realmente extraño, la tarjeta que acabas de insertar, ha desaparecido mágicamente")
		return false
	end

	local cardOwner, cardNumber, cardOwnerCharID, limitType = getCardInfo(foundAnATMCard)
	local isThisTransactionWithinLimitation, reason = isThisTransactionWithinLimitation(cardNumber,amount, limitType)
	if not isThisTransactionWithinLimitation then
		triggerClientEvent( client, "bank:respondToPendingTransfer", client, reason)
		return false
	end

	local checkingResult = areYouAltAlting(client, { cardOwner, cardNumber, cardOwnerCharID} )
	if checkingResult == "between alts" then
		exports.global:sendMessageToAdmins("[BANK] ("..getElementData(client, "playerid")..") "..tostring(getPlayerName(client)):gsub("_"," ").." - "..getElementData(client, "account:username").." intentó retirar $"..exports.global:formatMoney(amount).." from another ATM card owned by his alt.")
		triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No puedes transferir dinero entre tus propios personajes. El uso de otra tarjeta de cajero automático para obtener este propósito puede obtener un ban permanente.")
		disableATMCard(cardNumber)
		exports["item-system"]:clearItems(theATM)
		return false
	end

	if checkingResult == "between chars over the same ip" then
		exports.global:sendMessageToAdmins("[BANK] ("..getElementData(client, "playerid")..") "..tostring(getPlayerName(client)):gsub("_"," ").." - "..getElementData(client, "account:username").." intentó retirar $"..exports.global:formatMoney(amount).." from another ATM card owned by a character in his other account on the same IP address.")
		triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No puedes transferir dinero entre tus propios personajes. El uso de otra tarjeta de cajero automático para obtener este propósito puede obtener un ban permanente.")
		disableATMCard(cardNumber)
		exports["item-system"]:clearItems(theATM)
		return false
	end

	if checkingResult == "between chars over the same mtaserial" then
		exports.global:sendMessageToAdmins("[BANK] ("..getElementData(client, "playerid")..") "..tostring(getPlayerName(client)):gsub("_"," ").." - "..getElementData(client, "account:username").." intentó retirar $"..exports.global:formatMoney(amount).." from another ATM card owned by a character in his other account on the same MTA Serial.")
		triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No puedes transferir dinero entre tus propios personajes. El uso de otra tarjeta de cajero automático para obtener este propósito puede obtener un ban permanente.")
		disableATMCard(cardNumber)
		exports["item-system"]:clearItems(theATM)
		return false
	end

	local balanceCheck = mysql:query_fetch_assoc("SELECT `bankmoney`, `id` FROM `characters` LEFT JOIN `atm_cards` ON `characters`.`id`=`atm_cards`.`card_owner` WHERE `card_number`='"..cardNumber.."' AND `card_locked`='0' AND `card_type`='1' ")
	local balance = nil
	if not balanceCheck or balanceCheck["bankmoney"] == mysql_null() then
		triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No se ha podido completar la transacción. Por favor, póngase en contacto con el banco o inténtelo más tarde.")
		return false
	else
		balance = tonumber(balanceCheck["bankmoney"])
	end

	local charID = balanceCheck["id"]
	local cardOwnerElement = exports.pool:getElement("playerByDbid", tonumber(charID))

	local moneyTransferred = false
	local atmFee = 2 -- $2 goes to bank
	local factionToDeposit = 17 -- bank faction ID
	money = balance - amount - atmFee
	if cardOwnerElement then
		if getElementData(cardOwnerElement, "bankmoney") ~= balance then --This is to fasten the security and to slow down player. / Maxime
			triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No se ha podido completar la transacción. Por favor, póngase en contacto con el banco o inténtelo más tarde.")
			return false
		end
		if takeBankMoney(cardOwnerElement, (amount + atmFee )) then
			exports.global:giveMoney(client, amount)
			dbExec(exports.mysql:getConn('mta'), "UPDATE `factions` SET `bankbalance` = `bankbalance` + ? WHERE `id` = ?", atmFee, factionToDeposit )
			moneyTransferred = true
		else
			exports.hud:sendBottomNotification(client, "Cajero ATM", "Numero de Tarjeta ATM '"..cardNumber.."' (Dueño: '"..no_(cardOwner).."') no tiene los suficientes fondos.")
			return false
		end
		outputDebugString("[BANCO] "..getPlayerName(client).." retiró $"..amount.." de "..cardNumber.."/"..cardOwner.."(En línea)")
	else
		if money >= 0 then
			if updateBankMoney(client, charID, ( amount + atmFee ), "minus") then--Update the card Owner's bankmoney (ElementData and SQL)
				exports.global:giveMoney(client, amount)
				dbExec(exports.mysql:getConn('mta'), "UPDATE `factions` SET `bankbalance` = `bankbalance` + ? WHERE `id` = ?", atmFee, factionToDeposit )
				moneyTransferred = true
			end
		else
			exports.hud:sendBottomNotification(client, "Cajero ATM", "Numero de tarjeta ATM '"..cardNumber.."' (Dueño: '"..no_(cardOwner).."') no tiene los suficientes fondos.")
			return false
		end
		outputDebugString("[BANCO] "..getPlayerName(client).." retiró $"..amount.." de "..cardNumber.."/"..cardOwner.."(Desconectado)")
	end

	if moneyTransferred then
		addTransactionLimit(cardNumber, amount, limitType)
		exports.hud:sendBottomNotification(client, "Cajero ATM", "Haz retirado $" .. exports.global:formatMoney(amount) .. " de la tarjeta ATM '"..cardNumber.."' (Dueño: '"..no_(cardOwner).."') ")
		triggerEvent("bank:ejectATMCard", client, theATM)

		local atmName = getATMName(theATM)
		addBankTransactionLog(cardOwnerCharID, nil, amount, 0, nil, "Retiró de "..atmName, cardNumber, nil)
		exports.logs:dbLog(client, 25, client, "WITHDREW $" .. amount.." - REMAINING $"..money.." FROM ("..cardOwner..", "..cardNumber..", "..atmName..")")
		return true
	end
end
addEvent("bank:withdrawATMMoneyPersonal", true)
addEventHandler("bank:withdrawATMMoneyPersonal", getRootElement(), withdrawATMMoneyPersonal)

function depositATMMoneyPersonal(amount, theATM)
	local state = tonumber(getElementData(client, "loggedin")) or 0
	if (state == 0) then
		return false
	end

	local foundAnATMCard = getATMCardFromATMMachine(theATM)
	if not foundAnATMCard then
		exports.hud:sendBottomNotification(client,"Este cajero no está funcionando correctamente", "Esto es realmente extraño, la tarjeta que acabas de insertar, ha desaparecido mágicamente")
		return false
	end

	local cardOwner, cardNumber, cardOwnerCharID = getCardInfo(foundAnATMCard)
	local checkingResult = areYouAltAlting(client, { cardOwner, cardNumber, cardOwnerCharID} )
	if checkingResult == "between alts" then
		exports.global:sendMessageToAdmins("[BANCO] ("..getElementData(client, "playerid")..") "..tostring(getPlayerName(client)):gsub("_"," ").." - "..getElementData(client, "account:username").." attempted to deposit $"..exports.global:formatMoney(amount).." to another ATM card owned by his alt.")
		triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No puedes transferir dinero entre tus propios personajes. El uso de otra tarjeta de cajero automático para obtener este propósito puede obtener un ban permanente.")
		disableATMCard(cardNumber)
		exports["item-system"]:clearItems(theATM)
		return false
	end

	if checkingResult == "between chars over the same ip" then
		exports.global:sendMessageToAdmins("[BANK] ("..getElementData(client, "playerid")..") "..tostring(getPlayerName(client)):gsub("_"," ").." - "..getElementData(client, "account:username").." attempted to deposit $"..exports.global:formatMoney(amount).." to another ATM card owned by a character in his other account on the same IP address.")
		triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No puedes transferir dinero entre tus propios personajes. El uso de otra tarjeta de cajero automático para obtener este propósito puede obtener un ban permanente.")
		disableATMCard(cardNumber)
		exports["item-system"]:clearItems(theATM)
		return false
	end

	if checkingResult == "between chars over the same mtaserial" then
		exports.global:sendMessageToAdmins("[BANK] ("..getElementData(client, "playerid")..") "..tostring(getPlayerName(client)):gsub("_"," ").." - "..getElementData(client, "account:username").." attempted  deposit $"..exports.global:formatMoney(amount).." to another ATM card owned by a character in his other account on the same MTA Serial.")
		triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No puedes transferir dinero entre tus propios personajes. El uso de otra tarjeta de cajero automático para obtener este propósito puede obtener un ban permanente .")
		disableATMCard(cardNumber)
		exports["item-system"]:clearItems(theATM)
		return false
	end


	if not exports.global:hasMoney(client, amount) then
		exports.hud:sendBottomNotification(client,"ATM Machine", "No tienes esa cantidad en una partida de dinero ordenada.")
		return false
	end

	--[[
	if areYouAltAlting(client, cardOwner) then
		exports.global:sendMessageToAdmins("[BANK] ("..getElementData(client, "playerid")..") "..tostring(getPlayerName(client)):gsub("_"," ").." - "..getElementData(client, "account:username").." attempted to transfer $"..exports.global:formatMoney(amount).." to another ATM card owned by his alt.")
		triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No puedes transferir dinero entre tus propios personajes. El uso de otra tarjeta de cajero automático para obtener este propósito puede obtener un ban permanente")
		disableATMCard(cardNumber)
		exports["item-system"]:clearItems(theATM)
		return false
	end
	]]
	local balanceCheck = mysql:query_fetch_assoc("SELECT `bankmoney`, `id` FROM `characters` LEFT JOIN `atm_cards` ON `characters`.`id`=`atm_cards`.`card_owner` WHERE `card_number`='"..cardNumber.."' AND `card_locked`='0' AND `card_type`='1' ")
	local balance = nil
	if not balanceCheck or not balanceCheck["bankmoney"] then
		balance = 0
	else
		balance = tonumber(balanceCheck["bankmoney"])
	end

	local charID = balanceCheck["id"]
	local cardOwnerElement = exports.pool:getElement("playerByDbid", tonumber(charID))

	local moneyTransferred = false

	if cardOwnerElement then
		if getElementData(cardOwnerElement, "bankmoney") ~= balance then --This is to fasten the security and to slow down player. / Maxime
			triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No se ha podido completar la transacción. Por favor, póngase en contacto con el banco o inténtelo más tarde.")
			return false
		end
		if exports.global:takeMoney(client, amount) then
			giveBankMoney(cardOwnerElement, amount)
			moneyTransferred = true
		else
			triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No se ha podido completar la transacción. Por favor, póngase en contacto con el banco o inténtelo más tarde.")
			return false
		end
		outputDebugString("[BANK] "..getPlayerName(client).." deposit $"..amount.." to "..cardNumber.."/"..cardOwner.."(Online)")
	else
		money = balance + amount
		if exports.global:takeMoney(client, amount) then
			updateBankMoney(client, charID, amount, "plus")
			moneyTransferred = true
		else
			triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No se ha podido completar la transacción. Por favor, póngase en contacto con el banco o inténtelo más tarde.")
			return false
		end
		outputDebugString("[BANK] "..getPlayerName(client).." deposited $"..amount.." to "..cardNumber.."/"..cardOwner.."(Offline)")
	end

	if moneyTransferred then
		exports.hud:sendBottomNotification(client, "ATM Machine", "Haz depositado $" .. exports.global:formatMoney(amount) .. " a la tarjeta '"..cardNumber.."' (Dueño: '"..no_(cardOwner).."') ")
		triggerEvent("bank:ejectATMCard", client, theATM)

		local atmName = getATMName(theATM)
		addBankTransactionLog(nil, cardOwnerCharID, amount, 1, nil, "Depositado de "..atmName, nil, cardNumber)
		exports.logs:dbLog(client, 25, client, "DEPOSITED $" .. amount.." - REMAINING $"..money.." TO ("..cardOwner..", "..cardNumber..", "..atmName..")")
		return true
	end

end
addEvent("bank:depositATMMoneyPersonal", true)
addEventHandler("bank:depositATMMoneyPersonal", getRootElement(), depositATMMoneyPersonal)

function transferATMMoneyToPersonal(theATM, amount,targetBankAccNo, reason)
	local state = tonumber(getElementData(client, "loggedin")) or 0
	if (state == 0) then
		return false
	end

	if not reason then
		reason = ""
	end

	local foundAnATMCard = getATMCardFromATMMachine(theATM)
	if not foundAnATMCard then
		triggerClientEvent( client, "bank:respondToPendingTransfer", client, "Este cajero no está funcionando correctamente", "Esto es raro, la tarjeta que acaba de insertar desapareció magicamente")
		return false
	end

	local cardOwner, cardNumber, cardOwnerCharID, limitType = getCardInfo(foundAnATMCard)
	local isThisTransactionWithinLimitation, reason2 = isThisTransactionWithinLimitation(cardNumber,amount, limitType)
	if not isThisTransactionWithinLimitation then
		triggerClientEvent( client, "bank:respondToPendingTransfer", client, reason2)
		return false
	end

	local faction = getTeamFromName(targetBankAccNo:gsub("_", " "))

	if cardNumber == targetBankAccNo then
		triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No puedes transferirte dinero a ti mismo.")
		return false
	end

	if faction then
		local target_ownerName, target_bankmoney = nil
		local sender_ownerName, sender_id, sender_bankmoney = nil
		local target_id = getElementData(faction, "id") and -getElementData(faction, "id")

		--TAKE SENDER's ATM CARD's MONEY
		local cardOwnerElement = nil
		local senderBankOwnerQuery = mysql:query_fetch_assoc("SELECT `bankmoney`, id, charactername FROM `characters` LEFT JOIN `atm_cards` ON `characters`.`id`=`atm_cards`.`card_owner` WHERE `card_number`='"..cardNumber.."' AND `card_locked`='0' AND card_type='1' ")
		if not senderBankOwnerQuery or not senderBankOwnerQuery["bankmoney"] then
			triggerClientEvent( client, "bank:respondToPendingTransfer", client, "Error code g23452 occurred, please report on forums.")
			return false
		else
			sender_ownerName = senderBankOwnerQuery["charactername"]
			sender_id = senderBankOwnerQuery["id"]
			sender_bankmoney = tonumber(senderBankOwnerQuery["bankmoney"])
			cardOwnerElement = exports.pool:getElement("playerByDbid", tonumber(sender_id))
		end

		local tookSenderMoney = false

		if cardOwnerElement then
			if getElementData(cardOwnerElement, "bankmoney") ~= sender_bankmoney then
				triggerClientEvent( client, "bank:respondToPendingTransfer", client, "Transacción fallida. Intente denuevo.", true)
				return false
			end
			if takeBankMoney(cardOwnerElement, amount) then
				tookSenderMoney = true
				outputDebugString("[BANK] "..getPlayerName(client).." is transferring $"..amount.." from "..cardNumber.."/"..sender_ownerName.." (Online)")
			else
				triggerClientEvent( client, "bank:respondToPendingTransfer", client, "ATM Card Number '"..cardNumber.."' (Owner: '"..no_(sender_ownerName).."') doesn't have enough funds.", true)
				return false
			end
		else
			if sender_bankmoney - amount < 0 then
				triggerClientEvent( client, "bank:respondToPendingTransfer", client, "ATM Card Number '"..cardNumber.."' (Owner: '"..no_(sender_ownerName).."') doesn't have enough funds.", true)
				return false
			end
			if updateBankMoney(client, sender_id, amount, "minus") then
				outputDebugString("[BANK] "..getPlayerName(client).." is transferring $"..amount.." from "..cardNumber.."/"..sender_ownerName.." (Offline)")
				tookSenderMoney = true
			end
		end



		if tookSenderMoney then
			giveBankMoney(faction, amount)
			outputDebugString("[BANK] "..getPlayerName(client).." is transferring $"..amount.." to "..getTeamName(faction).." (Online)")
		else
			outputDebugString("SQL error code GvddGh4")
			outputChatBox("SQL error code GvddGh4", client)
			triggerEvent("bank:ejectATMCard", client, theATM)
			return false
		end

		addTransactionLimit(cardNumber, amount, limitType)

		local teamName = getTeamName(faction):gsub("_", " ")
		triggerClientEvent( client, "bank:respondToPendingTransfer", client, "Haz transferido correctamente $" .. exports.global:formatMoney(amount) .. " to '"..teamName.."'.", true)

		local atmName = getATMName(theATM)
		addBankTransactionLog(sender_id, target_id, amount, 2,  reason,"Transferred from "..atmName, cardNumber, targetBankAccNo)
		exports.logs:dbLog(client, 25, client, "TRANSFERRED $" .. amount.." FROM ("..no_(cardOwner)..", "..cardNumber..") TO ("..teamName..") REASON ("..reason..", "..atmName..")")

		triggerEvent("bank:ejectATMCard", client, theATM)

		return true
	else

		local target_ownerName, target_id, target_bankmoney = nil
		local sender_ownerName, sender_id, sender_bankmoney = nil

		--TAKE SENDER's ATM CARD's MONEY
		local cardOwnerElement = nil
		local senderBankOwnerQuery = mysql:query_fetch_assoc("SELECT `bankmoney`, id, charactername FROM `characters` LEFT JOIN `atm_cards` ON `characters`.`id`=`atm_cards`.`card_owner` WHERE `card_number`='"..cardNumber.."' AND `card_locked`='0' AND card_type='1' ")
		if not senderBankOwnerQuery or not senderBankOwnerQuery["bankmoney"] then
			triggerClientEvent( client, "bank:respondToPendingTransfer", client, "Error code g2345 occurred, please report on forums.")
			return false
		else
			sender_ownerName = senderBankOwnerQuery["charactername"]
			sender_id = senderBankOwnerQuery["id"]
			sender_bankmoney = tonumber(senderBankOwnerQuery["bankmoney"])
			cardOwnerElement = exports.pool:getElement("playerByDbid", tonumber(sender_id))
		end

		if cardOwnerElement then
			if getElementData(cardOwnerElement, "bankmoney") ~= sender_bankmoney then
				triggerClientEvent( client, "bank:respondToPendingTransfer", client, "Transacción fallida. Intente denuevo.", true)
				return false
			end
			if not hasBankMoney(cardOwnerElement, amount) then
				triggerClientEvent( client, "bank:respondToPendingTransfer", client, "ATM Card Number '"..cardNumber.."' (Owner: '"..no_(sender_ownerName).."') doesn't have enough funds.", true)
				return false
			end
		else
			if sender_bankmoney - amount < 0 then
				triggerClientEvent( client, "bank:respondToPendingTransfer", client, "ATM Card Number '"..cardNumber.."' (Owner: '"..no_(sender_ownerName).."') doesn't have enough funds.", true)
				return false
			end
		end



		local targetElement = nil
		local targetBankOwnerQuery = mysql:query_fetch_assoc("SELECT id, `charactername`, bankmoney FROM `characters` LEFT JOIN `atm_cards` ON `characters`.`id`=`atm_cards`.`card_owner` WHERE `atm_cards`.`card_number`='"..toSQL(targetBankAccNo).."' AND `card_locked`='0' AND card_type='1' ")
		if not targetBankOwnerQuery or not targetBankOwnerQuery["charactername"] then
			triggerClientEvent( client, "bank:respondToPendingTransfer", client, "El número de cuenta bancaria de destino no existe o está desactivado. Por favor, compruebe de nuevo y vuelva a intentarlo.")
			return false
		else
			target_ownerName = targetBankOwnerQuery["charactername"]
			target_id = targetBankOwnerQuery["id"]
			target_bankmoney = tonumber(targetBankOwnerQuery["bankmoney"])
			targetElement = exports.pool:getElement("playerByDbid", tonumber(target_id))
		end

		if targetElement then
			if getElementData(targetElement, "bankmoney") ~= target_bankmoney then
				triggerClientEvent( client, "bank:respondToPendingTransfer", client, "Transacción fallida. Intente denuevo.", true)
				return false
			end
		end

		local checkingResult = areYouAltAlting(client, { cardOwner, cardNumber, cardOwnerCharID}, target_id )
		if checkingResult == "between alts" then
			exports.global:sendMessageToAdmins("[BANK] ("..getElementData(client, "playerid")..") "..tostring(getPlayerName(client)):gsub("_"," ").." - "..getElementData(client, "account:username").." attempted to transfer $"..exports.global:formatMoney(amount).." to another ATM card owned by his alt.")
			triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No puedes transferir dinero entre tus propios personajes. El uso de otra tarjeta de cajero automático para obtener este propósito puede obtener un ban permanente", true)
			disableATMCard(cardNumber)
			exports["item-system"]:clearItems(theATM)
			return false
		end

		if checkingResult == "between chars over the same ip" then
			exports.global:sendMessageToAdmins("[BANK] ("..getElementData(client, "playerid")..") "..tostring(getPlayerName(client)):gsub("_"," ").." - "..getElementData(client, "account:username").." attempted to transfer $"..exports.global:formatMoney(amount).." to another ATM card owned by a character in his other account on the same IP address.")
			triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No puedes transferir dinero entre tus propios personajes. El uso de otra tarjeta de cajero automático para obtener este propósito puede obtener un ban permanente", true)
			disableATMCard(cardNumber)
			exports["item-system"]:clearItems(theATM)
			return false
		end

		if checkingResult == "between chars over the same mtaserial" then
			exports.global:sendMessageToAdmins("[BANK] ("..getElementData(client, "playerid")..") "..tostring(getPlayerName(client)):gsub("_"," ").." - "..getElementData(client, "account:username").." attempted  transfer $"..exports.global:formatMoney(amount).." to another ATM card owned by a character in his other account on the same MTA Serial.")
			triggerClientEvent( client, "bank:respondToPendingTransfer", client, "No puedes transferir dinero entre tus propios personajes. El uso de otra tarjeta de cajero automático para obtener este propósito puede obtener un ban permanente", true)
			disableATMCard(cardNumber)
			exports["item-system"]:clearItems(theATM)
			return false
		end

		local takeSenderMoney = false
		if cardOwnerElement then
		 	if takeBankMoney(cardOwnerElement, amount) then
		 		outputDebugString("[BANK] "..getPlayerName(client).." is transferring $"..amount.." from "..cardNumber.."/"..cardOwner.." (Online)")
		 		takeSenderMoney = true
		 	else
		 		if updateBankMoney(client, sender_id, amount, "minus") then
		 			outputDebugString("[BANK] "..getPlayerName(client).." is transferring $"..amount.." from "..cardNumber.."/"..cardOwner.." (Offline)")
		 			takeSenderMoney = true
		 		end
		 	end
		end

		if takeSenderMoney then
			if targetElement then
				if giveBankMoney(targetElement, amount) then
					outputDebugString("[BANK] "..getPlayerName(client).." is transferring $"..amount.." to "..targetBankAccNo.."/"..target_ownerName.." (Online)")
				end
			else
				if updateBankMoney(client, target_id, amount, "plus") then
					outputDebugString("[BANK] "..getPlayerName(client).." is transferring $"..amount.." to "..targetBankAccNo.."/"..target_ownerName.." (Offline)")
				end
			end
		else
			triggerClientEvent( client, "bank:respondToPendingTransfer", client, "Transacción fallida. Intente denuevo.", true)
			return false
		end

		addTransactionLimit(cardNumber, amount, limitType)

		triggerClientEvent( client, "bank:respondToPendingTransfer", client, "Haz transferido correctamente $" .. exports.global:formatMoney(amount) .. " to ATM Card '"..targetBankAccNo.."' (Owner: '"..no_(target_ownerName).."') ", true)
		triggerEvent("bank:ejectATMCard", client, theATM)

		local atmName = getATMName(theATM)
		addBankTransactionLog(sender_id, target_id, amount, 2,  reason,"Transferred from "..atmName, cardNumber, targetBankAccNo)
		exports.logs:dbLog(client, 25, client, "TRANSFERRED $" .. amount.." FROM ("..no_(cardOwner)..", "..cardNumber..") TO ("..no_(target_ownerName)..", "..targetBankAccNo..", $".. (target_bankmoney + amount) ..") REASON ("..reason..", "..atmName..")")
		return true
	end
end
addEvent("bank:transferATMMoneyToPersonal", true)
addEventHandler("bank:transferATMMoneyToPersonal", getRootElement(), transferATMMoneyToPersonal)

function tellTransfersHistory(cardInfo)
	--outputDebugString(cardInfo[1])
	--outputDebugString(cardInfo[2])
	--outputDebugString(cardInfo[3])

end
addEvent( "tellTransfersHistory", true )
addEventHandler( "tellTransfersHistory", getRootElement(), tellTransfersHistory )

function tellATMTransfers(source, cardInfo, event)
	local accountName = tostring(cardInfo[1]):gsub("'", "''")
	local where = "( `from` = '" ..accountName.. "' OR `to` = '" .. accountName .. "' )"
	--where = where .. " AND type != 4 AND type != 5"

	local query = mysql:query("SELECT w.*, a.charactername as characterfrom, b.charactername as characterto,w.`time` - INTERVAL 1 hour as 'newtime' FROM ATM_wiretransfers w LEFT JOIN characters a ON a.id = `from` LEFT JOIN characters b ON b.id = `to` WHERE " .. mysql:escape_string(where) .. " ORDER BY id DESC LIMIT 40")
	if query then
		local continue = true
		while continue do
			row = mysql:fetch_assoc(query)
			if not row then break end

			local id = tonumber(row["id"])
			local amount = tonumber(row["amount"])
			local time = row["newtime"]
			local type = tonumber(row["type"])
			local reason = row["reason"]
			if reason == mysql_null() then
				reason = ""
			end

			local from, to = "-", "-"
			if row["characterfrom"] ~= mysql_null() then
				from = row["characterfrom"]:gsub("_", " ")
			elseif tonumber(row["from"]) then
				num = tonumber(row["from"])
				if num < 0 then
					from = "-" or getTeamName(exports.pool:getElement("team", -num))
				elseif num == 0 and ( type == 6 or type == 7 ) then
					from = "Government"
				end
			end
			if row["characterto"] ~= mysql_null() then
				to = row["characterto"]:gsub("_", " ")
			elseif tonumber(row["to"]) and tonumber(row["to"]) < 0 then
				to = getTeamName(exports.pool:getElement("team", -tonumber(row["to"])))
			end

			if tostring(row["from"]) == tostring(dbid) and amount > 0 then
				amount = amount - amount - amount
			end


			--if type >= 2 and type <= 5 and tonumber(row['from']) == dbid then
			--	amount = -amount
			--end

			--[[if amount < 0 then
				amount = "-$" .. -amount
			else
				amount = "$" .. amount
			end]]

			triggerClientEvent(source, event, source, id, amount, time, type, from, to, reason)
		end
		mysql:free_result(query)
	else
		outputDebugString("Mysql error @ s_bank_system.lua\tellTransfers", 2)
	end
end


function cleanUp()
	for key, element in pairs(getElementsByType("object", resourceRoot)) do
		if getElementModel(element) == 2942 then
			local items = exports["item-system"]:getItems(element)
			if items and items[1] then
				exports.global:takeItem(element, items[1][1], items[1][2])
			end
		end
	end
end
addEventHandler("onResourceStop", resourceRoot, cleanUp)

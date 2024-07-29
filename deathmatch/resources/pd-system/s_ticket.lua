local pedname = "Sergeant E. Stone"
local JFOX_MDC = 532
addCommandHandler("ticket", function(thePlayer, command, vin)
	if getElementData(thePlayer, "loggedin") == 1 then
		local inFaction = exports.factions:isPlayerInFaction(thePlayer, 1) or exports.factions:isPlayerInFaction(thePlayer, 2) or exports.factions:isPlayerInFaction(thePlayer, 50)
		if inFaction then -- LEO faction
			local found = false
			if vin then
				found = exports.pool:getElement("vehicle", vin)
			end
			triggerClientEvent(thePlayer, "showTicketGUI", thePlayer, found)
		end
	end
end)

addEvent("fetchTickets", true)
addEventHandler("fetchTickets", getRootElement(), function()
	local tickets = {}
	local query = dbQuery(exports.mysql:getConn('mta'), "SELECT * FROM `mdc_crimes` WHERE `character` = ? ORDER BY `id` DESC", getElementData(source, "dbid"))
	local result = dbPoll(query, -1)
	if result then
		for rid, row in pairs (result) do
			if string.find(row['crime'], "Ticket") and string.find(row['punishment'], "(UNPAID)") then
				table.insert(tickets, {
					row['id'],
					row['crime']:gsub("Ticket: ", ""),
					row['punishment']:gsub("Fine: ", ""),
					row['timestamp']
				})
			end
		end
		if #tickets > 0 then
			local quotes = {
				"No tengo muchos conocimientos de informática, por favor, tened paciencia.",
				"Mi nombre es Emma, en qué puedo ayudarle " .. (getElementData(source, "gender") == 1 and "ma'am" or "sir") .. "?",
				"Usted tiene " .. #tickets .. " multas pendientes" .. (#tickets > 1 and "s" or "") .. ", ¿desea pagar " .. (#tickets == 1 and "it" or "them") .. "?"
			}
			outputChatBox(" [English] " .. pedname .. " dice: " .. quotes[math.random(1, 3)], source, 255, 255, 255)
			triggerClientEvent(source, "showPayGUI", source, tickets)
		else
			outputChatBox(" [English] " .. pedname .. " dice: Lo siento. No tiene multas sin pagar en el registro.", source, 255, 255, 255)
		end
	end
end)

addEvent("givePlayerTicket", true)
addEventHandler("givePlayerTicket", getRootElement(), function(player, fine, offences, date)
	exports['item-system']:giveItem(player, 267, date)

	local charid = getElementData(source, "dbid") or 0
	-- attempt to find mdc account, otherwise use John Fox
	local officer = JFOX_MDC
	if ( getElementData( source, 'mdc_account' ) or exports.mdc:login( charid, true ) ) and exports.mdc:canAccess( source, 'canSeeWarrants' ) then
		officer = charid
	end

	local timestamp = getRealTime().timestamp
	dbExec(exports.mysql:getConn('mta'), "INSERT INTO `mdc_crimes` ( `crime`, `punishment`, `character`, `officer`, `timestamp` ) VALUES ( ?, ?, ?, ?, ? )", "Multa: " .. offences, "Total: $" .. fine .. " (SIN PAGAR)", getElementData(player, "dbid"), officer, timestamp)

	triggerEvent("sendAme", source, "arranca una multa de su talonario y lo emite a " .. getPlayerName(player):gsub("_", " ") .. ".")
	outputChatBox("Ha emitido por $" .. exports.global:formatMoney(fine) .. " para " .. getPlayerName(player):gsub("_", " ") .. ".", source, 0, 255, 0)
end)

addEvent("giveVehicleTicket", true)
addEventHandler("giveVehicleTicket", getRootElement(), function(vehicle, info, fine, offences, date)
	local owner = tonumber(getElementData(vehicle, "owner"))
	exports['item-system']:giveItem(vehicle, 267, date)

	local charid = getElementData(source, "dbid") or 0
	-- attempt to find mdc account, otherwise use John Fox
	local officer = JFOX_MDC
	if ( getElementData( source, 'mdc_account' ) or exports.mdc:login( charid, true ) ) and exports.mdc:canAccess( source, 'canSeeWarrants' ) then
		officer = charid
	end

	local timestamp = getRealTime().timestamp
	dbExec(exports.mysql:getConn('mta'), "INSERT INTO `mdc_crimes` ( `crime`, `punishment`, `character`, `officer`, `timestamp` ) VALUES ( ?, ?, ?, ?, ? )", "Multa: " .. offences, "Total: $" .. fine .. " (SIN PAGAR)", owner, officer, timestamp)

	triggerEvent("sendAme", source, "arranca una multa de su talonario y lo pega en el parabrisas del " .. getElementData(vehicle, "year") .. " " .. getElementData(vehicle, "brand") .. " " .. getElementData(vehicle, "maximemodel") .. ".")
	outputChatBox("Ha emitido por $" .. exports.global:formatMoney(fine) .. " a " .. getElementData(vehicle, "year") .. " " .. getElementData(vehicle, "brand") .. " " .. getElementData(vehicle, "maximemodel") .. " con placa " .. info .. ".", source, 0, 255, 0)
end)

addEvent("chargePlayer", true)
addEventHandler("chargePlayer", getRootElement(), function(amount, method, crime_id, date)
	dbExec(exports.mysql:getConn('mta'), "UPDATE `mdc_crimes` SET `punishment`=? WHERE `id`=?", "Fine: $" .. amount, crime_id)
	if method == 1 then
		exports.global:takeMoney(source, amount)
	else
		exports.bank:takeBankMoney(source, amount)
		outputChatBox("$" .. exports.global:formatMoney(amount) .. " ha sido retirado de su cuenta bancaria.", source, 0, 255, 0)
	end

	-- Distribute money between the PD and Government
	local tax = exports.global:getTaxAmount()
	exports.global:giveMoney(exports.factions:getFactionFromID(1), math.ceil((1-tax)*amount))
	exports.global:giveMoney(exports.factions:getFactionFromID(3), math.ceil(tax*amount))

	-- remove matching ticket(s)
	for i, v in ipairs(exports['item-system']:getItems(source)) do
		if v[1] == 217 and v[2] == date then
			exports['item-system']:takeItemFromSlot(source, i)
		end
	end
end)

addEventHandler("onVehicleEnter", getRootElement(), function(thePlayer)
	if exports['item-system']:hasItem(source, 267) then
		outputChatBox("★ En el parabrisas del vehículo se ve una multa blanca.", thePlayer, 255, 51, 102)
	end
end)

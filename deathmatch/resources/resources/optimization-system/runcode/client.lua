local triggered
local function runString(commandstring)
	if not exports['cr_core']:getPlayerDeveloper(localPlayer) then return end
	
	vehicle = getPedOccupiedVehicle(getLocalPlayer()) or getPedContactElement(getLocalPlayer())
	car = vehicle
	p = getPlayerFromName
	c = getPedOccupiedVehicle
	set = setElementData
	get = getElementData
	
	outputChatBoxR("Ejecutando el comando en: "..commandstring)
	local notReturned
	local commandFunction,errorMsg = loadstring("return "..commandstring)
	if errorMsg then
		notReturned = true
		commandFunction, errorMsg = loadstring(commandstring)
	end
	if errorMsg then
		outputChatBoxR("Error: "..errorMsg)
		return
	end
	results = { pcall(commandFunction) }
	if not results[1] then
		outputChatBoxR("Error: "..results[2])
		return
	end
	if not notReturned then
		local resultsString = ""
		local first = true
		for i = 2, #results do
			if first then
				first = false
			else
				resultsString = resultsString..", "
			end
			local resultType = type(results[i])
			if isElement(results[i]) then
				resultType = "element:"..getElementType(results[i])
			end
			resultsString = resultsString..tostring(results[i]).." ["..resultType.."]"
		end
		outputChatBoxR("Resultado: "..resultsString)
	elseif not errorMsg then
		outputChatBoxR("¡Comando Ejecutado!")
	end
end
addEvent("doCrun", true)
addEventHandler("doCrun", getRootElement(), runString)
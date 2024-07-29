local rootElement = getRootElement()

local triggered = {}
function runString(commandstring, outputTo, source)
	if not exports['cr_core']:getPlayerDeveloper(source) then return end
	
	local sourceName
	if source then
		sourceName = getPlayerName(source)
	else
		sourceName = "Console"
	end
	
	outputDebugString("SRUN -> "..sourceName.." lefutatta: "..tostring(commandstring), 0)
	
	function getLocalPlayer( )
		return source
	end
	_G['source'] = source
	if getElementType(source) == 'player' then
		vehicle = getPedOccupiedVehicle(source) or getPedContactElement(source)
		car = vehicle
	end
	settingsSet = set
	settingsGet = get
	p = getPlayerFromName
	c = getPedOccupiedVehicle
	set = setElementData
	get = getElementData

	local notReturned
	local commandFunction,errorMsg = loadstring("return "..commandstring)
	if errorMsg then
		notReturned = true
		commandFunction, errorMsg = loadstring(commandstring)
	end
	if errorMsg then
		outputChatBoxR("Error: "..errorMsg, outputTo)
		return
	end
	results = { pcall(commandFunction) }
	if not results[1] then
		outputChatBoxR("Error: "..results[2], outputTo)
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
		outputChatBoxR("Resultado: "..resultsString, outputTo)
	elseif not errorMsg then
		outputChatBoxR("¡Comando Ejecutado!", outputTo)
	end
end

addCommandHandler("run", 
    function(player, command, ...)
        if not exports['cr_core']:getPlayerDeveloper(player) then return end
        local commandstring = table.concat({...}, " ")
        return runString(commandstring, rootElement, player)
    end, true
)

addCommandHandler("srun", 
    function(player, command, ...)
        if not exports['cr_core']:getPlayerDeveloper(player) then return end
        local commandstring = table.concat({...}, " ")
        return runString(commandstring, player, player)
    end, true
)

addCommandHandler("crun", 
    function(player, command, ...)
        if not exports['cr_core']:getPlayerDeveloper(player) then return end
        local commandstring = table.concat({...}, " ")
        if player then
            --exports.al_logs:logMessage("Runcode: "..getPlayerName(player).." en mal estado "..tostring(commandstring).." (client-oldal)", 5)
            outputDebugString("CRUN -> "..getPlayerName(player).." lefuttata: "..tostring(commandstring), 0, 87, 255, 87)
            return triggerClientEvent(player, "doCrun", rootElement, commandstring)
        else
            return runString(commandstring, false, false)
        end
    end, true
)
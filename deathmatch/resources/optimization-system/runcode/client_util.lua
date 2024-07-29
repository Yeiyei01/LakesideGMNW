function outputChatBoxR(message)
	--outputChatBox(syntax .. message, 200, 250, 200, true)
    local syntax = exports['cr_core']:getServerSyntax(false, "error")    
    exports['cr_core']:sendMessageToAdmin(localPlayer, syntax .. message, 10)
end

function map(element, level)
	level = level or 0
	element = element or getRootElement()
	local indent = string.rep('  ', level)
	local eType = getElementType(element)
	local eID = getElementID(element)
	local eChildren = getElementChildren(element)
	
	local tagStart = '<'..eType
	if eID then
		tagStart = tagStart..' id="'..eID..'"'
	end
	
	if #eChildren < 1 then
		outputConsole(indent..tagStart..'"/>')
	else
		outputConsole(indent..tagStart..'">')
		for k, child in ipairs(eChildren) do
			map(child, level+1)
		end
		outputConsole(indent..'</'..eType..'>')
	end
end
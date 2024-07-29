local mysql = exports.mysql

function verYo (thePlayer)
	outputChatBox("Usa /eyo [Nuevo /yo] para editar la descripción física de tu PJ.", thePlayer, 0, 255, 0)
	outputChatBox("/yo actual: "..getElementData(thePlayer, "yo"), thePlayer, 0, 255, 0)
end
addCommandHandler ( "yo", verYo )

function modificarYo(thePlayer, command, ...)
	if ( ... ) then
		--if exports.objetivos:getNivel(exports.players:getCharacterID(thePlayer)) < 2 then outputChatBox("Necesitas nivel 2 para utilizar /eyo. Usa /objetivos.", thePlayer, 255, 0, 0) return end
		local yo = table.concat( {...}, " " )
        setElementData ( thePlayer, "yo", yo )
		mysql:query_free("UPDATE characters SET yo = '%s' WHERE id = "..mysql:escape_string(getElementData( client, "dbid" ), tostring(yo)))
		--if mysql and not error then
			outputChatBox("/yo actualizado: "..tostring(yo), thePlayer, 0, 255, 0)
			--local nivel = exports.objetivos:getNivel(exports.players:getCharacterID(thePlayer))
			--if nivel == 2 and not exports.objetivos:isObjetivoCompletado(18, exports.players:getCharacterID(thePlayer)) then
				--exports.objetivos:addObjetivo(18, exports.players:getCharacterID(thePlayer), thePlayer)
			--end
		--else
			--outputDebugString(error)
		end
	else
		outputChatBox("Sintaxis: /eyo [Nuevo /yo, descripción física de tu PJ]", thePlayer, 255, 255, 255)
	end	
end
addCommandHandler ( "eyo", modificarYo )

addEventHandler( "onPlayerNetworkStatus", root,
	function( status, ticks )
		if status == 1 then
			if ticks > 3000 then
				outputChatBox("Hemos detectado un problema con tu conexión. Por favor, revísala.", source, 255, 0, 0)
			end
		end
	end
)
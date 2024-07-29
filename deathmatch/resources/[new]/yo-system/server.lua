local mysql = exports.mysql

--function modificarYo(thePlayer, command, ...)
		--if ( ... ) then
			--local caracteristica = table.concat({...}, " ")
	                --local id = getElementData(thePlayer, "dbid") -- account:character:id
	                --elseif id then
			--setElementData( thePlayer, "yo", tostring( caracteristica ) )
                        --mysql:query_free("UPDATE characters SET yo = '%s' WHERE id='" .. mysql:escape_string(characterID) .. "'", caracteristica)
		        --local yo = table.concat( {...}, " " )
                        --setElementData ( thePlayer, "yo", yo )
		       -- mysql:query_free("UPDATE characters SET yo = '%s' WHERE id = "..mysql:escape_string(getElementData( client, "dbid" ), caracteristicas))
			--outputChatBox ( "Has actualizado tus caracteristicas.", thePlayer, 255, 255, 255 )
		--else
			--local borrado = ""
			--setElementData ( player, "yo", borrado )
			--mysql:query_free("UPDATE characters SET yo = '%s' WHERE id='" .. mysql:escape_string(characterID) .. "'", borrado)
			--outputChatBox ( "Has borrado el '/yo' de tu personaje.", thePlayer, 255, 255, 255 )
		--end
	--end
--addCommandHandler ( "eyo", modificarYo )



function modificarYo(thePlayer, command, ...)
	if ( ... ) then
		local yo = table.concat( {...}, " " )
		local targetPlayer, targetPlayerName = exports.global:findPlayerByPartialNick(thePlayer, idOrNick)
		if targetPlayer then
		local charID = tonumber(getElementData(targetPlayer, "dbid"))
                setElementData ( thePlayer, "yo", yo )

                dbExec( mysql:getConn('mta'), "UPDATE characters SET yo = '%s' WHERE char_id = " ..charID..)
		--mysql:query_free("UPDATE characters SET yo = '%s' WHERE id = " .. mysql:escape_string(charid), tostring(yo))
			outputChatBox("/yo actualizado: "..tostring(yo), thePlayer, 0, 255, 0)
   end
end
addCommandHandler ( "eyo", modificarYo )
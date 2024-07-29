--//Nachitoo

addCommandHandler("twt",
    function(player, cmd, ...)
        local msg = table.concat({...}, " ")
        local name = getPlayerName(player)
        if #msg > 0 then
            outputChatBox("#FFFFFF[#00CCFFTwitter#FFFFFF] #FFFFFF[#00CCFF@" .. name .. "#FFFFFF]: " .. msg, root, 255, 255, 255, true)
        else
            outputChatBox("SYNTAX: /" .. cmd .. " [Mensaje]", player, 255, 193, 0, true)
        end
    end
)

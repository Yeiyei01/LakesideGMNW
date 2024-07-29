----------------------------------------------------->>
--	 ██████╗ █████╗ ██╗ ██████╗ ███████╗██╗███╗   ██╗ 
--	██╔════╝██╔══██╗██║██╔═══██╗╚══███╔╝██║████╗  ██║ 
--	██║     ███████║██║██║   ██║  ███╔╝ ██║██╔██╗ ██║ 
--	██║     ██╔══██║██║██║   ██║ ███╔╝  ██║██║╚██╗██║ 
--	╚██████╗██║  ██║██║╚██████╔╝███████╗██║██║ ╚████║ 
--	 ╚═════╝╚═╝  ╚═╝╚═╝ ╚═════╝ ╚══════╝╚═╝╚═╝  ╚═══╝ 
--												  	  
--			 instagram.com/caio.developer/			
-- 			    youtube.com/Caiozin11/ 			    
--			    discord.gg/TwBkWKAZhy  		
----------------------------------------------------->>

addEvent('Caio.onSetVoice', true)
addEventHandler('Caio.onSetVoice', root,
    function(player, state)
        if (state == true) then
            setPlayerVoiceIgnoreFrom(player, root)
        else
            setPlayerVoiceIgnoreFrom(player, nil)
        end
    end
)
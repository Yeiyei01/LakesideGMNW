addEventHandler('onPlayerJoin', root, joinHandler)
function joinHandler(player)
	if not player then
		player = source
	end
	outputChatBox('#9400D3═══════════════════[ #FFFFFFNine Nine Roleplay#9400D3 ]════════════════════', player, 255, 255, 255, true)
	outputChatBox('#9400D3➾ #FFFFFFComunidad de Rol basado en Riverside, California', player, 255, 255, 255, true)
	outputChatBox('#9400D3➾ #FFFFFFDiscord : #9400D3https://discord.gg/XdrGPQSaW8 ', player, 255, 255, 255, true)
    outputChatBox('#9400D3═══════════════════════════════════════════', player, 255, 255, 255, true)        
end
addEventHandler('onPlayerJoin', root, joinHandler)
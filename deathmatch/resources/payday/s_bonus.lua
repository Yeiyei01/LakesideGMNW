-------- server -----
addEvent("BonusPara:ÖdülVer", true)
addEventHandler("BonusPara:ÖdülVer", root, function()
	exports.global:giveMoney(source, 20)
	outputChatBox("#28e000[!]#f8f8f8 ¡Felicitaciones, recibió un nuevo bono por hora! (20$)", source, 155, 0, 0, true)
end)
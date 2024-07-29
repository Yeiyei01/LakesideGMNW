function sendAutoMessage()
    local message = "[#ff0000Lakeside RP#ffffff]: #FFFB00¡¡RECUERDA LEER LA NORMATIVA DEL SERVIDOR PARA EVITAR SANCIONES!!"
    outputChatBox(message, root, 255, 255, 255, true) -- Envía el mensaje al chat
end

-- Envía un mensaje cada 10 segundos
setTimer(sendAutoMessage, 1000000, 0)

function sendAutoMessage1()
    local message1 = "[#ff0000Lakeside RP#ffffff]: #FFFB00PUEDES USAR EL F2 PARA REPORTAR A UN JUGADOR O INFORMAR DE ALGUN BUG/ERROR."
    outputChatBox(message1, root, 255, 255, 255, true) -- Envía el mensaje al chat
end

-- Envía un mensaje cada 10 segundos
setTimer(sendAutoMessage1, 1500000, 0)

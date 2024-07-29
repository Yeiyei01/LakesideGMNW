--[[
    Configuración del panel/Comandos y Binds    
--]]

SERVER_NAME = "LAKESIDE¡ Panel Mods" --  Nombre de su servidor (Nombre que estará en el título del panel).
OPEN_CMD = "mods" -- Nombre del comando para abrir el panel de modificaciones.
OPEN_BIND = "F9" -- Nombre de la clave para abrir el panel de modificaciones.


--[[
    Configurações das Abas (O mesmo nome das pastas tem que ser nome das abas IDENTICOS).
--]]

groups = {"Veiculos", "Armas", "Skins"} 

--[[
    Configuración de mod (NO CAMBIAR FALSO A VERDADERO).
--]]

mods = { 
    {"buffalo", 402, "Veiculos", false, "Audi R8"},
    {"", 415, "Veiculos", false, ""},
    {"", 558, "Veiculos", false, ""},
    {"", 541, "Veiculos", false, ""},
    {"", 415, "Veiculos", false, ""},
    {"", 558, "Veiculos", false, ""},
    {"", 541, "Veiculos", false, ""},
    {"", 415, "Veiculos", false, ""},

}

--[[
    Configuración de mensajes y hora.
--]]

MSG_TELA = "Activa tu mods utilizando '/mods'o dandole al 'F9'" -- Mensaje que permanecerá en la pantalla del jugador durante el tiempo que configures (Solo cuando el jugador inicie sesión).
MSG_CHAT = "#0037FF✘#ffffffINFO#0037FF✘➺ #ffffff Activa tu mods utilizando '/mods' o dandole al 'F9'" -- Mensaje que se enviará al chat del jugador al iniciar sesión en el servidor.
MSG_TEMP = 1 -- Tiempo que se mostrará el mensaje en la pantalla del reproductor (Ingrese el tiempo en minutos).
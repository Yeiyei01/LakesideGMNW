local npcPos = {x=2518.3408203125, y=-1488.2119140625, z=22}
local npcRotation = 280
local npcInterior = 0
local npcDimension = 0
local markerPos = {x=2519.24609375, y=-1488.16796875, z=23}
local markerInterior = 0
local markerDimension = 0

local npc = createPed(115, npcPos.x, npcPos.y, npcPos.z, npcRotation, false)
setElementInterior(npc, npcInterior)
setElementDimension(npc, npcDimension)

local marker = createMarker(markerPos.x, markerPos.y, markerPos.z, "cylinder", 1.0, 93, 255, 0, 255)
setElementInterior(marker, markerInterior)
setElementDimension(marker, markerDimension)

-- Costo de quitar las esposas
local cost = 50000

-- Función que se llama al usar el comando /quitaresposas
function quitarEsposas(player)
    local playerX, playerY, playerZ = getElementPosition(player)
    local npcX, npcY, npcZ = getElementPosition(npc)
    local distance = getDistanceBetweenPoints3D(playerX, playerY, playerZ, npcX, npcY, npcZ)

    if distance <= 10.0 then
        -- Verifica si el jugador está esposado
        if getElementData(player, "restrain") == 1 then
            -- Verifica si el jugador tiene suficiente dinero
            if exports.global:getMoney(player) >= cost then
                -- Quita las esposas
                outputChatBox("Fuiste desesposado.", player)
                toggleControl(player, "sprint", true)
                toggleControl(player, "fire", true)
                toggleControl(player, "jump", true)
                toggleControl(player, "next_weapon", true)
                toggleControl(player, "previous_weapon", true)
                toggleControl(player, "accelerate", true)
                toggleControl(player, "brake_reverse", true)
                toggleControl(player, "aim_weapon", true)
                exports.anticheat:changeProtectedElementDataEx(player, "restrain", 0, true)
                exports.anticheat:changeProtectedElementDataEx(player, "restrainedBy", false, true)
                exports.anticheat:changeProtectedElementDataEx(player, "restrainedObj", false, true)

                -- Resta el dinero
                exports.global:takeMoney(player, cost)
            else
                outputChatBox("No tienes suficiente dinero para quitar las esposas. Necesitas $" .. cost .. ".", player)
            end
        else
            outputChatBox("No estás esposado.", player)
        end
    else
        outputChatBox("Tienes que estar a 10 metros o menos del NPC para quitarte las esposas.", player)
    end
end

local db = dbConnect("sqlite", "data.db")

function guardarEstadoEsposado(player, estado)
    if db then
        local account = getPlayerAccount(player)
        if not isGuestAccount(account) then
            local result = dbQuery(db, "SELECT * FROM usuarios WHERE cuenta=?", account)
            local rows = dbPoll(result, -1)
            if #rows > 0 then
                dbExec(db, "UPDATE usuarios SET esposado=? WHERE cuenta=?", estado, account)
            else
                dbExec(db, "INSERT INTO usuarios (cuenta, esposado) VALUES (?,?)", account, estado)
            end
        end
    end
end

function cargarEstadoEsposado(player)
    if db then
        local account = getPlayerAccount(player)
        if not isGuestAccount(account) then
            local result = dbQuery(db, "SELECT * FROM usuarios WHERE cuenta=?", account)
            local rows = dbPoll(result, -1)
            if #rows > 0 then
                local row = rows[1]
                if row.esposado == 1 then
                    exports.anticheat:changeProtectedElementDataEx(player, "restrain", 1, true)
                    exports.anticheat:changeProtectedElementDataEx(player, "restrainedBy", false, true)
                    exports.anticheat:changeProtectedElementDataEx(player, "restrainedObj", false, true)
                else
                    exports.anticheat:changeProtectedElementDataEx(player, "restrain", 0, true)
                    exports.anticheat:changeProtectedElementDataEx(player, "restrainedBy", false, true)
                    exports.anticheat:changeProtectedElementDataEx(player, "restrainedObj", false, true)
                end
            end
        end
    end
end

function onPlayerQuit()
    guardarEstadoEsposado(source, getElementData(source, "restrain"))
end
addEventHandler("onPlayerQuit", root, onPlayerQuit)

function onPlayerLogin()
    cargarEstadoEsposado(source)
end
addEventHandler("onPlayerLogin", root, onPlayerLogin)

addCommandHandler("quitaresposas", function(player)
    if getElementData(player, "restrain") == 1 then
        exports.anticheat:changeProtectedElementDataEx(player, "restrain", 0, true)
        exports.anticheat:changeProtectedElementDataEx(player, "restrainedBy", false, true)
        exports.anticheat:changeProtectedElementDataEx(player, "restrainedObj", false, true)
    end
end)
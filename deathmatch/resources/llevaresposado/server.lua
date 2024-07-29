function llevarPlayer(player, command, targetPlayer)
if not targetPlayer then
outputChatBox("Syntax: /llevaresposado [Nombre]", player, 255, 194, 14)
return
end

local target = getPlayerFromName(targetPlayer)
if not target then
outputChatBox("Jugador no encontrado", player, 255, 0, 0)
return
end

if target == player then
outputChatBox("no puedes llevarte a ti mismo!", player, 255, 0, 0)
return
end

local playerX, playerY, playerZ = getElementPosition(player)
local targetX, targetY, targetZ = getElementPosition(target)
local distance = getDistanceBetweenPoints3D(playerX, playerY, playerZ, targetX, targetY, targetZ)

if distance > 3.0 then
outputChatBox("El jugador se encuentra demasiado lejos.", player, 255, 0, 0)
return
end

local carryTeam = exports.pool:getElement("team", 1)
local playersInCarryTeam = getPlayersInTeam(carryTeam)
local isPlayerInCarryTeam = false
for k, v in ipairs(playersInCarryTeam) do
if v == player then
isPlayerInCarryTeam = true
break
end
end

if not isPlayerInCarryTeam then
outputChatBox("Debes ser parte de Carabineros / PDI para usar este comando.", player, 255, 0, 0)
return
end

local elementAttached = getElementAttachedTo(target)
if elementAttached == player then
detachElements(target)
setPedAnimation(player, nil)
setPedAnimation(target, nil)
outputChatBox("Has soltado a " .. getPlayerName(target) .. ".", player, 255, 194, 14)
outputChatBox("Fuiste Soltado Por " .. getPlayerName(player) .. ".", target, 255, 194, 14)
else
-- No lleva a nadie, lo lleva
attachElements(target, player, 0, 0, 0)
exports.global:applyAnimation(target, "FAT", "idle_tired", 1, 1, 0, 1)
outputChatBox("Tu llevas a " .. getPlayerName(target) .. ".", player, 255, 255, 255)
outputChatBox("Fuiste Cargado Por  " .. getPlayerName(player) .. ".", target, 255, 255, 255)

end
end

addCommandHandler("llevaresposado", llevarPlayer)
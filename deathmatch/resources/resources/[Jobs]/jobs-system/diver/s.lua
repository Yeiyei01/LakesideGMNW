
--createBlip(263.47812, 2895.69409, 10.53139,47)
local job = "Nurek"
local marker = false
local text = false

addEventHandler("onResourceStart", resourceRoot, function()
  marker = createMarker(263.47812, 2895.69409, 10.53139-1, "cylinder", 1.5, 0, 255, 0, 75)
  text = createElement("text")
  setElementPosition(text, 263.47812, 2895.69409, 10.53139)
  setElementData(text, "name", "")
end)

addEventHandler("onMarkerHit", resourceRoot, function(player)
  if source ~= marker then return end
  if getElementType(player) ~= "player" then return end
  if getElementData(player, "player:job") == job then
  outputChatBox("Has terminado tu trabajo", player, 255, 255, 255)
    triggerClientEvent(player, "stop:job", root)
    setElementData(player, "player:job", false)
  else
  outputChatBox("Bienvenido a la misión de minibuceo, tu tarea es nadar hasta el punto marcado con una cruz roja y entregarnos lo que encuentres allí. Por ello, se le pagará una pequeña cantidad.", player, 255, 255, 255)
    triggerClientEvent(player, "start:job", root)
    setElementData(player, "player:job", job)
  end
end)

function GiveMoney(player, cost)
exports.global:giveMoney(player,cost)
end
addEvent("GiveMoney", true)
addEventHandler("GiveMoney",root, GiveMoney, player, cost)
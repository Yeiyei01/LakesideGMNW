--[[
  Autorzy: Asper, EZ3N, DylemaT929
  Skrypt: Praca drwala
  Dla: GTAO.PL
]]

addEvent("siekiera", true)
addEventHandler("siekiera", root, function(c)
local id = 10
if c == true then
giveWeapon(source, id)
setPedWeaponSlot(source, id)
else
takeWeapon(source, id)
end
end)

addEvent("animacja", true)
addEventHandler("animacja", root, function(c)
if c == true then
setPedAnimation(source, "BASEBALL", "Bat_M", -1, true, false )
else
setPedAnimation(source, false)
end
end)

addEvent("hajs", true)
addEventHandler("hajs", root, function(v)
exports.global:giveMoney(source, tonumber(v))
end)
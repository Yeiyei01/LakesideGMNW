local open = false

function viz()
dd()
end
bindKey("B","down",viz) ----- "B" это кнопка на которую надо нажать


----------------------------ЭТО НЕ ТРОГАЙ СУКА-----------------------
function dd(player) 
if open == false then 
open = true 
triggerServerEvent("opens",localPlayer,localPlayer) 
else 
open = false 
triggerServerEvent("closes",localPlayer,localPlayer) 
end 
end 
------------------------------НЕ ТРОГАЙ ТВАРЬ ТЕБЕ СКАЗАННО------------------------
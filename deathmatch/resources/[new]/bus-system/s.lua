
----------------------------------------------ФУНКЦИЯ ОТКРЫТИЯ--------------------------------------------------------------
function opens(localPlayer)
if isPedInVehicle(localPlayer) then
local xuek = getPedOccupiedVehicle(localPlayer)
local id = getElementModel ( xuek ) 
if id == 437 then ---id машины можно добавить с помощью or if id == 437 or еще твой ид --------
setVehicleDoorOpenRatio (xuek, 0, 1, 2500)
setVehicleDoorOpenRatio (xuek, 1, 1, 2500)
setVehicleDoorOpenRatio (xuek, 2, 1, 2500)
setVehicleDoorOpenRatio (xuek, 3, 1, 2500)
setVehicleDoorOpenRatio (xuek, 4, 1, 2500)
setVehicleDoorOpenRatio (xuek, 5, 1, 2500)
end
end
end
addEvent("opens",true)
addEventHandler("opens",root,opens)
-----------------------------------------------КОНЕц ФУНКЦИИ ОТКРЫТИЯ--------------------------------------------------------------

-----------------------------------------------ФУНКЦИЯ ЗАКРЫТИЯ--------------------------------------------------------------

function closes(source)
local xuek = getPedOccupiedVehicle(source)
local id = getElementModel ( xuek ) 
if id == 437 then ---id машины можно добавить с помощью or if id == 437 or еще твой ид -------- ЗДЕСЬ ПИШЕШЬ ТО ЧТО ПИСАЛ РАНЕЕ
setVehicleDoorOpenRatio (xuek, 0, 0, 2500)
setVehicleDoorOpenRatio (xuek, 1, 0, 2500)
setVehicleDoorOpenRatio (xuek, 2, 0, 2500)
setVehicleDoorOpenRatio (xuek, 3, 0, 2500)
setVehicleDoorOpenRatio (xuek, 4, 0, 2500)
setVehicleDoorOpenRatio (xuek, 5, 0, 2500)
end
end
addEvent("closes",true)
addEventHandler("closes",root,closes)
-----------------------------------------------КОНЕЦ ФУНКЦИИ ЗАКРЫТИЯ--------------------------------------------------------------
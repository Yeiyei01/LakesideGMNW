local patatasBolge = createColSphere(-134.1650390625, 54.14453125, 3.1171875,10)
--local patatasBolgeBlip = createBlip(-134.1650390625, 54.14453125, 3.1171875,5)
local patatasmarker = createMarker(-134.1650390625, 54.14453125, 3.1171875, "cylinder", 10, 255,0,0,125, source) -- Recoger Papatas
local patatas = 108
addCommandHandler("patatas", function(plr,cmd,komut)

if komut == "vender" then
	outputChatBox("[!] #FFFFFF/vender patatas",plr,255,0,0,true)
return end

if not komut then
    outputChatBox("[!] #FFFFFF/patatas Utilice [recolectar,vender,info] para obtener información.",plr,255,0,0,true)
return end

function getirSayi(plr, id)
    return tonumber(exports["item-system"]:countItems(plr, id, 1))
end

local theVehicle = getPedOccupiedVehicle ( plr )
if theVehicle then
outputChatBox("[!] #FFFFFFNo puede hacer esto mientras está en el vehículo.",plr,255,0,0,true)
return end -- burada bitti

if getirSayi(plr, patatasMax) < 20 then
else
outputChatBox ("[-]#FFFFFF Ya tiene 20 papatas encima, no puede recoger mas.",plr,255, 138, 101,true)
return end -- bitti

if komut == "info" then
    outputChatBox("*************************************************",plr,255,0,0,true)
    outputChatBox("[Notificación] #FFFFFFEn el mapa (F11) hay un icon que indica la zona para recolectar papas.",plr,255,255,255,true)
    outputChatBox("[Notificación] #FFFFFFNecesitas un buen cuchillo para hacer patatas.",plr,255,255,255,true)
    outputChatBox("[Notificación] #FFFFFFPara vender las patatas tienes que ir al local.",plr,255,255,255,true)
    outputChatBox("[Notificación] #FFFFFFGanarás 25$ por exactamente por cada patata.",plr,255,255,255,true)
    outputChatBox("*************************************************",plr,255,0,0,true)
end -- if in endini kapattık.

if not isElementWithinColShape(plr, patatasBolge) then
    outputChatBox("[!] #FFFFFFNo estás en el área de recolección de patatas.",plr,255,0,0,true)
return  end

if getElementData(plr, "Patatas:durum") then
    outputChatBox("[§] #FFFFFFNo utilice el uso del comando con tanta frecuencia en una fila.",plr,255,0,0,true)
return end

if komut == "recolectar" then
        outputChatBox("[§] #ffffffEmpezaste a recolectar patatas del suelo..",plr,0,255,0,true)
        setElementData(plr, "patatas:durum", true)
       	setElementFrozen(plr, true)
       	exports.global:applyAnimation(plr, "bomber", "bom_plant", -1, true, false, false)
        setTimer(function()
        exports["item-system"]:giveItem(plr,patatas,1)
            outputChatBox("[§] #FFFFFFRecogiste 1 patata del suelo.",plr,255,194,14,true)
            exports.global:removeAnimation(plr)
            setTimer(function()
            outputChatBox("[§] #ffffffAcabaste de recolectar una patata.",plr,0,255,0,true)
            setElementFrozen(plr, false, nil)
                setElementData(plr, "patatas:durum", nil)
            end, 1500, 1)
        end, 10000, 1)
      end
    end)
print("Sistema de Trabajos Iniciados Correptamente")


-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------


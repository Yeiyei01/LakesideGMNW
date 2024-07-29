local sX, sY = guiGetScreenSize()
local px, py = (sX/1366), (sY/768)


function panelc ()

    dxDrawImage(px*0, py*0, px*1366, py*768,"icons/bg.png", 0, 0, 0, tocolor(255,255,255), false)
    --dxDrawRectangle(px*820, py*450, px*180,py*50, tocolor(0,0,0,255), false)



end


--apertura del panel

local panelopen = createColSphere ( 1660.353515625, -1526.9130859375, 13.3828125, 4 )







addEvent("mac.sec",true)
addEventHandler("mac.sec",root,function(mac)
    if not exports.global:hasMoney(localPlayer, 1000) then
    outputChatBox("[Nine Nine Roleplay]#FFFFFF ¡No tienes suficiente dinero!", 255, 0, 0, true)
    return end
    sayi = math.random(1, 10)
    sound = playSound("song.mp3")
    setSoundVolume(sound, 0.9)
    outputChatBox("#008b00[ 》 ]#FFFFFF Han comenzado las carreras de caballos.", 105, 105, 105, true)
    outputChatBox("#008b00[ 》 ]#FFFFFF Los resultados se anunciarán en 15 segundos.", 105, 105, 105, true)
    triggerServerEvent("mac.paraal", localPlayer, localPlayer)
    setTimer(function() 
    if  sayi== 1 then 
    outputChatBox("#FFFFFF--------------------------------------------------", 105, 105, 105, true)
    outputChatBox("#087EB0[↬]#FFFFFF ¡El #087EB0caballo azul #FFFFFFha ganado!", 105, 105, 105, true)
    elseif sayi == 2 then 
        outputChatBox("#FFFFFF--------------------------------------------------", 105, 105, 105, true)
        outputChatBox("#b22222[↬]#FFFFFF ¡El #b22222caballo rojo #FFFFFFha ganado!", 105, 105, 105 ,true)
    elseif sayi ==  3 then 
        outputChatBox("#FFFFFF--------------------------------------------------", 105, 105, 105, true)
        outputChatBox("#cd3700[↬]#FFFFFF ¡El #cd3700caballo naranja #FFFFFFha ganado!", 105, 105, 105 ,true)
    elseif sayi ==  4 then 
        outputChatBox("#FFFFFF--------------------------------------------------", 105, 105, 105, true)
        outputChatBox("#cd3700[↬]#FFFFFF ¡El #cd3700caballo morado #FFFFFFha ganado!", 105, 105, 105 ,true)
    elseif sayi ==  5 then 
        outputChatBox("#FFFFFF--------------------------------------------------", 105, 105, 105, true)
        outputChatBox("#cd3700[↬]#FFFFFF ¡El #cd3700caballo verde #FFFFFFha ganado!", 105, 105, 105 ,true)
    elseif sayi ==  6 then 
        outputChatBox("#FFFFFF--------------------------------------------------", 105, 105, 105, true)
        outputChatBox("#cd3700[↬]#FFFFFF ¡El #cd3700caballo violeta #FFFFFFha ganado!", 105, 105, 105 ,true)
    elseif sayi ==  7 then 
        outputChatBox("#FFFFFF--------------------------------------------------", 105, 105, 105, true)
        outputChatBox("#cd3700[↬]#FFFFFF ¡El #cd3700caballo purpura #FFFFFFha ganado!", 105, 105, 105 ,true)
    elseif sayi ==  8 then 
        outputChatBox("#FFFFFF--------------------------------------------------", 105, 105, 105, true)
        outputChatBox("#cd3700[↬]#FFFFFF ¡El #cd3700caballo negro #FFFFFFha ganado!", 105, 105, 105 ,true)
    elseif sayi ==  9 then 
        outputChatBox("#FFFFFF--------------------------------------------------", 105, 105, 105, true)
        outputChatBox("#cd3700[↬]#FFFFFF ¡El #cd3700caballo marron #FFFFFFha ganado!", 105, 105, 105 ,true)
    elseif sayi ==  10 then 
        outputChatBox("#FFFFFF--------------------------------------------------", 105, 105, 105, true)
        outputChatBox("#cd3700[↬]#FFFFFF ¡El #cd3700caballo azul claro #FFFFFFha ganado!", 105, 105, 105 ,true)
    end
    if mac == sayi then
    outputChatBox("#458b00[➠]#FFFFFF ¡Gracias ha que gano su caballo gana #458b002,500$ #FFFFFF!", 105, 105, 105, true)
    outputChatBox("#FFFFFF--------------------------------------------------", 105, 105, 105, true)
   triggerServerEvent("mac.paraver", localPlayer, localPlayer)
    else 
    outputChatBox("#8b3626[✗]#FFFFFF ¡El caballo que usted escogio #8b3626perdio #FFFFFF!", 255, 0, 0, true)
    end
    end, 15000, 1)
end)


 function isMouseInPosition ( x, y, width, height )
    if ( not isCursorShowing( ) ) then
        return false
    end
    local sx, sy = guiGetScreenSize ( )
    local cx, cy = getCursorPosition ( )
    local cx, cy = ( cx * sx ), ( cy * sy )
    
    return ( ( cx >= x and cx <= x + width ) and ( cy >= y and cy <= y + height ) )
end

tweettimers = {}

 

 addEventHandler("onClientClick", root, function(button, state, x, y)
 if panel == true then 
 if state == "down" then return end




    if isMouseInPosition(px*300, py*530, px*90,py*40) then 
      removeEventHandler("onClientRender", root, panelc)
      panel = false
      showCursor(false)


    elseif isMouseInPosition(px*380, py*450, px*180,py*50) then 
	  if isTimer(tweettimers[getElementData(localPlayer, "dbid")]) then
      outputChatBox("#8b3626[✗]#FFFFFF Hay un partido en curso", 255, 0, 0, true)
	  return end
        triggerEvent("mac.sec",root,1)
        removeEventHandler("onClientRender", root, panelc)
       panel = false
      showCursor(false)       
	  tweettimers[getElementData(localPlayer, "dbid")] = setTimer(function() end, 20000, 1)


    elseif isMouseInPosition(px*600, py*450, px*180,py*50) then 
	  if isTimer(tweettimers[getElementData(localPlayer, "dbid")]) then
      outputChatBox("#8b3626[✗]#FFFFFF Hay un partido en curso", 255, 0, 0, true)
	  return end
        triggerEvent("mac.sec",root,2)
        removeEventHandler("onClientRender", root, panelc)
        panel = false
      showCursor(false)
	  tweettimers[getElementData(localPlayer, "dbid")] = setTimer(function() end, 20000, 1)


    elseif isMouseInPosition(px*820, py*450, px*180,py*50) then 
	  if isTimer(tweettimers[getElementData(localPlayer, "dbid")]) then
      outputChatBox("#8b3626[✗]#FFFFFF Hay un partido en curso", 255, 0, 0, true)
	  return end
        triggerEvent("mac.sec",root,3)
        removeEventHandler("onClientRender", root, panelc)
        panel = false
      showCursor(false)
	  tweettimers[getElementData(localPlayer, "dbid")] = setTimer(function() end, 20000, 1)


      


        
    end 
 
 end
 
end)



addEvent("bahis:panel",true)
addEventHandler("bahis:panel",root,function()
panel = true
addEventHandler("onClientRender", root, panelc)
end)

local thePed = createPed(172, 822.0107421875, 2.1044921875, 1004.1796875)
setElementDimension(thePed, 400)
setElementInterior(thePed, 3)
setElementRotation(thePed,  0, 0, 259.54772949219)
setElementFrozen(thePed, true)
setElementData(thePed, "talk", 1)
setElementData(thePed, "name", "Amelia Billson")


local chePed = createPed(194, -2170.6767578125, 642.638671875, 1052.3817138672)
setElementDimension(chePed, 285)
setElementInterior(chePed, 1)
setElementRotation(chePed,  0, 0, 259.54772949219)
setElementFrozen(chePed, true)
setElementData(chePed, "talk", 1)
setElementData(chePed, "name", "Selin Demir")



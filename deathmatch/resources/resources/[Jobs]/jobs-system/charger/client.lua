-- Kaliteli Türkçe Scriptler İçin : https://sparrow-mta.blogspot.com
-- SparroW İyi oyunlar diler.

local scx, scy = guiGetScreenSize()
local px, py = scx/1920, scy/1080
local stateWindow = false
local boat
local gruz
local stateJob = false
local markerGruz
local markerSkad
local text = "Empezar"
local zp = 0
local gruzHand = false

local fonts = dxCreateFont("charger/font.ttf", 15)
local fonts1 = dxCreateFont("charger/font.ttf", 11)

local ped = createPed ( pedSkin, pedPos[1], pedPos[2], pedPos[3], pedPos[4] )
local marker = createMarker(pedPos[1], pedPos[2], pedPos[3]-1,"cylinder", 1.9,255, 255, 0, 1)
--local blip = createBlip ( pedPos[1], pedPos[2], pedPos[3], 51)


-------
function isCursorOverRectangle(x,y,w,h)
    if isCursorShowing() then
        local mx,my = getCursorPosition() -- relative
        local cursorx,cursory = mx*scx,my*scy
        if cursorx > x and cursorx < x + w and cursory > y and cursory < y + h then
            return true
        end
    end
    return false
end
----------

function markerHit(element)
  if element == localPlayer then
   if not stateWindow then
  addEventHandler("onClientRender", root, drawText)
bindKey( knopka, "down", toggleWindow )
   end
  end
end

function markerLeave(element)
  if element == localPlayer then
    if not stateWindow then
	 removeEventHandler("onClientRender", root, drawText)
	 
    unbindKey ( knopka, "down", toggleWindow )
	end
  end
end


addEventHandler ( "onClientMarkerHit", marker, markerHit )

addEventHandler ( "onClientMarkerLeave", marker, markerLeave )
   
   

--   createObject ( 1337, 5540.6654, 1020.55122, 1240.545, 90, 0, 0 )

function drawWindow()
  if stateJob then
    text = "Terminar"
  else
    text = "Empezar"
  end

        dxDrawImage(px*570, py*150, px*707, py*713, "charger/bg.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(620*px, 740*px, 249*px, 49*px, "charger/go.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(970*px, 740*px, 249*px, 49*px, "charger/go.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
		dxDrawText(text, 1235*px, 1480*px, 249*px, 49*px, tocolor(255, 255, 255, 255), fontScale, fonts, "center", "center")
		dxDrawText("Cancelar", 1935*px, 1480*px, 249*px, 49*px, tocolor(255, 255, 255, 255), fontScale, fonts, "center", "center")
		
       	if stateJob then
		  local zp1 = getElementData(localPlayer, "zp1")
  local zp = zp1*money
        dxDrawText("Ganado : "..zp.. " $", 950*px, 880*px, 875*px, 522*px, tocolor(255, 255, 255, 255), fontScale, fonts, "center", "center")
        end
	if isCursorOverRectangle(620*px, 740*px, 249*px, 49*px)  then
        dxDrawImage(620*px, 740*px, 249*px, 49*px, "charger/go1.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
		dxDrawText(text, 1235*px, 1480*px, 249*px, 49*px, tocolor(255, 255, 255, 255), fontScale, fonts, "center", "center")
    end
	
	if isCursorOverRectangle(970*px, 740*px, 249*px, 49*px)  then
        dxDrawImage(970*px, 740*px, 249*px, 49*px, "charger/go1.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
		dxDrawText("Cancelar", 1935*px, 1480*px, 249*px, 49*px, tocolor(255, 255, 255, 255), fontScale, fonts, "center", "center")
		end
end

function drawText()
        dxDrawImage(px*810, py*0, px*305, py*109, "charger/bg_notif.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("E", 1580*px, 50*px, 320*px, 55*px, tocolor(255, 255, 255, 255), fontScale, fonts, "center", "center", false, false, true)
        dxDrawText("Hablar' "..knopka.." '\nPresione la tecla", 1585*px, 110*px, 320*px, 55*px, tocolor(255, 255, 255, 255), fontScale, fonts1, "center", "center", false, false, true)
end

function toggleWindow()
 if not stateWindow then
  addEventHandler("onClientRender", root, drawWindow)
  stateWindow = true
  showCursor(true)
  removeEventHandler("onClientRender", root, drawText)
 else
  removeEventHandler("onClientRender", root, drawWindow)
  stateWindow = false
  showCursor(false)
 end
end


function onClickControlButton(button, state)
    if stateWindow then
	    if button == "left" and state == "down" then
	        if isCursorOverRectangle(970*px, 740*px, 249*px, 49*px) then
			  toggleWindow()
            end	
			
	        if isCursorOverRectangle(620*px, 740*px, 249*px, 49*px) then
			  startJob()
            end	
	    end
    end
end
addEventHandler("onClientClick", root, onClickControlButton)

function upGruz()
setPedAnimation( localPlayer, "CARRY", "liftup", 1.0, false )
--setElementFrozen(localPlayer, true)
randomSklad()
addEventHandler("onClientMarkerHit", markerSklad, dropGruz)
 setTimer( 
				function()
					setPedAnimation( localPlayer, nil )
					setPedAnimation( localPlayer, "CARRY", "crry_prtial", 4.1, true, true, true )
					gruzHand = true
					setPedWeaponSlot ( localPlayer, 0 )
					toggleControl( "jump", false )
					toggleControl( "fire", false )
					toggleControl( "sprint", false )
					toggleControl( "aim_weapon", false )
					toggleControl( "next_weapon", false )
					toggleControl( "previous_weapon", false )
					destroyElement(markerGruz)
					setElementFrozen(localPlayer, false)
					attachElements (gruz,localPlayer, 0, 0.5, 0.1 )
				end,700,1)	
end

function dropGruz()
if gruzHand then
  setPedAnimation( localPlayer, "BOMBER", "Bom_Plant_Loop", 4000, true, false, false,false)
  destroyElement(gruz)
  destroyElement(markerSklad)
           setTimer(function()
		            setPedAnimation( localPlayer, nil )
					toggleControl( "jump", true )
					toggleControl( "fire", true )
					toggleControl( "sprint", true )
					toggleControl( "aim_weapon", true )
					toggleControl( "next_weapon", true )
					toggleControl( "previous_weapon", true )
					gruzHand = false
					local zar = getElementData(localPlayer, "zp1")
	     setElementData(localPlayer, "zp1" , zar+1)
		 randomGruz() end, 5000, 1 )
else
outputChatBox("[INFO] Mueva la mercancía en el Camión al almacén y su dinero estará listo.",0,255,0)
end
end

function randomGruz()
local r = math.random(1,#gruzID)
 local x,y,z = getElementPosition(boat)
 gruz = createObject ( gruzID[r], x+2.7, y-3.5, z )
 markerGruz = createMarker(x+2.7, y-3.5, z-1,"cylinder", 1.9,255, 255, 0, 50)
 addEventHandler ( "onClientMarkerHit", markerGruz, upGruz)
end
function huy ()
		            setPedAnimation( localPlayer, nil )
					toggleControl( "jump", true )
					toggleControl( "fire", true )
					toggleControl( "sprint", true )
					toggleControl( "aim_weapon", true )
					toggleControl( "next_weapon", true )
					toggleControl( "previous_weapon", true )
end
addCommandHandler("gr",huy)
function startJob()
if not stateJob then
local rnd = math.random(1,#spawnBoat)
  boat = createVehicle (boatID, spawnBoat[rnd][1],spawnBoat[rnd][2], spawnBoat[rnd][3]-1, spawnBoat[rnd][4],spawnBoat[rnd][5],spawnBoat[rnd][6] )
	setVehicleDamageProof(boat,true)
	setElementFrozen(boat,true)
	setVehicleLocked(boat,true)
    setElementData(localPlayer, "zp1", 0)
	setElementData(localPlayer, "job", "Грузчик")
    stateJob = true
	outputChatBox("Empezaste el trabajo de cargador.",0,255,0)
	outputChatBox("Su tarea es transportar la mercancía en el camión hasta el almacén.",255,255,255)
	--tort = createObject ( gruzID{, spawnTort[r][1], spawnTort[r][2], spawnTort[r][3], spawnTort[r][4] or 0, spawnTort[r][5] or 0, spawnTort[r][6] or 0 )
   -- markerTort = createMarker(spawnTort[r][1], spawnTort[r][2], spawnTort[r][3]-1,"cylinder", 1.9,255, 255, 0, 50)
	--markerVeh = createMarker(spawnAuto[rnd][1]-3, spawnAuto[rnd][2], spawnAuto[rnd][3]-2,"cylinder", 1.9,255,155, 100, 100)
	randomGruz()
	toggleWindow()
else
 if gruzHand then
    outputChatBox("Calculando la ganancia...",255,255,255)
	return
 end
  		removeEventHandler("onClientMarkerHit", markerSklad, dropGruz)
		removeEventHandler("onClientMarkerHit", markerGruz, upGruz)
		setElementData(localPlayer, "job", "Безработный")
		stateJob = false
		destroyElement(boat)
		destroyElement(gruz)
		destroyElement(markerGruz)
		--destroyElement(markerSklad)
		if getElementData(localPlayer,"zp1") >= 1 then
		  local zp1 = getElementData(localPlayer,"zp1")
		  triggerServerEvent("GiveMoney", localPlayer, localPlayer, zp1*money)
		end
end 

end


function randomSklad()
 local r = math.random(1,#spawnSklad)
 markerSklad = createMarker(spawnSklad[r][1], spawnSklad[r][2], spawnSklad[r][3],"cylinder", 1.9,255, 0, 255, 50)
 --addEventHandler ( "onClientMarkerHit", markerSklad, dropGruz)
end














-- function rot ()
-- local x,y,z = getElementRotation ( localPlayer )
-- local px,py,pz = getElementPosition ( localPlayer )
-- outputChatBox(px..","..py..","..pz..","..x..","..y..","..z)
-- end
-- addCommandHandler("rot",rot)
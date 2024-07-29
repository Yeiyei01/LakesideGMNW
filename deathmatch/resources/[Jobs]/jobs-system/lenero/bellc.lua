sx,sy = guiGetScreenSize()
lptaxi1m = getLocalPlayer()
bellssslmissie1window = guiCreateWindow(0.3*sx,0.3*sy,0.3*sx,0.3*sy,"Flyers for the party",false)
bellssslmissie1memo = guiCreateMemo(0.01,0.1,0.7,0.8,"Can you put these flyers in the mailboxes of the people on the camp so they are aware of the instructions for this years summercamp party? thank you",true,bellssslmissie1window)
guiMemoSetReadOnly(romemo, true)
bellssslmissie1takebutton = guiCreateButton(0.73,0.4,0.3,0.17,"Have Job",true,bellssslmissie1window)
bellssslmissie1declinebutton = guiCreateButton(0.73,0.2,0.3,0.17,"Close",true,bellssslmissie1window)
guiSetVisible(bellssslmissie1window,false)


bellssslmissie1marker = createMarker(-1061, -1052, 129,"corona",2,0,255,0)
bellssslmissie1theMarker = createPickup(3725, -2079, 1370112.375, 3, 1240, 100 )   

addEventHandler('onClientRender', root,
	function()
		local px, py, pz = getElementPosition(getLocalPlayer())
		if getDistanceBetweenPoints2D(9999,-9999, px, py) <= 17 then
			local x, y = getScreenFromWorldPosition(9999,-9999,43.5)
			if x and y then
		end
		end
		end
)
addEventHandler("onClientMarkerHit",bellssslmissie1marker,function(p) if p == lptaxi1m then guiSetVisible(bellssslmissie1window,true) showCursor(true) end end)


addEventHandler("onClientGUIClick",bellssslmissie1window,
function(b) 
	if b == "left" then
		if source == bellssslmissie1takebutton then 
			if not getElementData(lptaxi1m, "bellssslmissie1") then
			triggerServerEvent("havebellssslmissie1Job",lptaxi1m)
			else
			guiSetVisible(bellssslmissie1window,false)
			showCursor(false)
			triggerServerEvent("bellssslmissie1Route",root,lptaxi1m)
theBlip = createBlipAttachedTo(bellssslmissie1theMarker ,58)
			end
		elseif source == bellssslmissie1declinebutton then
		guiSetVisible(bellssslmissie1window,false)
		showCursor(false)
		end
	end
end)

addEvent("bellssslmissie1Route",true)
function bellssslmissie1Route(tab)
for k,pos in ipairs(tab) do
if k == 1 then x = pos
elseif k == 2 then y = pos
elseif k == 3 then setElementPosition(bellssslmissie1theMarker,x,y,pos) outputChatBox("look on your radar for the #FF0000blue people icon#FFFFFF"..getZoneName(x,y,pos,true)..", "..getZoneName(x,y,pos)..".",255,255,255,true) 
end
end
end
addEventHandler("bellssslmissie1Route",root,bellssslmissie1Route)

addEventHandler("onClientPickupHit",bellssslmissie1theMarker,
function(p) if p == lptaxi1m then
	if getElementData(lptaxi1m, "bellssslmissie1") then
	setElementPosition(bellssslmissie1theMarker,35, 68, 1370112.375)
	amount = math.random(30,510)
	triggerServerEvent ("givebellssslmissie1PlayerSomeMoney", getLocalPlayer(), amount )
	playSound("https://dl.dropboxusercontent.com/u/27831609/songs/Door%20Bell%20Sound%20Effect.mp3")
	outputChatBox("You recieved #00FF00 $"..tostring(amount).."#FFFFFF for delivering a flyer",255,255,255,true) 
	setTimer(triggerServerEvent,5000,1,"bellssslmissie1Route",root,lptaxi1m)
else
	outputChatBox("Only bellssslmissie1s.",255,0,0,true) 
end
end
end
)

function fffcheck()
            if isElement (bellssslmissie1theMarker) then
                setElementPosition(bellssslmissie1theMarker,3725, -2079, 1370112.375)
            end
            if isElement (thetaxi1Blip) then
                destroyElement(thetaxi1Blip)
         end
        end
addEvent("fffcheck",true)
addEventHandler("fffcheck",root,fffcheck)



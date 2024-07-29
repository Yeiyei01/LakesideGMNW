
--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

GUIEditor = {
    button = {},
    window = {},
    memo = {}
}

local targetMar = {
    {1985.71387, -1682.82886, 15},
    {2147.00806, -1401.30054, 25},
    {2203.12622, -1365.67249, 25},
    {2192.38818, -1418.20068, 25},
    {2282.13428, -1643.44861, 15}
}

local mar = {}
local bli = {}

function newTar()
	setPedSkin(localPlayer, 155)
	setElementData(localPlayer,"pizzaDone",0)
	for i,v in pairs ( targetMar ) do
		mar[i] = createMarker(v[1],v[2],v[3],"cylinder",2,255,165,0)
		bli[i] = createBlip(v[1],v[2],v[3],12)
		setElementData(mar[i],"pizzaMar",true)
	end
	addEventHandler("onClientMarkerHit",root,onTarHit)
	outputChatBox("Go to the marker near the building and get a pizza. Then deliver pizza 05 and come back here!",255,255,0)
end

function finishJob()
    removeEventHandler("onClientMarkerHit",finMar,finishJob)
    destroyElement(finMar)
	destroyElement(blipfin)
	outputChatBox("Good job! here's your money!",255,255,0)
	triggerServerEvent("onDone",resourceRoot)
    newTar()
end

function onTarHit()
    if getElementData(localPlayer,"pizzaOccupent") == true and getElementData(source,"pizzaMar") == true then
	  local piz = getElementData(localPlayer,"pizzaDone")
	    if not piz then piz = 0 end
	    destroyElement(source)
		setElementData(localPlayer,"pizzaDone",piz+1)
		piz = piz+1
		outputChatBox(piz.."/5 completed !",0,255,0)
		if piz == 5 then
		    removeEventHandler("onClientMarkerHit",root,onTarHit)
		    for _,v in pairs ( bli ) do
			    destroyElement(v)
			end
		    outputChatBox("Good! Now go to the pizzeria!",255,255,0)
			finMar = createMarker(2101.44849, -1801.38452, 12, "cylinder", 2, 255, 255, 0)
			blipfin = createBlip(2101.44849, -1801.38452, 12, 0)
			addEventHandler("onClientMarkerHit",finMar,finishJob)
		end
	end
end

function onClick()
    if source == GUIEditor.button[1] then
	    setElementData(localPlayer, "skin_save", getElementModel(localPlayer))
	    setElementModel(localPlayer,155)
		for i,v in pairs ( targetMar ) do
		    mar[i] = createMarker(v[1],v[2],v[3],"cylinder",2,255,255,0)
			bli[i] = createBlip(v[1],v[2],v[3],12)
			setElementData(mar[i],"pizzaMar",true)
		end
		addEventHandler("onClientMarkerHit",root,onTarHit)
		setElementData(localPlayer,"pizzaOccupent",true)
		outputChatBox("Go to the marker near the building and get a pizza. Then deliver pizza 05 and come back here!",255,255,0)
		removeEventHandler("onClientGUIClick",root,onClick)
		destroyElement(GUIEditor.window[1])
		showCursor(false)
	elseif source == GUIEditor.button[2] then
	    for _,v in pairs ( mar ) do
		    destroyElement(v)
		end
		for _,v in pairs ( bli ) do
		    destroyElement(v)
		end
	    setElementData(localPlayer,"pizzaDone",0)
		setElementModel(localPlayer, getElementData(localPlayer,"skin_save"))
		setElementData(localPlayer,"pizzaOccupent",false)
		outputChatBox("Good Morning!",0,255,0)
		removeEventHandler("onClientGUIClick",root,onClick)
		destroyElement(GUIEditor.window[1])
		showCursor(false)
	end
end

addEvent("onPizzaHit",true)
addEventHandler("onPizzaHit",root,
function ()
    GUIEditor.window[1] = guiCreateWindow(0.28, 0.30, 0.42, 0.40, "Pizza Job - Game Light", true)
    guiWindowSetMovable(GUIEditor.window[1], false)
    guiWindowSetSizable(GUIEditor.window[1], false)
    GUIEditor.memo[1] = guiCreateMemo(0.09, 0.17, 0.48, 0.69, "\nIn this job you have to deliver the pizza. Deliver all the pizza and come back for the paycheck.", true, GUIEditor.window[1])
    GUIEditor.button[1] = guiCreateButton(0.63, 0.24, 0.32, 0.20, "Accept work", true, GUIEditor.window[1])
    GUIEditor.button[2] = guiCreateButton(0.63, 0.54, 0.32, 0.20, "Decline / Remove from Work", true, GUIEditor.window[1])    
	showCursor(true)
	addEventHandler("onClientGUIClick",root,onClick)
end
)

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

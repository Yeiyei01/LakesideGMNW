
--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

local dxMarker = createMarker(markerT[1],markerT[2],markerT[3]-0.1, "cylinder", 1, 0, 252, 255, 100)
local dxMarker = createMarker(markerT[1],markerT[2],markerT[3]-0.1, "cylinder", 1, 0, 252, 255, 100)
local ped = createPed(skinTractor,-103.97047424316,9.280517578125,3.1171875)
setElementRotation(ped, 0, 0, 90)

addEventHandler( "onClientRender", root, function ()
       local x, y, z = getElementPosition(dxMarker)
       local Mx, My, Mz = getCameraMatrix()
        if (getDistanceBetweenPoints3D(x, y, z, Mx, My, Mz) <= 20) then
           local WorldPositionX, WorldPositionY = getScreenFromWorldPosition(x, y, z +1, 0.07)
            if (WorldPositionX and WorldPositionY) then
			    dxDrawText("Job-Farmer", WorldPositionX - 1, WorldPositionY + 1, WorldPositionX - 1, WorldPositionY + 1, tocolor(0, 0, 0, 255), 1.52, "default-bold", "center", "center", false, false, false, false, false)
			    dxDrawText("Job-Farmer", WorldPositionX - 1, WorldPositionY + 1, WorldPositionX - 1, WorldPositionY + 1, tocolor(255, 255, 255, 255), 1.50, "default-bold", "center", "center", false, false, false, false, false)
            end
      end
end 
)

local markerState = 1
function getMarkerCurrentState ()
    return markerState
end

function updateMarkerCurrentState ()
    markerState = markerState + 1
end

function restoreMarkerCurrentState ()
    markerState = 1
end

function isMarchEnd ()
	if getMarkerCurrentState () >= #tractorMarks then
	    return true
	else
	    return false
	end
end

local markerT = createMarker(markerT[1],markerT[2],markerT[3]-1, "cylinder", 1, 255, 255, 255, 0)
local blip = createBlipAttachedTo(markerT, 25)
setBlipVisibleDistance(blip, 400)

function centerWindow ( center_window )
	local sx, sy = guiGetScreenSize ( )
	local windowW, windowH = guiGetSize ( center_window, false )
	local x, y = ( sx - windowW ) / 2, ( sy - windowH ) / 2
	guiSetPosition ( center_window, x, y, false )
end

local sw,sh = guiGetScreenSize()
local window={}
local label={}
local button={}

wndTra = guiCreateWindow(0,0,400,120,"Job-Farmer",false)
centerWindow(wndTra)
guiSetVisible(wndTra,false)

labeTra = guiCreateLabel(5,25,390,50," Hello, can you help me with my work?",false,wndTra)
guiSetFont(labeTra, "default-bold-small")
guiLabelSetHorizontalAlign(labeTra, "center", false)

buttonTra1 = guiCreateButton(10,70,180,35,"...",false,wndTra)
guiSetFont(buttonTra1,"default-bold-small")
guiSetProperty(buttonTra1, "NormalTextColour", "FF00FF00")

buttonTra2 = guiCreateButton(210,70,180,35,"No.",false,wndTra)
guiSetFont(buttonTra2,"default-bold-small")
guiSetProperty(buttonTra2, "NormalTextColour", "FFFF0000")

function createMarkerTractor(player)
    if player == getLocalPlayer() then
        m = tractorMarks[ getMarkerCurrentState () ]
		updateMarkerCurrentState ()
        local marker = createMarker(m[1],m[2],m[3]-1, "corona", 2, 0, 255, 0, 80)
        setElementData(marker,"tractor_mark",true)
        setElementData(player,"tractor_mark",marker)
        local blip = createBlip(m[1],m[2],m[3],41,3)
        setElementData(player,"tractor_blip",blip)
        local obj = createObject(804,m[1],m[2],m[3])
        setObjectScale(obj, 1.0)
        setElementCollisionsEnabled (obj, false)
        setElementData(player,"tractor_obj",obj)
    end
end

function deleteMarkerTractor(player)
    if player == getLocalPlayer() then
        local marker = getElementData(player,"tractor_mark")
        local blip = getElementData(player,"tractor_blip")
        local obj = getElementData(player,"tractor_obj")
        if marker then if isElement(marker) then destroyElement(marker) end end
        if blip then if isElement(blip) then destroyElement(blip) end end
        if obj then if isElement(obj) then destroyElement(obj) end end
    end
end
addEvent("deleteMarkerTractor", true)
addEventHandler("deleteMarkerTractor", getRootElement(), deleteMarkerTractor)

function startClick()
    local player = getLocalPlayer()
    if (source == buttonTra1) then
        guiSetVisible(wndTra,false)
        showCursor(false)
        local state = getElementData(player,"tractor_works")
        if not state then
            triggerServerEvent("start_Tractor",player,player)
            setElementData(player,"tractor_works",0)
            createMarkerTractor(player)
            outputChatBox("[Farmer] You started work follow the markers.",0, 252, 255,true)
            
            setElementData(player,"Consultant_skin_do",getElementModel(player))
            setElementModel(player,158)
            setElementData(player,"tractor_plus",0)
            setElementData(player,"Earned_Now_Con",moneyTra)
        else
            triggerServerEvent("stop_Tractor",player,player)
            local hodok = tonumber(state)
            local profit = getElementData(player,"Earned_Total_Con")
            if not profit then profit = 0 end
            
            setElementData(player,"Earned_Total_Con",nil)
            setElementData(player,"Earned_Now_Con",nil)
            triggerServerEvent("giveMoneyTractor",player,player,profit)
            setElementData(player,"tractor_works",nil)
            
            setElementModel(player,getElementData(player,"Consultant_skin_do"))
            deleteMarkerTractor(player)
        end
    elseif (source == buttonTra2) then
        guiSetVisible(wndTra,false)
        showCursor(false)
    end
end
addEventHandler("onClientGUIClick", getRootElement(), startClick)

function onClientMarkerHit(player, mdim)
    if player == getLocalPlayer() then
        if mdim then
            local veh = getPedOccupiedVehicle(player)
            local state = getElementData(player,"tractor_works")
            if getElementData(source,"tractor_mark") then
                if veh then
                    setElementData(player,"tractor_plus",tonumber(getElementData(player,"tractor_plus")) + 1)
                    if getElementData(player,"tractor_plus") >= #tractorMarks then
                        restoreMarkerCurrentState ()
                        local pacienty = tonumber(getElementData(player,"tractor_plus"))
                        if pacienty > 0 then
                            setElementData(player,"tractor_works",tonumber(state) + pacienty)
                            setElementData(player,"tractor_plus",0)
                            if not getElementData(player,"Earned_Total_Con") then
                                setElementData(player,"Earned_Total_Con",0)
                            end
                            if not getElementData(player,"Earned_Now_Con") then setElementData(player,"Earned_Now_Con",0) end
                            setElementData(player,"Earned_Total_Con",getElementData(player,"Earned_Total_Con") + getElementData(player,"Earned_Now_Con"))
                            deleteMarkerTractor(player)
                            outputChatBox("[Farmer] Your rights :"..getElementData(player,"Earned_Total_Con").."$",0, 252, 255,true)
                            outputChatBox("[Farmer] Go to the farmer to get salary.",0, 252, 255,true)
                        end
                    else
                        deleteMarkerTractor(player)
                        createMarkerTractor(player)
                    end
                end
            end
        end
    end
end
addEventHandler("onClientMarkerHit", getRootElement(), onClientMarkerHit)

addEventHandler ( "onClientMarkerHit", getRootElement(), function(ply)
	if ply ~= localPlayer then return end
	if source == markerT then
        local state = getElementData(ply,"tractor_works")
        local veh = getPedOccupiedVehicle(ply)
        if not veh then
            guiSetVisible(wndTra,true)
            showCursor(true)
            if not state then
                guiSetText(buttonTra1,"Yes.")
            else
                guiSetText(buttonTra1,"Receive salary.")
            end
        end
	end
end)

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

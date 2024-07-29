--------------------------------------------[Устройство]
local entradaB = createMarker(850.4345703125,-604.6669921875,18.421875, "cylinder", 1, 255, 255, 255, 0)

addEventHandler( "onClientRender", root, function (  )
       local x, y, z = getElementPosition( entradaB )
       local Mx, My, Mz = getCameraMatrix(   )
        if ( getDistanceBetweenPoints3D( x, y, z, Mx, My, Mz ) <= 20 ) then
           local WorldPositionX, WorldPositionY = getScreenFromWorldPosition( x, y, z +1, 0.07 )
            if ( WorldPositionX and WorldPositionY ) then
			    dxDrawText("Trabajo Electricista", WorldPositionX - 1, WorldPositionY + 1, WorldPositionX - 1, WorldPositionY + 1, tocolor(0, 0, 0, 255), 1.52, "default-bold", "center", "center", false, false, false, false, false)
			    dxDrawText("Trabajo Electricista", WorldPositionX - 1, WorldPositionY + 1, WorldPositionX - 1, WorldPositionY + 1, tocolor(255, 255, 255, 255), 1.50, "default-bold", "center", "center", false, false, false, false, false)
            end
      end
end 
)
---------------------------------------------

local pacienty = { -- Coordenadas de pilares con problemas
{823.388671875,-542.5234375,16.3359375,150},
{712.427734375,-590.52734375,16.328144073486,150},
{663.3798828125,-552.2744140625,16.3359375,150},
{687.638671875,-496.2373046875,16.3359375,150},
{486.1025390625,-421.220703125,28.841636657715,150},
{-112.8193359375,-387.9267578125,1.4296875,150},
{-434.1240234375,-83.4228515625,58.74418258667,150},
{-1015.53125,-432.6962890625,36.562747955322,150},
{-514.9140625,-511.9375,25.5234375,150},
{-514.9140625,-511.9375,25.5234375,150},
}

local pickupMed = { -- Marcador de dispositivo
{850.4345703125,-604.6669921875,18.421875},
}

electricianMessages = -- Список неполадок электросети
{
	"Mal funcionamiento del generador.",
	"Aflojamiento de la polea.",
    "Pobre contacto con el suelo.",
    "Quemado de filamentos.",
    "Circuito abierto de la fuente de alimentación.",
    "Cable roto.",
}

for a=1,#pickupMed do
    local x,y,z = pickupMed[a][1],pickupMed[a][2],pickupMed[a][3]
    local marker = createMarker( x, y, z-0.85, "cylinder", 1, 255, 50, 50, 100)
    setElementData(marker,"Электрик_маркер_устроиться",a)
    --local blip = createBlip(x, y, z, 22, 2)
    setBlipVisibleDistance(blip, 400)
end

local sw,sh = guiGetScreenSize()
local window={}
local label={}
local button={}

window[1] = guiCreateWindow((sw-550)/2,(sh-200)/2,500,120,"Trabajo Electricista",false)
label[1] = guiCreateLabel(0,25,490,30,"Bienvenido a electricista. \nTu labor es encontrar y solucionar varios problemas de energía.",false,window[1])
guiSetFont(label[1], "default-bold-small")
guiLabelSetHorizontalAlign(label[1], "center", false)
button[1] = guiCreateButton(10,70,200,30,"...",false,window[1])
button[2] = guiCreateButton(290,70,200,30,"Cerrar",false,window[1])
guiSetVisible(window[1],false)

function createMarkerElectrician(player)
    if player == getLocalPlayer() then
        local d = math.random(1,#pacienty)
        local x,y,z = pacienty[d][1],pacienty[d][2],pacienty[d][3]
        local marker = createMarker( x, y, z-0.85, "cylinder", 1, 255, 255, 255, 20)
        setElementData(marker,"Электрик_маркер_пациент",true)
        setElementData(player,"Электрик_маркер_пациент",marker)
        local blip = createBlip(x,y,z,41,3)
        setElementData(player,"Электрик_пациент_блип",blip)
        setElementData(player,"Пациент_Кэш",pacienty[d][4])
    end
end

function deleteMarkerElectrician(player)
    if player == getLocalPlayer() then
        local ped = getElementData(player,"Электрик_пациент")
        local blip = getElementData(player,"Электрик_пациент_блип")
        local marker = getElementData(player,"Электрик_маркер_пациент")
        if marker then
            if isElement(marker) then destroyElement(marker) end
        end
        if blip then
            if isElement(blip) then destroyElement(blip) end
        end
        if ped then
            if isElement(ped) then destroyElement(ped) end
        end
    end
end
addEvent("deleteMarkerElectrician", true)
addEventHandler("deleteMarkerElectrician", getRootElement(), deleteMarkerElectrician)

function startClick()
    local player = getLocalPlayer()
    if (source == button[1]) then
        guiSetVisible(window[1],false)
        showCursor(false)
        local state = getElementData(player,"Электрик_работает")
        local a1 = getElementData(player,"Электрик_маркер_устроиться")
        if not state then
            triggerServerEvent("start_Electrician",player,player)
            setElementData(player,"Электрик_работает",0)
            setElementData(player,"Электрик_машина_пациент",0)
            setElementData(player,"Электрик_работает_номер",a1)
            createMarkerElectrician(player)
            outputChatBox("#FFFF00[Despachador] #FFFFFFHas empezado a trabajar. Siga hasta la marca.",255,255,255,true)
        else
            local hodok = tonumber(state)
            local profit = getElementData(player,"Электрик_Прибавление")
            if not profit then profit = 0 end
            
            setElementData(player,"Электрик_Прибавление",nil)
            setElementData(player,"Пациент_Кэш",nil)
            triggerServerEvent("stop_Electrician",player,player)
            triggerServerEvent("giveMoneyElectrician",player,player,profit)
            setElementData(player,"Электрик_работает",nil)
            setElementData(player,"Электрик_работает_номер",nil)
        end
    elseif (source == button[2]) then
        guiSetVisible(window[1],false)
        showCursor(false)
    end
end
addEventHandler("onClientGUIClick", getRootElement(), startClick)

function onClientMarkerHit(player, mdim )
    if player == getLocalPlayer() then
        if mdim then
            local marker = source
            local veh = getPedOccupiedVehicle(player)
            local state = getElementData(player,"Электрик_работает")
            local a1 = getElementData(marker,"Электрик_маркер_устроиться")
            if a1 then
                if not veh then
                    guiSetVisible(window[1],true)
                    showCursor(true)
                    setElementData(player,"Электрик_маркер_устроиться",a1)
                    if not state then
                        guiSetText(button[1],"Empezar")
                    else
                        guiSetText(button[1],"Completar")
                    end
                end
            elseif getElementData(marker,"Электрик_маркер_пациент") then
                if not veh then
                    setElementFrozen(player,true)
                    setPedAnimation(player,"BOMBER","BOM_Plant",-1,false,true,true,false)
                    setElementData(player,"Электрик_машина_пациент",tonumber(getElementData(player,"Электрик_машина_пациент")) + 1)
                    outputChatBox("#FFFF00[Despachador] #FFFFFFHas encontrado el problema, ahora soluciona el tema con la fuente de alimentación.",255,255,255,true)
                    setTimer(function()
                        if isElement(player) and getElementData(player,"Электрик_работает") then
                            local pacienty = tonumber(getElementData(player,"Электрик_машина_пациент"))
                            if pacienty > 0 then
                                setElementData(player,"Электрик_работает",tonumber(state) + pacienty)
                                setElementData(player,"Электрик_машина_пациент",0)
                                if not getElementData(player,"Электрик_Прибавление") then
                                setElementData(player,"Электрик_Прибавление",0)
                                end
                                if not getElementData(player,"Пациент_Кэш") then setElementData(player,"Пациент_Кэш",0) end
                                setElementData(player,"Электрик_Прибавление",getElementData(player,"Электрик_Прибавление") + getElementData(player,"Пациент_Кэш"))
                        
                                deleteMarkerElectrician(player)
                                setElementFrozen(player,false)
                                setPedAnimation(player,false)
                                createMarkerElectrician(player)
                                
                                outputChatBox("#FFFF00[Despachador] #FFFFFFLa red eléctrica está solucionada. El problema era: *"..electricianMessages[math.random(1,#electricianMessages)].."*",255,255,255,true)
                            end
                        end
                    end,10000,1)
                end
            end
        end
    end
end
addEventHandler("onClientMarkerHit", getRootElement(), onClientMarkerHit )

function job_quit_Medik()
    local player = source
	    if player == getLocalPlayer() then
        local state = getElementData(player,"Электрик_работает")
        if state then
            local profit = getElementData(player,"Электрик_Прибавление")
            if not profit then profit = 0 end
            
            setElementData(player,"Электрик_Прибавление",nil)
            setElementData(player,"Пациент_Кэш",nil)
            triggerServerEvent("stop_Electrician",player,player)
            triggerServerEvent("giveMoneyElectrician",player,player,profit)
            outputChatBox("#FFFF00[Despachador] #FFFFFFUsted ha ganado #00FF00"..profit.." #FFFFFF$",255,255,255,true)
        end
	end
end
addEventHandler("onClientPlayerWasted", root, job_quit_Medik)
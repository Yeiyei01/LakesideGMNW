addEventHandler('onClientResourceStart', resourceRoot, function()     
    local txd = engineLoadTXD('street-cleaning/car.txd',574)
    engineImportTXD(txd,574)
    local dff = engineLoadDFF('street-cleaning/car.dff',574)
    engineReplaceModel(dff,574)
end)

--------------------------------------------[Устройство]
local entradaB = createMarker(601.5078125,1232.599609375,11.71875, "cylinder", 1, 255, 255, 255, 0)

addEventHandler( "onClientRender", root, function (  )
       local x, y, z = getElementPosition( entradaB )
       local Mx, My, Mz = getCameraMatrix(   )
        if ( getDistanceBetweenPoints3D( x, y, z, Mx, My, Mz ) <= 20 ) then
           local WorldPositionX, WorldPositionY = getScreenFromWorldPosition( x, y, z +1, 0.07 )
            if ( WorldPositionX and WorldPositionY ) then
			    dxDrawText("Limpieza Calles", WorldPositionX - 1, WorldPositionY + 1, WorldPositionX - 1, WorldPositionY + 1, tocolor(0, 0, 0, 255), 1.52, "default-bold", "center", "center", false, false, false, false, false)
			    dxDrawText("Limpieza Calles", WorldPositionX - 1, WorldPositionY + 1, WorldPositionX - 1, WorldPositionY + 1, tocolor(255, 255, 255, 255), 1.50, "default-bold", "center", "center", false, false, false, false, false)
                dxDrawText("\n\nSanidad Riverside", WorldPositionX - 1, WorldPositionY + 1, WorldPositionX - 1, WorldPositionY + 1, tocolor(0, 0, 0, 255), 1.52, "default-bold", "center", "center", false, false, false, false, false)
			    dxDrawText("\n\nSanidad Riverside", WorldPositionX - 1, WorldPositionY + 1, WorldPositionX - 1, WorldPositionY + 1, tocolor(0, 191, 255, 255), 1.50, "default-bold", "center", "center", false, false, false, false, false)
            end
      end
end 
)

---------------------------------------------

local markWasher = { -- x,y,z.
    {496.455078125,1045.6025390625,28.11318397522},
    {477.7158203125,1040.966796875,28.109483718872},
    {456.3046875,1036.01953125,28.102312088013},
    {421.3310546875,1027.1201171875,28.099033355713},
    {384.625,1017.8994140625,28.148086547852},
    {353.087890625,1010.09765625,28.144807815552},
    {328.8125,1004.5791015625,28.109247207642},
    {300.806640625,997.8037109375,28.115098953247},
    {270.5126953125,988.8916015625,27.914413452148},
    {245.0263671875,978.8818359375,27.918912887573},
    {213.125,1004.154296875,26.669858932495},
    {201.4228515625,1036.8974609375,22.98761177063},
    {189.98046875,1082.9072265625,17.708408355713},
    {186.2060546875,1121.44921875,14.897956848145},
    {159.8681640625,1155.1669921875,14.250853538513},
    {118.517578125,1198.5009765625,17.753629684448},
    {86.6962890625,1231.75,19.532585144043},
    {74.5068359375,1222.908203125,18.541433334351},
    {75.1572265625,1209.798828125,18.560256958008},
    {91.5634765625,1199.138671875,18.252969741821},
}

local pickupCom = { -- Marcador de dispositivo.
    {601.5078125,1232.599609375,11.71875},
}

moneyWasher = 50 -- Зарплата

for a=1,#pickupCom do
    local x,y,z = pickupCom[a][1],pickupCom[a][2],pickupCom[a][3]
    local marker = createPickup(x, y, z, 3, 1275)
    setElementData(marker,"Мойщик_маркер_устроиться",a)
    local blip = createBlip(x, y, z, 15)
    setBlipVisibleDistance(blip, 400)
end

local sw,sh = guiGetScreenSize()
local window={}
local label={}
local button={}

window[1] = guiCreateWindow((sw-550)/2,(sh-200)/2,500,120,"Limpieza Calles",false)
label[1] = guiCreateLabel(10,25,490,50,"Bienvenido al trabajo de limpiador de calles.\nSu tarea consiste en lavar los lugares de difícil acceso (bordillos) en las carreteras.",false,window[1])
guiSetFont(label[1], "default-bold-small")
guiLabelSetHorizontalAlign(label[1], "center", false)
button[1] = guiCreateButton(10,70,200,30,"...",false,window[1])
button[2] = guiCreateButton(290,70,200,30,"Cerrar",false,window[1])
guiSetVisible(window[1],false)

function createMarkerWasher1(player)
    if player == getLocalPlayer() then
        local d = math.random(1,#markWasher)
        local marker = createMarker(markWasher[d][1],markWasher[d][2],markWasher[d][3]-1, "cylinder", 1.5, 0, 191, 255, 120)
        setElementData(marker,"Мойщик_маркер_пациент",true)
        setElementData(player,"Мойщик_маркер_пациент",marker)
        local blip = createBlip(markWasher[d][1],markWasher[d][2],markWasher[d][3],41,3)
        setElementData(player,"Мойщик_пациент_блип",blip)
        setElementData(player,"Пациент_Кэш",moneyWasher)
    end
end

function startClick()
    local player = getLocalPlayer()
    if (source == button[1]) then
        guiSetVisible(window[1],false)
        showCursor(false)
        local state = getElementData(player,"Мойщик_работает")
        local a1 = getElementData(player,"Мойщик_маркер_устроиться")
        if not state then
            triggerServerEvent("start_Washer",player,player)
            setElementData(player,"Мойщик_Маршрут1",true)
            setElementData(player,"Мойщик_работает",0)
            setElementData(player,"Мойщик_количество",0)
            setElementData(player,"Мойщик_работает_номер",a1)
            createMarkerWasher1(player)
            outputChatBox("#00FF00[Limpieza Calles] #FFFFFFHas conseguido un trabajo. Para lavar, pulse el 3.",255,255,255,true)
        else
            local hodok = tonumber(state)
            local profit = getElementData(player,"Мойщик_Прибавление")
            if not profit then profit = 0 end
            
            setElementData(player,"Мойщик_Маршрут1",nil)
            setElementData(player,"Мойщик_Прибавление",nil)
            setElementData(player,"Пациент_Кэш",nil)
            triggerServerEvent("stop_Washer",player,player)
            triggerServerEvent("giveMoneyWasher",player,player,profit)
            setElementData(player,"Мойщик_работает",nil)
            setElementData(player,"Мойщик_работает_номер",nil)
            deleteMarkers(player)
        end
    elseif (source == button[2]) then
        guiSetVisible(window[1],false)
        showCursor(false)
    end
end
addEventHandler("onClientGUIClick", getRootElement(), startClick)

bindKey("3", "down", function()
    local marker = getElementData(getLocalPlayer(),"Мойщик_маркер_пациент")
    if isElementWithinMarker(getLocalPlayer(), marker) then
        local state = getElementData(getLocalPlayer(),"Мойщик_работает")
        if state then
            local blip = getElementData(getLocalPlayer(),"Мойщик_пациент_блип")
            local veh = getPedOccupiedVehicle(getLocalPlayer())
            if veh then
                    outputChatBox('#00FF00[Limpieza Calles] #FFFFFFEspere a que la limpieza se lleve a cabo.',255,255,255,true)
                    deleteMarkers(getLocalPlayer())
                    setElementData(getLocalPlayer(),"Мойщик_количество",tonumber(getElementData(getLocalPlayer(),"Мойщик_количество")) + 1)
                    setElementFrozen(veh, true)
                    local x,y,z = getPositionFromElementOffset(veh,0,2,-1)
                    local eff = createEffect("waterfall_end", x, y, z)
                    setTimer(function()
                        local pacienty = tonumber(getElementData(getLocalPlayer(),"Мойщик_количество"))
                        if pacienty > 0 then
                            setElementData(getLocalPlayer(),"Мойщик_работает",tonumber(state) + pacienty)
                            setElementData(getLocalPlayer(),"Мойщик_количество",0)
                            if not getElementData(getLocalPlayer(),"Мойщик_Прибавление") then
                                setElementData(getLocalPlayer(),"Мойщик_Прибавление",0)
                            end
                            if not getElementData(getLocalPlayer(),"Пациент_Кэш") then setElementData(getLocalPlayer(),"Пациент_Кэш",0) end
                            setElementData(getLocalPlayer(),"Мойщик_Прибавление",getElementData(getLocalPlayer(),"Мойщик_Прибавление") + getElementData(getLocalPlayer(),"Пациент_Кэш"))

                            setElementFrozen(veh, false)
                            if isElement(eff) then destroyElement(eff) end
                            createMarkerWasher1(player)
                            
                            outputChatBox("#00FF00[Limpieza Calles] #FFFFFFLa limpieza se ha llevado a cabo. Dinero recibido: #00FF00"..getElementData(getLocalPlayer(),"Пациент_Кэш").." #FFFFFF$",255,255,255,true)
                            outputChatBox("#00FF00[Limpieza Calles] #FFFFFFTotal ganado: #00FF00"..getElementData(getLocalPlayer(),"Мойщик_Прибавление").." #FFFFFF$",255,255,255,true)
                        end
                    end, 5000, 1)
            else
                outputChatBox("#00FF00[Limpieza Calles] #FFFFFFSiéntate en el T/C.",255,255,255,true)
            end
        else
            outputChatBox("#00FF00[Limpieza Calles] #FFFFFFNo trabajas como limpiador de calles.",255,255,255,true)
        end
    else
        outputChatBox("#00FF00[Limpieza Calles] #FFFFFFNo estás en el punto de lavado.",255,255,255,true)
    end
end)

function getPositionFromElementOffset(element,offX,offY,offZ)
	if not offX or not offY or not offZ then
		return false
	end
    local m = getElementMatrix ( element )
    local x = offX * m[1][1] + offY * m[2][1] + offZ * m[3][1] + m[4][1]
    local y = offX * m[1][2] + offY * m[2][2] + offZ * m[3][2] + m[4][2]
    local z = offX * m[1][3] + offY * m[2][3] + offZ * m[3][3] + m[4][3]
    return x, y, z 
end

function deleteMarkers(player)
    if player == getLocalPlayer() then
        local marker = getElementData(player,"Мойщик_маркер_пациент")
        local blip = getElementData(player,"Мойщик_пациент_блип")
        if marker then
            if isElement(marker) then destroyElement(marker) end
        end
        if blip then
            if isElement(blip) then destroyElement(blip) end
        end
    end
end
addEvent("deleteMarkers", true)
addEventHandler("deleteMarkers", getRootElement(), deleteMarkers) 

function onClientPickupHit(player, mdim)
    if player == getLocalPlayer() then
        if mdim then
            local veh = getPedOccupiedVehicle(player)
            local state = getElementData(player,"Мойщик_работает")
            local a1 = getElementData(source,"Мойщик_маркер_устроиться")
            if a1 then
                if not veh then
                    guiSetVisible(window[1],true)
                    showCursor(true)
                    setElementData(player,"Мойщик_маркер_устроиться",a1)
                    if not state then
                        guiSetText(button[1],"Iniciar")
                    else
                        guiSetText(button[1],"Completar")
                    end
                end
            end
        end
    end
end
addEventHandler("onClientPickupHit", getRootElement(), onClientPickupHit)

function job_quit_Medik()
    local player = source
	    if player == getLocalPlayer() then
        local state = getElementData(player,"Мойщик_работает")
        if state then
            local profit = getElementData(player,"Мойщик_Прибавление")
            if not profit then profit = 0 end
            
            setElementData(player,"Мойщик_Прибавление",nil)
            setElementData(player,"Пациент_Кэш",nil)
            triggerServerEvent("stop_Washer",player,player)
            triggerServerEvent("giveMoneyWasher",player,player,profit)
            outputChatBox("#FFFF00[Despachador] #FFFFFFUsted ha ganado #00FF00"..profit.." #FFFFFF$",255,255,255,true)
        end
	end
end
addEventHandler("onClientPlayerWasted", root, job_quit_Medik)
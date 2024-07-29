local screenW, screenH = guiGetScreenSize()

addEvent("openinf_minertruck", true)
screenWidth, screenHeight = guiGetScreenSize()
function windm ()
    if not getElementData ( localPlayer, "minertruck_working") then
    infowind = guiCreateWindow((screenW - 321) / 2, (screenH - 60) / 2, 400, 225, "Cantera", false)
    infoLabel1 = guiCreateLabel(15,25,450,80,"¡Oye, hermano! Estás aquí por una razón, hay un trabajo para ti",false,infowind)
    infoLabel2 = guiCreateLabel(15,50,450,80,"Tu tarea es conducir un camión de arena de varias toneladas en una cantera",false,infowind)
    infoLabel3 = guiCreateLabel(15,75,450,80,"Te llevarás un buen empujón a tu cartera por ello.",false,infowind)
        guiSetFont(whatLabelQ, "default-bold-small")
          
          guiMemoSetReadOnly( infotext, true )
          --guiSetFont(text2, "default-bold-small") 
          showCursor(true)
          guiSetVisible ( infowind , true) 
          guiWindowSetSizable(infowind, false) 
          Button_Glose = guiCreateButton(270, 125, 250, 45, "Cancelar", false, infowind)
          Button_Start = guiCreateButton(10, 125, 250, 45, "Empezar", false, infowind)
         
          addEventHandler("onClientGUIClick", Button_Start, kit )
            addEventHandler("onClientGUIClick", Button_Glose, noshow )
    else
        for i, v in ipairs ( createdPickups ) do
            if isElement ( v ) then
                local icon = getElementData ( v, "icon" )
                if isElement ( icon ) then
                    destroyElement ( icon )
                end
                destroyElement ( v )
            end
        end
        triggerServerEvent ( "finitoWork_minertruck", localPlayer )
        setElementData ( localPlayer, "minertruck_working", false )
        outputChatBox ( "Has dejado tu trabajo", 255, 255, 255, true )
    end
end
addEventHandler("openinf_minertruck", root, windm )
function noshow ()
 if ( source == Button_Glose ) then
   destroyElement ( infowind )
   showCursor ( false ) 
 end
end
function kit ()
 if ( source == Button_Start ) then
    startWorking()
    destroyElement ( infowind )
    showCursor ( false )
  end 
end

addEvent ( "pay", true )
function giving ()
 end
addEventHandler("pay", resourceRoot, giving )
addEvent ( "get", true )
function peremen (plr)
 plr = getLocalPlayer ()
end
addEventHandler("get", resourceRoot, peremen )

pickupSpawns = {
    { 542.3,881.4,-34.8 },   
}

max_pickups_set = 1 --сколько остановок

createdPickups = {}

max_pickups = max_pickups_set
if max_pickups_set > #pickupSpawns then
    max_pickups = #pickupSpawns
end

function startWorking ()
    if not getElementData ( localPlayer, "minertruck_working" ) then
        createdPickups = {}
        triggerServerEvent ( "picku_minertruck", localPlayer )
        setElementData ( localPlayer, "minertruck_working", true )
        setElementData ( localPlayer, "minertruck_working_hit", 0 )
        outputChatBox ( "¡Muy bien hermano, ahora ve y sube al camión! \nVe al punto de descarga, está marcado en el mapa \nAhí abajo, el capataz te dará un presupuesto.", 255, 255, 255, true )        
                
        for i, v in ipairs ( pickupSpawns ) do
        local pick = createMarker ( v[1],v[2],v[3], "checkpoint", 2.2, 0, 255, 255, 30 )
            setElementData ( pick, "taken", false )
            setElementData ( pick, "minertruck_pickup", true )
            setElementData ( pick, "id", i )
            if i == 1 then
                local icon = createBlipAttachedTo ( pick, 41, 2 )
                setElementData ( pick, "icon", icon )
            end
            table.insert (createdPickups, pick)
        end
    end
end 

addEventHandler("onClientVehicleExit", getRootElement(),
    function(thePlayer, seat)
        if thePlayer == getLocalPlayer() then
            if getElementData ( localPlayer, "minertruck_working" ) then
                for i, v in ipairs ( createdPickups ) do
                    if isElement ( v ) then
                        local icon = getElementData ( v, "icon" )
                        if isElement ( icon ) then
                            destroyElement ( icon )
                        end
                        destroyElement ( v )
                    end
                end
                triggerServerEvent ( "finitoWork_minertruck", localPlayer )
                setElementData ( localPlayer, "minertruck_working", false )
                outputChatBox ( "El trabajo ha terminado", 255, 255, 255, true )
            end
        end
    end
)

function clientPickupHit(thePlayer, matchingDimension)
    if thePlayer == localPlayer and getElementData ( source, "minertruck_pickup" ) and not getElementData ( source, "taken" ) then
        setElementData ( source, "taken", true )
                    setElementVelocity ( getPedOccupiedVehicle(localPlayer), 0, 0, 0 )
                    toggleAllControls ( false, true, false )
                    setTimer ( finishBoarding, 10000, 1 )
                    setElementData ( localPlayer, "minertruck_pickup", 2 )
        local hitted = getElementData ( localPlayer, "minertruck_working_hit" ) or 0
        hitted = hitted+1
        local icon = getElementData ( source, "icon" )
        if isElement ( icon ) then
            destroyElement ( icon )
        end
        destroyElement(source)
        setElementData ( localPlayer, "minertruck_working_hit", hitted)
        if hitted >= max_pickups then
            for i, v in ipairs ( createdPickups ) do
                if isElement ( v ) then
                    local icon = getElementData ( v, "icon" )
                    if isElement ( icon ) then
                        destroyElement ( icon )
                    end
                    destroyElement ( v )
                end
            end
            setElementData ( localPlayer, "minertruck_working", false )
            triggerServerEvent ( "finitoWork_minertruck", localPlayer )
            outputChatBox ( "¡Oh, viejo amigo! Oye, espera, voy a preparar tu pasta...", 255, 255, 255, true )
            return true
        end
        if createdPickups[hitted+1] then
            local icon = createBlipAttachedTo ( createdPickups[hitted+1], 41, 2 )
            setElementData ( createdPickups[hitted+1], "icon", icon )
        end
    end
end

function finishBoarding ()
    toggleAllControls ( true, true, true )
    triggerServerEvent ( "giveMoneyFromClient_minertruck", localPlayer, 3500 ) --зарплата
                setElementPosition ( trailer, bases[getElementData ( localPlayer, "nearestBase" )][1], bases[getElementData ( localPlayer, "nearestBase" )][2], bases[getElementData ( localPlayer, "nearestBase" )][3] )
end
addEventHandler ( "onClientMarkerHit", getRootElement(), clientPickupHit )










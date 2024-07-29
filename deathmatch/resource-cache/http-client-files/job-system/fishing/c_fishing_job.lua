local count = 0
local state = 0
local mgTimer = nil
local escapeTimer = nil
local pFish = nil

local fishermanJohn = createPed( 209, 133.8759765625, -1793.3427734375, 2.2126874923706 )
setPedRotation(fishermanJohn, 328)
setElementDimension(fishermanJohn, 0)
setElementInterior(fishermanJohn , 0)
setElementData(fishermanJohn, "nametag", true)
setElementData(fishermanJohn, "name", "Pescador John")
setElementFrozen(fishermanJohn, true)

function startFishingSession()
    if exports['item-system']:hasItem(localPlayer, 49, 1) then
        if getElementData(localPlayer, "isfishing") then
            outputChatBox("Ya estás pescando...", 255, 0, 0)
        else 
            if isPedInVehicle(localPlayer) then
                return outputChatBox("No se puede pescar mientras se navega.", 255, 0, 0) 
            end
            if onBoat() then
                triggerServerEvent("sendAmeClient", localPlayer, "lanza su sedal de su caña de pescar.")
                triggerServerEvent("artifacts:add", localPlayer, localPlayer, "rod")
                setElementData(localPlayer, "isfishing", true)
                
                mgTimer = setTimer(
                    function()
                        if not onBoat() then
                            endFishingSession()
                            return outputChatBox("Has salido del agua.", 255, 0, 0)
                        end
                        pFish = guiCreateProgressBar(0.425, 0.75, 0.2, 0.035, true)
                        exports.hud:sendBottomNotification(localPlayer, "Pescando", "[!] Tienes un pescado. Usa el + y el - para juntar el sedal.")
                        bindKey("z", "down", beginFishingGame)
                        -- Start the timer which determins if the fish would get away.
                        escapeTimer = setTimer(
                            function() 
                                endFishingSession()
                                outputChatBox("Al enrollar el sedal, notas que se rompe.", 255, 0, 0)
                                triggerServerEvent("fishing:takeRod", localPlayer, localPlayer)
                            end, 
                        math.random(8000, 10000), 1)
                    end
                , math.random(40000, 60000), 1)  
                outputChatBox("Puedes dejar de pescar con /dejarpesca.", 0, 255, 0)
            else 
                outputChatBox("No puedes pescar aquí.", 255, 0, 0)
            end
        end
    else
        outputChatBox("No tienes una caña de pescar.", 255, 0, 0)
    end
end

function endFishingSession()
    if (getElementData(localPlayer, "isfishing")) then

        if isTimer(mgTimer) then
            killTimer(mgTimer)
        end

        if isTimer(escapeTimer) then
            killTimer(escapeTimer)
        end

        if isElement(pFish) then
            destroyElement(pFish)
            pFish = nil
            count = 0
            unbindKey("z", "down", reelItIn)
            unbindKey("x", "down", reelItIn)
        end

        triggerServerEvent("artifacts:remove", localPlayer, localPlayer, "rod")
        triggerServerEvent("sendAmeClient", localPlayer, "junta su sedal de su caña de pescar.")
        setElementData(localPlayer, "isfishing", false)
    end
end

-- Old minigame made by Maxime
function beginFishingGame()
    if (state==0) then
		bindKey("z", "down", beginFishingGame)
		unbindKey("z", "down", beginFishingGame)
		state = 1
	elseif (state==1) then
		bindKey("x", "down", beginFishingGame)
		unbindKey("x", "down", beginFishingGame)
		state = 0
	end
	
    count = count + 1
    guiProgressBarSetProgress(pFish, count)
	
    if (count>=100) then
        killTimer(escapeTimer)
		destroyElement(pFish)
        pFish = nil
        count = 0
		unbindKey("z", "down", reelItIn)
        unbindKey("x", "down", reelItIn)
        endFishingSession()
        triggerServerEvent("fishing:giveCatch", localPlayer, localPlayer)
    end
end

function onBoat()
    local element = getPedContactElement(localPlayer)
    local px, py, pz = getElementPosition(localPlayer)

    if (isElement(element)) and (getVehicleType(element) == "Boat") and testLineAgainstWater(px, py, pz, px, py, pz - 25) then
        return true
    else 
        return false
    end
end

function fishermanJohnRightClick(button, state, absX, absY, wx, wy, wz, element)
    if (element) and (getElementType(element)=="ped") and (button=="right") and (state=="down") then
		local pedName = getElementData(element, "name") or "Pescador"
		pedName = tostring(pedName):gsub("_", " ")

        local rcMenu
        if(pedName == "Pescador John") then 
            rcMenu = exports.rightclick:create(pedName)
            local row = exports.rightclick:addRow("Hablar")
            addEventHandler("onClientGUIClick", row,  function (button, state)
                triggerServerEvent("fishing:GeneratePayment", localPlayer, localPlayer)
            end, false)

            local row2 = exports.rightclick:addRow("Cerrar")
            addEventHandler("onClientGUIClick", row2,  function (button, state)
                exports.rightclick:destroy(rcMenu)
            end, false)
        end
    end
end

function sellFish(fish, price)
    DestroySellingGUI()

    sellfishGUI = guiCreateWindow(744, 301, 303, 117, "Sell Fish", false)
    exports.global:centerWindow(sellfishGUI)
    showCursor(true)
    guiWindowSetSizable(sellfishGUI, false)

    sellfishLabel = guiCreateLabel(4, 18, 295, 44, "Tienes " .. fish .. " pescados y los venderías a $" .. price .. "x", false, sellfishGUI)
    guiLabelSetHorizontalAlign(sellfishLabel, "center", true)
    guiLabelSetVerticalAlign(sellfishLabel, "center")
    sellfishbutton = guiCreateButton(10, 68, 140, 34, "Vender pescado", false, sellfishGUI)
    cancelfishbutton = guiCreateButton(153, 68, 140, 34, "Cancelar", false, sellfishGUI) 
    
    addEventHandler("onClientGUIClick", sellfishbutton, function(button) 
        if button == "left" then
            triggerServerEvent("fishing:sellFish", localPlayer, localPlayer, price)
            DestroySellingGUI()
        end
    end)

    addEventHandler("onClientGUIClick", cancelfishbutton, function(button)
        if button == "left" then
            DestroySellingGUI()
        end
    end)

end

function DestroySellingGUI()
    if isElement(sellfishGUI) then
        destroyElement(sellfishGUI)
        showCursor(false)
    end
end

-- Commands
addCommandHandler("pescar", startFishingSession)
addCommandHandler("dejarpesca", endFishingSession)
addEvent("fishing:SellFishGUI", true)
addEventHandler("fishing:SellFishGUI", root, sellFish)
addEventHandler("onClientChangeChar", root, endFishingSession)
addEventHandler("onClientClick", root, fishermanJohnRightClick)
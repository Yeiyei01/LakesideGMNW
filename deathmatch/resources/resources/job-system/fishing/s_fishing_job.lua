local items = exports['item-system']
local fishItem = 273
local FishType = {
    [1] = {fishname = "Cangrejo chino", fishweight = 0.5, zone = 1},
    [2] = {fishname = "Platija estrellada", fishweight = 11, zone = 1},
    [3] = {fishname = "Camarones de agua dulce de San Andrés", fishweight = 1, zone = 1},
    [4] = {fishname = "Lamprea del Pacifico", fishweight = 0.6, zone = 1},
    [5] = {fishname = "Lamprea del arroyo occidental", fishweight = 0.1, zone = 1},
    [6] = {fishname = "Esturión Blanco", fishweight = 99, zone = 1},
    [7] = {fishname = "Sábalo americano", fishweight = 6, zone = 1},
    [8] = {fishname = "Salmón Chino", fishweight = 74, zone = 1},
    [9] = {fishname = "Salmón Rosado", fishweight = 8, zone = 1},
    [10] = {fishname = "Trucha arcoiris", fishweight = 26, zone = 1},
    [11] = {fishname = "Lubina rayada", fishweight = 68, zone = 1},
    [12] = {fishname = "Bagre azul", fishweight = 81, zone = 1},
    [13] = {fishname = "Albacora", fishweight = 72, zone = 2},
    [14] = {fishname = "Atún listado", fishweight = 41, zone = 2},
    [15] = {fishname = "Atún Caballa", fishweight = 15, zone = 2},
    [16] = {fishname = "Salmón del atlántico", fishweight = 101, zone = 2},
    [17] = {fishname = "Salmón Chino", fishweight = 134, zone = 2},
    [18] = {fishname = "Lubina Negra", fishweight = 5, zone = 2},
    [19] = {fishname = "Pez Cabeza de Oveja", fishweight = 25, zone = 2},
    [20] = {fishname = "Pez Taza", fishweight = 4, zone = 2},
    [21] = {fishname = "Raya eléctrica veteado", fishweight = 3, zone = 2},
    [22] = {fishname = "Pez espada del Atlántico", fishweight = 19, zone = 2},
    [23] = {fishname = "Pez Tambor Rojo", fishweight = 55, zone = 2},
}

function giveCatch(ThePlayer)
    local x, y, z = getElementPosition(ThePlayer)
    local keyset = {}
    
    if ( y >= 3000 ) or ( y <= -3000 ) or ( x >= 3000 ) or ( x <= -3000) then
        whichZone = 2
    else 
        whichZone = 1
    end

    for i, v in ipairs(FishType) do
        if (v.zone == whichZone) then
            table.insert(keyset, i)
        end
    end

    ourFish = FishType[math.random(#keyset)] 

    if items:hasSpaceForItem(ThePlayer, fishItem, 1) then
        items:giveItem(ThePlayer, fishItem, tostring(ourFish.fishname) .. ":" .. tostring(ourFish.fishweight))
        outputChatBox("Has pescado un " .. tostring(ourFish.fishname) .. "", ThePlayer, 0, 255, 0)
    end
end

-- Added this function due to item system not allowing items to be taken clientside.
function takeRod(ThePlayer)
    items:takeItem(ThePlayer, 49, 1)
end

function getPayRate(client, money)
	local hours = tonumber(getElementData(client, "hoursplayed"))
	local rate = money
	local hoursrate = math.floor(hours*(rate*0.03))

	if hours>=10 then
		rate = rate-hoursrate
		if rate < 10 then
			rate = 10
		end
	end
    return rate
end

function GenerateFishPayment(ThePlayer)
    local fishininventory = items:countItems(ThePlayer, fishItem)
    local fishCount = 0
    local perFishCost = 0
    local calculate = 0
    local fishPrice = 0

    if (fishininventory == 0) then
        return exports.global:sendLocalText(ThePlayer, "[Español] Pescador John dice: Veo que no tienes pescado para venderme.", 255, 255, 255, 10)
    end

    -- Checks their inventory for the fish items.

    for i, v in ipairs(items:getItems(ThePlayer)) do
        local ItemID, ItemValue = unpack(v)
        if ItemID == fishItem then
            fishCount = fishCount + 1
        end
    end

    --Generate a price 
    local perFishCost = math.random(120, 220)
    local calculate = perFishCost * fishCount
    local fishPrice = calculate

    fishPrice = getPayRate(ThePlayer, fishPrice)

    triggerClientEvent(ThePlayer, "fishing:SellFishGUI", ThePlayer, fishCount, fishPrice)
end

function sellTheFish(ThePlayer, price)
    for i, v in ipairs(items:getItems(ThePlayer)) do
        local ItemID, ItemValue = unpack(v)
        if ItemID == fishItem then
            items:takeItem(ThePlayer, fishItem)
        end
    end
    exports.global:sendLocalText(ThePlayer, "[Español] Pescador John dice: Gracias por los pescados, toma el dinero", 255, 255, 255, 10)
    exports.global:giveMoney(ThePlayer, price)
end

-- Commands and Events
addEvent("fishing:giveCatch", true)
addEvent("fishing:takeRod", true)
addEvent("fishing:GeneratePayment", true)
addEvent("fishing:sellFish", true)
addEventHandler("fishing:giveCatch", root, giveCatch)
addEventHandler("fishing:takeRod", root, takeRod)
addEventHandler("fishing:GeneratePayment", root, GenerateFishPayment)
addEventHandler("fishing:sellFish", root, sellTheFish)

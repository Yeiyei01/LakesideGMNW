local patatasVenta = createColSphere( -146.0703125, -49.1240234375, 3.1171875, 5)
local patatasBolgeBlip = createBlip( -146.0703125, -49.1240234375, 3.1171875, 5)
local patatasmarker = createMarker( -146.0703125, -49.1240234375, 3.1171875, "cylinder", 5, 255,0,0,125, source) -- Vender Papatas
local patatas = 108
local patatasMax = 20
addCommandHandler("vender", function(plr,cmd,komut)

local theVehicle = getPedOccupiedVehicle ( plr )
if theVehicle then
outputChatBox("[!] #FFFFFFNo puede hacer esto mientras está en el vehículo.",plr,255,0,0,true)
return end -- buraya kadar

 if not isElementWithinColShape(plr,patatasVenta) then
    outputChatBox("[!] #FFFFFFNo estás en el área requerida.",plr,255,0,0,true)
return end

if komut == "patatas" then
    if not exports.global:hasItem(plr,patatas) then outputChatBox("[§] #ffffffNo tienes el artículo que puedes vender hombre",plr,255,0,0,true) return end
        outputChatBox("[!] #FFFFFFVendiste la patata con éxito. (25$)",plr,0,255,0,true)
    exports.global:takeItem(plr,patatas)
	exports.global:giveMoney(plr,25)
    end
end)

--[[
]]

addEventHandler("onClientResourceStart", resourceRoot, function()
txd = engineLoadTXD( "woodcutter/txd.txd", 321 ) 
engineImportTXD ( txd, 321 ) 
dff = engineLoadDFF ( "woodcutter/dff.dff", 321 ) 
engineReplaceModel ( dff, 321 ) 
end)

local wyplata = 0
local marker = createMarker(-627.83850097656, -72.047264099121, 66.070327758789-1,"cylinder",3,0,0,0,100)
local pracablip = createBlipAttachedTo(marker, 46)
local punkt = 0
local blips = {}
local praca = false
local id_drzewa = 615
local id_drzewa2 = 18609

local Pracanapis = createElement("text")
setElementPosition(Pracanapis, -627.83850097656, -72.047264099121, 66.070327758789-1)
setElementData(Pracanapis, "name", "Trabajo Leñador")

local imiona = {
[1] = "Mariusz",
[2] = "Janusz",
[3] = "Eugeniusz",
[4] = "Macius",
[5] = "Zbychu", 
}

addEventHandler("onClientRender", root, function()
	if praca == true and getPedWeaponSlot(localPlayer) ~= 10 then
		setPedWeaponSlot(localPlayer, 10)
	end
for i,v in ipairs(getElementsByType("text")) do
              local rx, ry, rz = getCameraMatrix()
              local x, y, z = getElementPosition(v)
              local sy, sx = getScreenFromWorldPosition(x, y, z + 0.5)
              local dystans = getDistanceBetweenPoints3D(rx, ry, rz, x, y, z)
              local dimensions = getElementDimension(localPlayer) == getElementDimension(v)
              local interiors = getElementInterior(localPlayer) == getElementInterior(v)
              if dystans < 15 and sy and sx and interiors and dimensions then
              local text = getElementData(v, "name") or " "
              dxDrawText(text, sy, sx + 5, sy, sx, tocolor(255, 255, 255, 255), 1, "clear", "center", "center", false)
             end
end
end)

local punkty = {
{-643.2021484375, -43.724609375, 65.792472839355},
{-670.3837890625, -89.82421875, 64.649658203125},
{-684.4072265625, -107.2451171875, 64.461380004883},
{-709.9482421875, -86.38671875, 69.382034301758},
{-711.9677734375, -138.86328125, 68.869812011719},
{-696.58984375, -179.3759765625, 63.93106842041},
{-621.8623046875, -198.29296875, 68.98030090332},
{-594.0078125, -150.875, 77.448822021484},
{-574.2158203125, -76.8603515625, 64.617446899414},
{-559.560546875, -0.0068359375, 63.065483093262},
}

addEventHandler("onClientMarkerHit", marker, function(hit)
if hit ~= localPlayer then return end
if getPedOccupiedVehicle(hit) then return end
if praca == true then
if wyplata ~= 0 then
triggerServerEvent("siekiera", localPlayer, false)
triggerServerEvent("hajs", localPlayer, wyplata)
praca = false
outputChatBox("* Terminaste de trabajar y conseguiste "..wyplata.." $") 
wyplata = 0
local imie = math.random(1, #imiona)
imie = imiona[imie]
for i,v in ipairs(getElementsByType("marker", resourceRoot)) do
local ustawienia = getElementData(v, "inne")
if ustawienia then
if ustawienia.blip and ustawienia.object then
destroyElement(ustawienia.blip)
destroyElement(ustawienia.object)
end
destroyElement(v)
end
end
for i,v in ipairs(getElementsByType("object", resourceRoot)) do
local ustawienia = getElementData(v, "inne")
if ustawienia then
destroyElement(v)
end
end
else
outputChatBox("* No tiene retiro para cobrar!")
end
else
praca = true
outputChatBox("* Vaya a talar los árboles, estos están marcados en el mapa") 
triggerServerEvent("siekiera", localPlayer, true)
rozpocznijPrace()
end
end)

function rozpocznijPrace()
for i,v in ipairs(punkty) do
blips[punkt] = createMarker(v[1],v[2],v[3]-1,"cylinder",1.5,0,0,0,0)
local blip = createBlipAttachedTo(blips[punkt], 41)
local object = createObject(id_drzewa, v[1],v[2],v[3]-1)
setElementData(blips[punkt], "inne", {
    ["object"] = object,
    ["blip"] = blip,
    })
end
end

function wszedl(hit)
if hit ~= localPlayer then return end
local on = source
local ustawienia = getElementData(on, "inne")
if not ustawienia then return end
setElementFrozen(hit, true)
triggerServerEvent("animacja", hit, true)
setTimer(function()
triggerServerEvent("animacja", hit, false)
setElementFrozen(hit, false)
local x,y,z = getElementPosition(on)
destroyElement(ustawienia.object)
destroyElement(ustawienia.blip)
destroyElement(on)
blips[punkt] = createObject(id_drzewa2, x, y, z+1)
setElementData(blips[punkt], "inne", true)
punkt = punkt+1

--local playerName = getPlayerName(thePlayer)
--local languagename = call(getResourceFromName("language-system"), "getLanguageName", language)
--local r, g, b = 255, 255, 255

outputChatBox("* Progreso: "..punkt..".")
--exports.chat-system:localShout(" [" .. languagename .. "] " .. playerName .. " grita: ¡Arbol Abajo!", thePlayer, r, g, b)
--triggerEvent('sendAme', thePlayer,"toma su hacha y empeza a talar el arbol")
--exports.global:sendLocalDoAction(thePlayer, "Se veria caer el arbol.")

wyplata = wyplata+math.random(10,30)
end, 3500, 1)
end
addEventHandler("onClientMarkerHit", resourceRoot, wszedl)
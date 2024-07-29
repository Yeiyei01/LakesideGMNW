local client = getLocalPlayer( )
local rootElement = getRootElement()
local marker = nil
local blip = nil

addEvent("bus_set_location",true)
addEventHandler("bus_set_location",rootElement,
function (x, y, z)
marker = createMarker(tostring(x), tostring(y), tostring(z)-1, "checkpoint", 4.0, 0, 255, 127, 255)
blip = createBlipAttachedTo( marker, 41, 3, 0, 0, 255, 255 )
addEventHandler("onClientMarkerHit",marker,onBusStopHit)
end)

function onBusStopHit(hitPlayer)
if not hitPlayer == client then return end
triggerServerEvent("bus_finish",client,client)
if isElement(blip) then destroyElement(blip) end
if isElement(marker) then
removeEventHandler("onClientMarkerHit",marker,onBusStopHit)
destroyElement(marker) 
  end
end

addEventHandler("onClientVehicleExit",rootElement,
function ()
if isElement(marker) then
removeEventHandler("onClientMarkerHit",marker,onBusStopHit)
destroyElement(marker) 
end
if isElement(blip) then destroyElement(blip) end
end)
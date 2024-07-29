marker = createMarker ( 400.82, 2538.96, 16.55 , "cylinder", 1.5, 255,140,0, 255)
setElementVisibleTo ( entregar, root, false )

function msg (source)
outputChatBox ('#000000[ #01FC76Trabajo Fumigador#000000 ] #c1c1c1Para iniciar el Trabajo utilice  #000000[ #01FC76/aceptarf#000000]',source,255,255,255,true)
end
addEventHandler( "onMarkerHit", marker, msg )


veh = {}
function pegartrab ( source )
if isElementWithinMarker (source, marker ) then
if veh[source] and isElement( veh[source] ) then destroyElement(veh[source] )
 veh[source] = nil
 end
 local x,y,z = getElementPosition(source)
   veh[source] = createVehicle(512 ,393.6,2516.3,16.76)

   setVehicleColor(veh[source], 0, 0, 0)
   setElementData(veh[source], "fuel", exports.vehicle_fuel:getMaxFuel(veh[source]))
   setElementData(veh[source], "battery", 100)
   setElementData(veh[source], "engineCrash", 0)
   setElementData(veh[source], "owner", -1)
   setElementData(veh[source], "faction", -1)
   setElementData(veh[source], "engine", 0)
   setElementData(veh[source], "job", 0)

 fixVehicle(veh[source])
 setVehicleDamageProof(veh[source], false)
 warpPedIntoVehicle (source,veh[source])
setPedSkin ( source, 72 )
setElementVisibleTo ( blip, source, true )
setElementVisibleTo ( entregar, source, true )
else
end
end
addCommandHandler ( "aceptarf", pegartrab  )

function sair2 (source)
if (veh[source]) and isElement(veh[source]) then
Trabalho = false
destroyElement (veh[source])
setElementVisibleTo ( entregar, source, false )
setElementVisibleTo ( blip, source, false )
setPedSkin (source,0)
outputChatBox ('#000000[ #FFB700Trabajo Fumigador#000000 ] #868686Se bajó de su vehículo y perdió su trabajo',source,255,255,255,true)
setElementData(source, "Trab", false)
   end
end
addEventHandler ("onVehicleExit", root, sair)


local rootElement = getRootElement()
local busses = {[512] = true, [512] = true}
local busTable = {
[1]={-281.54, -1544.963, 6.083},[2]={-201.45, -1321.792, 8.741},[3]={-391.009, -1307.068, 28.48},[4]={-570.888, -1320.249, 22.234},[5]={-274.47, -1509.167, 5.107},
[6]={-362.789, -1294.029, 26.419},[7]={-363.536, -1041.182, 59.404},[8]={-296.987, -951.35, 45.352},[9]={-196.604, -1385.396, 5.391},[10]={-272.399, -945.193, 37.842},
[11]={-1122.212, -923.788, 129.219},[12]={-1142.248, -1055.734, 129.219},[13]={-1049.527, -1048.024, 129.219},[14]={-1133.156, -983.746, 129.219},[15]={-1112.577, -1191.752, 129.219},
[16]={-1118.957, -1649.986, 76.367},[17]={39.528, -113.539, 0.617},[18]={66.573, 38.667, 0.609},[19]={6.217, 35.108, 3.11},[20]={-5.806, -105.509, 2.49},
[21]={-528.582, -2271.837, 32.238},[22]={-530.106, -2263.47, 32.638},[23]={-514.289, -2251.157, 36.235},[24]={-507.209, -2252.808, 36.857},[25]={-541.935, -2200.663, 43.028},
}     ----------- Para añadir más ubicaciones basta con copiar la línea anterior y sustituir, por ejemplo, [21] por [26] y así sucesivamente

createBlip(-97.589080810547,69.619430541992,3.1171875, 5, 3, 0, 0, 255, 255, 0, 250)

function getNewBusLocation(thePlayer, ID)
local x, y, z = busTable[ID][1], busTable[ID][2], busTable[ID][3]
triggerClientEvent(thePlayer,"bus_set_location",thePlayer,x,y,z)
end

function busJob(thePlayer)
	local theVehicle = getPedOccupiedVehicle (thePlayer)
	local id = getElementModel(theVehicle)
	if id == 512 or id == 512 then
		local x, y, z = getNewBusLocation(thePlayer, 1)
		setElementData(thePlayer,"buszp",0)
		setElementData(thePlayer,"aviaodata",1)
	else
	end
end
addEventHandler("onVehicleEnter",rootElement,busJob)

function busStart(thePlayer)
	local theVehicle = getPedOccupiedVehicle (thePlayer)
	local id = getElementModel(theVehicle)
	if id == 512 or id == 512 then
		outputChatBox("*Ahora trabajas con la fumigación, tu encargo es fumigar las zonas marcadas en el mapa.", thePlayer, 0, 255, 222)
		outputChatBox("*¡Sigue la marca en el mapa o en el radar!", thePlayer, 0, 255, 222)
		outputChatBox("*¡Para terminar el trabajo sólo tienes que devolver el avión, bajarse y recibes el pago!", thePlayer, 0, 255, 222)
	end
end
addEventHandler("onVehicleEnter",rootElement,busStart)

addEvent("bus_finish",true)
addEventHandler("bus_finish",rootElement,
function (client)
if not isPedInVehicle(client) then return end
if not busses[getElementModel(getPedOccupiedVehicle(client))] then return end
local zarp = getElementData(client, "buszp")
local money = math.random(100,200) --------- Salario 
setElementData(client, "buszp", zarp + money)
if #busTable == tonumber(getElementData(client,"aviaodata")) then
setElementData(client,"aviaodata",1)
else
setElementData(client,"aviaodata",tonumber(getElementData(client,"aviaodata"))+1)
end
getNewBusLocation2(client, tonumber(getElementData(client,"aviaodata")))
end)

function giveMoney(thePlayer)
	--local theVehicle = getPedOccupiedVehicle (thePlayer)
	--local id = getElementModel(theVehicle)
	--if id == 512 or 512 then
		local gpm = getElementData(thePlayer, "buszp")
		if ((gpm) > 0 ) then
			exports.global:giveMoney(thePlayer, tonumber(gpm))
			outputChatBox("Trabajo hecho, tú ganas " .. gpm .. "$", thePlayer, 0, 140, 240)
			setElementData(thePlayer, "buszp", 0)
		end
	--end
end
addEventHandler("onVehicleExit", rootElement, giveMoney)
addEventHandler("onPlayerQuit", rootElement, giveMoney)

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

local pizza = {
    {2104.97095, -1809.26990, 13.55469},
	{2103.49390, -1809.17786, 12},
	{2104.83057, -1827.46741, 12}
}

addEventHandler("onResourceStart",resourceRoot,
function ()
  local pizPed = createPed(155,pizza[1][1],pizza[1][2],pizza[1][3],90)
  local pizBli = createBlip(pizza[1][1],pizza[1][2],pizza[1][3],29)
    pizMar = createMarker(pizza[2][1],pizza[2][2],pizza[2][3],"cylinder",2,255,255,0)
	pizMar2 = createMarker(pizza[3][1],pizza[3][2],pizza[3][3],"cylinder",4,0,255,0)
	for _,v in pairs (getElementsByType("player")) do
	    setElementData(v,"pizzaDone",0)
		setElementData(v,"pizzaOccupent",false)
	end
end
)

addEventHandler("onMarkerHit",root,
function (p)
    if source == pizMar then
	    triggerClientEvent(p,"onPizzaHit",resourceRoot)
	elseif source == pizMar2 then
	    if getElementData(p,"pizzaOccupent") == true then
	      local bike = createVehicle(448,pizza[3][1],pizza[3][2],pizza[3][3]+1, 359.447, 0.000, 93.239)
		    warpPedIntoVehicle(p,bike)
		end
	end
end
)

addEvent("onDone",true)
addEventHandler("onDone",root,
function ()
   local money = math.random(5000,10000)
	exports.global:giveMoney(client, money)
	outputChatBox("+ $"..money.."", client,  255, 194, 15, true)
end
)

addEventHandler("onResourceStop",resourceRoot,
function ()
    for _,v in pairs (getElementsByType("player")) do
	    setElementData(v,"pizzaDone",0)
		setElementData(v,"pizzaOccupent",false)
	end
end
)

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

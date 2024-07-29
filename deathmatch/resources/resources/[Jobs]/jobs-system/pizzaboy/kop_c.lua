addEvent("openinf_kop", true)
screenWidth, screenHeight = guiGetScreenSize()
function windm ()
	if not getElementData ( localPlayer, "kop_working") then
		  infowind = guiCreateStaticImage(screenWidth - 700, screenHeight - 500, 300, 359, "pizzaboy/background.png", false)
		  
		  guiMemoSetReadOnly( infotext, true )
		  --guiSetFont(text2, "default-bold-small") 
		  showCursor(true)
		  guiSetVisible ( infowind , true) 
		  guiWindowSetSizable(infowind, false) 
		  Button_Glose = guiCreateStaticImage(25, 300, 250, 45, "pizzaboy/bu2.png", false, infowind)
		  Button_Start = guiCreateStaticImage(25, 250, 250, 45, "pizzaboy/bu.png", false, infowind)
		 
		  addEventHandler("onClientGUIClick", Button_Start, kit )
			addEventHandler("onClientGUIClick", Button_Glose, noshow )
	else
		for i, v in ipairs ( createdPickups ) do
			if isElement ( v ) then
				local pick2 = getElementData ( v, "pick2")
				if isElement ( pick2 ) then
					destroyElement ( pick2 )
				end
				local icon = getElementData ( v, "icon" )
				if isElement ( icon ) then
					destroyElement ( icon )
				end
				destroyElement ( v )
			end
		end
		triggerServerEvent ( "finitoWork_kop", localPlayer )
		setElementData ( localPlayer, "kop_working", false )
		outputChatBox ( "Has terminado el trabajo del repartidor de pizza", 255, 255, 255, true )
	end
end
addEventHandler("openinf_kop", root, windm )
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
 outputChatBox ( "Has entregado y recibiste - 10$ ", getRootElement(), 255, 100, 100, true )
end
addEventHandler("pay", resourceRoot, giving )
addEvent ( "get", true )
function peremen (plr)
 plr = getLocalPlayer ()
end
addEventHandler("get", resourceRoot, peremen )

pickupSpawns = {
	{ 85.865234375, 114.69140625, 2.1728951931 },
    { -297.25390625, -120.2978515625, 1.6265267133713 },
    { 208.4931640625, -95.21484375, 1.5599009990692},
    { 353.150390625, -133.2333984375, 1.8831806182861},
	{ 214.0361328125, -303.134765625, 1.51584815979},
	{ 123.2568359375, -22.453125, 1.5151808261871},
	{ 321.2998046875, 69.9638671875, 3.4364659786224},
	{ 242.6572265625, -126.376953125, 1.578125},
	{ 163.0009765625, -25.9453125, 1.578125},		
}

max_pickups_set = 10 -- ??????? ????? ????????? ??????? ??? ?????????

createdPickups = {}

max_pickups = max_pickups_set
if max_pickups_set > #pickupSpawns then
	max_pickups = #pickupSpawns
end

function startWorking ()
	if not getElementData ( localPlayer, "kop_working" ) then
		createdPickups = {}
		triggerServerEvent ( "picku_kop", localPlayer )
		setElementData ( localPlayer, "kop_working", true )
		setElementData ( localPlayer, "kop_working_hit", 0 )
			outputChatBox ( "Comenzaste el trabajo.\nVe al marcador del radar para entregar!", 255, 255, 255, true )		
				
		for i, v in ipairs ( pickupSpawns ) do
			local pick = createMarker ( v[1],v[2],v[3], "checkpoint", 4.0, 0, 0, 255 )
			local pick2 = createPickup ( v[1],v[2],v[3], 3, 1582, 10000 )
			setElementData ( pick, "taken", false )
			setElementData ( pick, "pick2", pick2 )
			setElementData ( pick, "kop_pickup", true )
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
			if getElementData ( localPlayer, "kop_working" ) then
				for i, v in ipairs ( createdPickups ) do
					if isElement ( v ) then
						local pick2 = getElementData ( v, "pick2")
						if isElement ( pick2 ) then
							destroyElement ( pick2 )
						end
						local icon = getElementData ( v, "icon" )
						if isElement ( icon ) then
							destroyElement ( icon )
						end
						destroyElement ( v )
					end
				end
				triggerServerEvent ( "finitoWork_kop", localPlayer )
				setElementData ( localPlayer, "kop_working", false )
				outputChatBox ( "Terminaste de trabajar", 255, 255, 255, true )
			end
        end
    end
)

function clientPickupHit(thePlayer, matchingDimension)
	if thePlayer == localPlayer and getElementData ( source, "kop_pickup" ) and not getElementData ( source, "taken" ) then
		setElementData ( source, "taken", true )
					setElementVelocity ( getPedOccupiedVehicle(localPlayer), 0, 0, 0 )
					toggleAllControls ( false, true, false )
					setTimer ( finishBoarding, 5000, 1 )
					outputChatBox("Entrega en progreso.", 0,153,51)
					setElementData ( localPlayer, "kop_pickup", 2 )
		local hitted = getElementData ( localPlayer, "kop_working_hit" ) or 0
		hitted = hitted+1
		local pick2 = getElementData ( source, "pick2" )
		if isElement ( pick2 ) then
			destroyElement ( pick2 )
		end
		local icon = getElementData ( source, "icon" )
		if isElement ( icon ) then
			destroyElement ( icon )
		end
		destroyElement(source)
		setElementData ( localPlayer, "kop_working_hit", hitted)
		if hitted >= max_pickups then
			for i, v in ipairs ( createdPickups ) do
				if isElement ( v ) then
					local pick2 = getElementData ( v, "pick2")
					if isElement ( pick2 ) then
						destroyElement ( pick2 )
					end
					local icon = getElementData ( v, "icon" )
					if isElement ( icon ) then
						destroyElement ( icon )
					end
					destroyElement ( v )
				end
			end
			setElementData ( localPlayer, "kop_working", false )
			triggerServerEvent ( "finitoWork_kop", localPlayer )
			outputChatBox ( "?? ????????? ??????,?????????", 255, 255, 255, true )
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
			outputChatBox ( "Entregaste pizza, tu recompensa es de $ 10", 255, 100, 100, true )
			triggerServerEvent ( "giveMoneyFromClient_kop", localPlayer, 10 ) --??????? ?? ??????
				setElementPosition ( trailer, bases[getElementData ( localPlayer, "nearestBase" )][1], bases[getElementData ( localPlayer, "nearestBase" )][2], bases[getElementData ( localPlayer, "nearestBase" )][3] )
end
addEventHandler ( "onClientMarkerHit", getRootElement(), clientPickupHit )








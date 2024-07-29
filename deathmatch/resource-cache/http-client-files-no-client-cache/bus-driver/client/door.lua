--[[
SparroW MTA : https://sparrow-mta.blogspot.com/
Facebook : https://www.facebook.com/sparrowgta/
İnstagram : https://www.instagram.com/sparrowmta/
Discord : https://discord.gg/DzgEcvy    [600 KİŞİ OLDUK SENİDE ARAMIZA BEKLERİZ.]
]]--

local theVeh = false
local cityBus = 43
local coachBus = 145
local topFun = 95
moved = false

function doors_open()
	if not isElement(theVeh) or (not theVeh:getData("door_rot")) then
		removeEventHandler( "onClientRender", root, doors_open )
		moved = nil
	return end
	local rot = theVeh:getData("door_rot")
	if rot < angle_door then
		local rot = rot+0.5
		setElementData(theVeh, "door_rot", rot)
	else
		theVeh:setData("door_rot", rot)
		removeEventHandler( "onClientRender", root, doors_open )
		setElementData(theVeh, "door_state", true)
		moved = false
	end
end

function doors_close()
	if not isElement(theVeh) or (not theVeh:getData("door_rot")) then
		removeEventHandler( "onClientRender", root, doors_close )
		moved = nil
	return end
	local rot = theVeh:getData("door_rot")
	if rot ~= 0 then
		local rot = rot-0.5
		setElementData(theVeh, "door_rot", rot)
	else
		theVeh:setData("door_rot", 0)
		removeEventHandler( "onClientRender", root, doors_close )
		setElementData(theVeh, "door_state", false)
		moved = false
	end
end

local function openDoor( vehicle )
	if not vehicle then return end
	if vehicle.model == 431 then
		local rot = getElementData(vehicle, "door_rot")
	    setVehicleComponentRotation ( vehicle, "a_door_l", 0, 0, rot )
	    setVehicleComponentRotation ( vehicle, "a_door_l", 0, 0, math.abs(rot*2) )
	    setVehicleComponentRotation ( vehicle, "door_l", 0, 0, -rot )
	    setVehicleComponentRotation ( vehicle, "door_l", 0, 0, -math.abs(rot*2) )
	    local x, y, z = getVehicleComponentPosition(vehicle, "door_l") 
	    setVehicleComponentPosition(vehicle, "door_l", x - 0.004, y - 0.002, z)
	    --
	    setVehicleComponentRotation ( vehicle, "a_door_r", 0, 0, -rot )
	    setVehicleComponentRotation ( vehicle, "a_door_r", 0, 0, -math.abs(rot*2) )
	    setVehicleComponentRotation ( vehicle, "door_r", 0, 0, rot )
	    setVehicleComponentRotation ( vehicle, "door_r", 0, 0, math.abs(rot*2) )
	    local x, y, z = getVehicleComponentPosition(vehicle, "door_r") 
	    setVehicleComponentPosition(vehicle, "door_r", x - 0.004, y + 0.002, z)
	return end
	if vehicle.model == 437 then
		local x, y, z = getVehicleComponentPosition(vehicle, "door_r") 
		local rot = getElementData(vehicle, "door_rot")
		setVehicleComponentRotation ( vehicle, "a_door_r", 0, 0, -rot )
    	setVehicleComponentRotation ( vehicle, "a_door_r", 0, 0, -math.abs(rot) )
		if (rot < 32) and (rot < 90) then
		    setVehicleComponentPosition(vehicle, "door_r", x + 0.0028, y - 0.00020, z)   
		end
		if (rot < 90) and (rot < 145) and (rot > 32) then
			setVehicleComponentPosition(vehicle, "door_r", x + 0.0020, y - 0.0024, z)
		end
		if (rot < 145) and (rot > 90) then
			setVehicleComponentPosition(vehicle, "door_r", x - 0.0005, y - 0.0035, z)
		end
	return end
	if vehicle.model == 459 then
		local x, y, z = getVehicleComponentPosition(vehicle, "door_r") 
		local rot = getElementData(vehicle, "door_rot")
		
		if (rot < 15) and (rot < 95) then
		    setVehicleComponentPosition(vehicle, "door_r", x + 0.0035, y + 0.0009, z)   
		end
		if (rot < 95) and (rot > 15) then
			setVehicleComponentPosition(vehicle, "door_r", x, y - 0.0070, z)
		end
	return end
end

local function closeDoor ( vehicle )
	if not vehicle then return end
	if vehicle.model == 431 then
		local rot = getElementData(vehicle, "door_rot")
		setVehicleComponentRotation ( vehicle, "a_door_l", 0, 0, rot )
	    setVehicleComponentRotation ( vehicle, "a_door_l", 0, 0, math.abs(rot*2) )
	    setVehicleComponentRotation ( vehicle, "door_l", 0, 0, -rot )
	    setVehicleComponentRotation ( vehicle, "door_l", 0, 0, -math.abs(rot*2) )
	    local x, y, z = getVehicleComponentPosition(vehicle, "door_l") 
	    setVehicleComponentPosition(vehicle, "door_l", x + 0.004, y + 0.002, z)
	    --
	    setVehicleComponentRotation ( vehicle, "a_door_r", 0, 0, -rot )
	    setVehicleComponentRotation ( vehicle, "a_door_r", 0, 0, -math.abs(rot*2) )
	    setVehicleComponentRotation ( vehicle, "door_r", 0, 0, rot )
	    setVehicleComponentRotation ( vehicle, "door_r", 0, 0, math.abs(rot*2) )
	    local x, y, z = getVehicleComponentPosition(vehicle, "door_r") 
	    setVehicleComponentPosition(vehicle, "door_r", x + 0.004, y - 0.002, z)
		if rot == 0 then
		    local x, y, z = getVehicleComponentPosition(vehicle, "door_l") 
		    setVehicleComponentPosition(vehicle, "door_l", x, -0.604, z)
		    local x, y, z = getVehicleComponentPosition(vehicle, "door_r") 
		    setVehicleComponentPosition(vehicle, "door_r", x, 0.211, z)
		end
	return end
	if vehicle.model == 437 then
		local x, y, z = getVehicleComponentPosition(vehicle, "door_r") 
		local rot = getElementData(vehicle, "door_rot")
		setVehicleComponentRotation ( vehicle, "a_door_r", 0, 0, -rot )
    	setVehicleComponentRotation ( vehicle, "a_door_r", 0, 0, -math.abs(rot) )
		if (rot < 32) and (rot < 90) then
		    setVehicleComponentPosition(vehicle, "door_r", x - 0.0028, y + 0.00020, z)   
		end
		if (rot < 90) and (rot < 145) and (rot > 32) then
			setVehicleComponentPosition(vehicle, "door_r", x - 0.0020, y + 0.0024, z)
		end
		if (rot < 145) and (rot > 90) then
			setVehicleComponentPosition(vehicle, "door_r", x + 0.0005, y + 0.0035, z)
		end
		if rot == 0 then
			local x, y, z = getVehicleComponentPosition(vehicle, "door_r") 
			setVehicleComponentPosition(vehicle, "door_r", 1.185, 5.170, z)
		end
	return end
	if vehicle.model == 459 then
		local x, y, z = getVehicleComponentPosition(vehicle, "door_r") 
		local rot = getElementData(vehicle, "door_rot")
		if (rot < 15) and (rot < 95) then
		    setVehicleComponentPosition(vehicle, "door_r", x - 0.0035, y - 0.0009, z)   
		end
		if (rot < 95) and (rot > 15) then
			setVehicleComponentPosition(vehicle, "door_r", x, y + 0.0070, z)
		end
		if rot == 0 then
			local x, y, z = getVehicleComponentPosition(vehicle, "door_r") 
			setVehicleComponentPosition(vehicle, "door_r", 1.010, -0.632, z)
		end
	return end
end

addCommandHandler("testc", function ( )
	local x, y, z = getVehicleComponentPosition(localPlayer.vehicle, "door_r") 
	outputChatBox(x)
	outputChatBox(y)
end)

addEventHandler ( "onClientElementDataChange", root,
function ( dataName )
	if getElementType ( source ) == "vehicle" and (dataName == "door_rot") then
		if not getElementData(source, "door_rot") then return end
		if not getDoorState(source) then
			openDoor(source)
		else
			closeDoor(source)
		end
	end
end)

addEventHandler( "onClientElementStreamIn", root, function ()
	if getElementType( source ) == "vehicle" then
	if not getElementData(source, "door_rot") then return end
		if not getDoorState(source) then
			openDoor(source)
		else
			closeDoor(source)
		end
	end
end)


function getDoorState( vehicle )
    if not getElementData(vehicle, "door_state") then 
        return false
    else
        return true
    end
end

function engineDoor()
if moved or movedDoor then return end
	theVeh = localPlayer.vehicle
	if not theVeh then return end
	if theVeh.model ~= 431 and theVeh.model ~= 437 and theVeh.model ~= 459 then 
		return
	end
	if theVeh.model == 431 then
		angle_door = cityBus
	elseif theVeh.model == 437 then
		angle_door = coachBus
	elseif theVeh.model == 459 then
		angle_door = topFun
	end
	if getElementSpeed(theVeh) > 1.5 then return end
	if not getDoorState(theVeh) then
		--if Marker.Route and isElementWithinMarker(theVeh, Marker.Route) and Marker.Stop then
			--triggerServerEvent("RouteCheckStop", resourceRoot)
		--end
		moved = true
		theVeh:setData("door_rot", 0)
		addEventHandler("onClientRender", root, doors_open)
		triggerServerEvent( "onElementSound", theVeh, "music/".. theVeh.model .."/open.wav", 45.0 )
	else
		if waitFrozen then
			waitFrozen = nil
			triggerServerEvent("RouteBusFreeze", resourceRoot, false)
		end
		moved = true
		theVeh:setData("door_rot", angle_door)
		addEventHandler("onClientRender", root, doors_close)
		triggerServerEvent( "onElementSound", theVeh, "music/".. theVeh.model .."/close.wav", 45.0 )
	end
end
bindKey("n", "down", engineDoor)
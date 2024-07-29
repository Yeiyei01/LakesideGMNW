--[[
	PASSENGERS SCRIPT by DZEK.
	
	You are free to copy and use it,
	you can't write new scripts based on this one
	without claiming original author,
	but you are free to edit this one to suit your needs
	(like adding ID's, or another minor changes)
	
	Please do not remove this information (especially from client-side)
	
	http://dzek.metal.info/mta
	
	msn:   kns1@o2.pl
	mail:  kns1@o2.pl
	skype: dzek69
	gg:    2928054
	www:   dzek.metal.info/mta

	Thanks.
	
	Jacek Nowacki a.k.a. DZEK
]]--

vehiclesList = { 437, 431 }

function in_array(e, t)
	for _,v in pairs(t) do
		if (v==e) then return true end
	end
	return false
end

function getFreeSeat(veh)
	local max = getVehicleMaxPassengers(veh)
	for i=2,max,1 do
		local occ = getVehicleOccupant(veh, i)
		if (occ==false) then return i end
	end
	return false
end


addEventHandler("onVehicleEnter", getRootElement(), function(player,seat,jacked)
	local model = getElementModel(source)
	
	-- debug thing
	-- local max = getVehicleMaxPassengers(source)
	-- outputChatBox(tostring(max)..'--'..tostring(seat))
		
	if (in_array(model, vehiclesList)) then
		if (seat==1) then
			local seatID = getFreeSeat(source)
			if (seatID~=false) then
				outputChatBox(tostring(seatID))
				warpPedIntoVehicle(player, source, seatID)
				--outputChatBox(getPlayerName(getVehicleOccupant(source, seatID)))
			end
		end
	end
end)
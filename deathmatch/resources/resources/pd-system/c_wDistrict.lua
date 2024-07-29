local shots = 0
local weapons = {
	[22] = "pistola",
	--[23] = "pistol", Disabled cus silenced brah
	[24] = "pistola",
	[25] = "escopeta",
	[26] = "escopeta",
	[27] = "escopeta",
	[28] = "sub fusil",
	[29] = "sub fusil",
	[32] = "sub fusil",
	[30] = "fusil",
	[31] = "fusil",
	[33] = "rifle",
	[34] = "rifle",
	[35] = "rocket launcher",
}

addEventHandler ( "onClientPlayerWeaponFire", localPlayer,
	function ( weapon )
		if weapons[weapon] then
			-- PAINTBALL
			if getElementData(localPlayer, "paintball") == 2 then
				return
			end
			-- ^^

			if weapon == 24 and getElementData(localPlayer, "deaglemode") == 0 then
				return
			else
				if shots < 1 then
					shots = shots + 1
				elseif shots >= 1 then
					if not isTimer ( shotTimer ) then
						shots = 0
						shotTimer = setTimer ( function ( ) end, 60000, 1 )
						
						triggerServerEvent ( "weaponDistrict:doDistrict", localPlayer, weapons[weapon] )
					end
				end
			end
		end
	end )
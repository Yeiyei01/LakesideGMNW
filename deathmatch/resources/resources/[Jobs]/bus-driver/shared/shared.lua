--[[
SparroW MTA : https://sparrow-mta.blogspot.com/
Facebook : https://www.facebook.com/sparrowgta/
İnstagram : https://www.instagram.com/sparrowmta/
Discord : https://discord.gg/DzgEcvy    [600 KİŞİ OLDUK SENİDE ARAMIZA BEKLERİZ.]
]]--


typeRoute = {
	{"Lugares Cercanos"},
	--{"Urbano"},
	--{"Entre Ciudades"}
}

ROUTEtable1 = {
	{1, "LS", "Riverside - Blueberries", 5, 80, "6", 2000}, -- 80
	--{1, "LS", "Los Santos - Montgomery", 5, 93, "45", 2000}, -- 93
	{1, "LS", "Riverside - Dilimore", 5, 65, "88", 2000}, -- 65
	--//
	--{1, "LV", "Las Venturas - Montgomery", 5, 80, "33", 5000}, -- 80
	{1, "LV", "Riverside - Fort Carson", 5, 93, "66", 2000}, -- 93
	--{1, "LV", "Las Venturas - El Kebrados", 5, 65, "81", 5000} -- 65
}

ROUTEtable2 = {
	--{2, "LS", "74 Otobüs Durağı - Downtown", 5, 44, "74", 5000},  -- 44
	--{2, "LS", "95 Otobüs Durağı - Liman ", 5, 78, "95", 5000}, -- 78
	--{2, "LS", "240 Havalimanı - Lass Colins", 5, 115, "240", 5000}, -- 115
	--{2, "LS", "12 Belediye Binası - Santa Maria Plaj", 5, 119, "12", 5000}, -- 119
	--{2, "LS", "65 Gunton - OrientalBeach", 5, 49, "65", 5000},  --49
	--//
	--{2, "LV", "38 West Rockshore - Defne", 5, 68, "38", 5000}, -- 68
	--{2, "LV", "53 Saray 'Caligula' - З. YG", 5, 79, "53", 5000}, -- 79
	--{2, "LV", "208 Denizyıldızı - Dikenli Çam", 5, 77, "208", 5000}, -- 77
	--{2, "LV", "222 Z. Redsend - Güney Otoyolu", 5, 73, "222", 5000}, -- 73
	--{2, "LV", "314 W. Redsend - 'D.Ejderha'", 5, 73, "314", 5000}, -- 73
}

ROUTEtable3 = {
	--{3, "LS", "Los Santos - Las Venturas", 5, 0, "m1", 5000}, -- 48
	--{3, "LS", "Los Santos - San Fiero", 5, 10, "m2", 5000}, -- 51
	--{3, "LV", "Las Venturas - Los Santos", 5, 0, "m3", 5000}, -- 38
	--{3, "LV", "Las Venturas - San Fiero", 5, 10, "m4", 5000} -- 57
}

function getElementSpeed(theElement, unit)
    -- Check arguments for errors
    assert(isElement(theElement), "Bad argument 1 @ getElementSpeed (element expected, got " .. type(theElement) .. ")")
    local elementType = getElementType(theElement)
    assert(elementType == "player" or elementType == "ped" or elementType == "object" or elementType == "vehicle" or elementType == "projectile", "Invalid element type @ getElementSpeed (player/ped/object/vehicle/projectile expected, got " .. elementType .. ")")
    assert((unit == nil or type(unit) == "string" or type(unit) == "number") and (unit == nil or (tonumber(unit) and (tonumber(unit) == 0 or tonumber(unit) == 1 or tonumber(unit) == 2)) or unit == "m/s" or unit == "km/h" or unit == "mph"), "Bad argument 2 @ getElementSpeed (invalid speed unit)")
    -- Default to m/s if no unit specified and 'ignore' argument type if the string contains a number
    unit = unit == nil and 0 or ((not tonumber(unit)) and unit or tonumber(unit))
    -- Setup our multiplier to convert the velocity to the specified unit
    local mult = (unit == 0 or unit == "m/s") and 50 or ((unit == 1 or unit == "km/h") and 180 or 111.84681456)
    -- Return the speed by calculating the length of the velocity vector, after converting the velocity to the specified unit
    return (Vector3(getElementVelocity(theElement)) * mult).length
end

function findRotation( x1, y1, x2, y2 ) 
    local t = -math.deg( math.atan2( x2 - x1, y2 - y1 ) )
    return t < 0 and t + 360 or t
end
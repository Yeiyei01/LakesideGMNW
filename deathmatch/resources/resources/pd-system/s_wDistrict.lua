addEvent("weaponDistrict:doDistrict", true)

function weaponDistrict_doDistrict(name)
	exports["chat-system"]:districtIC(client, _, "Se escucharía una serie de fuertes disparos de " .. name .. ", que resuenan en los alrededores")
end

addEventHandler("weaponDistrict:doDistrict", root, weaponDistrict_doDistrict)
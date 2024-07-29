addEvent("kaydet:aclikvesusuzluk", true)
function veriKaydetAclikveSusuzluk(client)
	local hunger = getElementData(client, "hunger")
	local thirst = getElementData(client, "thirst")
	local id = getElementData(client, "dbid") -- account:character:id
	if id then
		exports.mysql:query_free("UPDATE `characters` SET `hunger`='"..hunger.."' WHERE `id`='"..id.."' ")
		exports.mysql:query_free("UPDATE `characters` SET `thirst`='"..thirst.."' WHERE `id`='"..id.."' ")
	end
end
addEventHandler ("kaydet:aclikvesusuzluk",getRootElement(), veriKaydetAclikveSusuzluk)

addEvent("kaydet:dakikavesaat", true)
function veriKaydetDakikaveSaat(client)

	local hoursplayed = getElementData(client, "hoursplayed")
	local id = getElementData(client, "dbid") -- account:character:id
	if id then
		exports.mysql:query_free("UPDATE `characters` SET `hoursplayed`='"..hoursplayed.."' WHERE `id`='"..id.."' ")
	end
end
addEventHandler("kaydet:dakikavesaat",getRootElement(), veriKaydetDakikaveSaat)

addEvent("kaydet:seviyevesaat", true)
function veriKaydetSeviyeveAmac(client)
	local level = getElementData(client, "level")
	local hoursaim = getElementData(client, "hoursaim")
	local id = getElementData(client, "dbid") -- account:character:id
	if id then
		exports.mysql:query_free("UPDATE `characters` SET `level`='"..level.."' WHERE `id`='"..id.."' ")
		exports.mysql:query_free("UPDATE `characters` SET `hoursaim`='"..hoursaim.."' WHERE `id`='"..id.."' ")
	end
end
addEventHandler("kaydet:seviyevesaat",getRootElement(), veriKaydetSeviyeveAmac)

-- Stamina Functions

addEvent("tiredAnimation",true)
addEventHandler("tiredAnimation",root,function(target)
	setPedAnimation ( target, "FAT", "IDLE_tired", -1, true, false )
	setElementData(target, "tired", true)
	setTimer(triggerEvent, 3000, 1, "switchToNormal", root, target )
end)

addEvent("switchToNormal",true)
addEventHandler("switchToNormal",root,function(target)
	setPedAnimation ( target, "ped", "IDLE_tired", 200 )
	setElementData(target, "tired", false)
	setPedAnimation(target,false)
end)











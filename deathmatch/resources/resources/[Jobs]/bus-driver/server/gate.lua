GateTable = {
	{gatePos = Vector3(2833.50293, 1383.61316, 10.89844), markerPos1 = Vector3(2829.36304, 1378.81348, 10.75762), markerPos2 = Vector3(2829.46069, 1386.56970, 10.75000)}
}

addEventHandler("onResourceStart", resourceRoot, function (  )
	setTimer(function (  )
		triggerClientEvent(root, "CreateGateObject", root, GateTable)
	end, 100, 1)
end)

--[[
SparroW MTA : https://sparrow-mta.blogspot.com/
Facebook : https://www.facebook.com/sparrowgta/
İnstagram : https://www.instagram.com/sparrowmta/
Discord : https://discord.gg/DzgEcvy    [600 KİŞİ OLDUK SENİDE ARAMIZA BEKLERİZ.]
]]--
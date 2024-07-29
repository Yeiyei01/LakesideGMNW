--[[
SparroW MTA : https://sparrow-mta.blogspot.com/
Facebook : https://www.facebook.com/sparrowgta/
İnstagram : https://www.instagram.com/sparrowmta/
Discord : https://discord.gg/DzgEcvy    [600 KİŞİ OLDUK SENİDE ARAMIZA BEKLERİZ.]
]]--


local PlayerBuser = {}
local TempTable = {}
--
PlayerBuser["431"] = {
	{nil, nil, -0.900, 0.9, 1.0, 0},
	{nil, nil, -0.510, 1.85, 1.0, 180},
	{nil, nil, 0.900, 0.9, 1.0, 0},
	{nil, nil, 0.510, 1.85, 1.0, 180},
	{nil, nil, 0.990, 2.5, 1.0, 0},
	{nil, nil, 0.600, -1.45, 1.1, 0},
	{nil, nil, 0.500, 2.5, 1.0, 0},
	{nil, nil, -0.900, 0.1, 1.0, 0},
	{nil, nil, -0.500, -0.7, 1.0, 0},
	{nil, nil, -0.990, -1.4, 1.2, 0},
	{nil, nil, -0.990, -0.7, 1.1, 0},
	{nil, nil, -0.500, -1.4, 1.2, 0},
	{nil, nil, 0.910, -2.2, 1.2, 0},
	{nil, nil, -0.990, -2.2, 1.2, 0},
	{nil, nil, -0.500, -3.0, 1.2, 0},
	{nil, nil, -0.900, -3.0, 1.2, 0},
	{nil, nil, 0.990, -3.0, 1.2, 0},
	{nil, nil, 0.500, -3.0, 1.2, 0},
	{nil, nil, 0.900, -3.8, 1.4, 0},
	{nil, nil, 0, -3.7, 1.4, 0},
	{nil, nil, -0.900, -3.8, 1.4, 0}
}

PlayerBuser["437"] = {
	{nil, nil, 0.45, 3.88, 1.35, 0},
	{nil, nil, 0.45, 3.08, 1.35, 0},
	{nil, nil, -0.95, 3.88, 1.35, 0},
	{nil, nil, 0.95, 2.22, 1.35, 0},
	{nil, nil, 0.55, 1.50, 1.35, 0},
	{nil, nil, 0.95, 0.50, 1.35, 0},
	{nil, nil, -0.95, 2.22, 1.35, 0},
	{nil, nil, -0.95, 1.50, 1.35, 0},
	{nil, nil, -0.45, 1.50, 1.35, 0},
	{nil, nil, -0.95, 0.50, 1.35, 0},
	{nil, nil, -0.45, 0.50, 1.35, 0},
	{nil, nil, -0.95, -0.22, 1.35, 0},
	{nil, nil, -0.95, -1.12, 1.35, 0},
	{nil, nil, -0.45, -1.12, 1.35, 0},
	{nil, nil, -0.95, -1.95, 1.35, 0},
	{nil, nil, 0.55, -2.02, 1.35, 0},
	{nil, nil, -0.45, -2.75, 1.35, 0},
	{nil, nil, 0.95, -2.75, 1.35, 0},
	{nil, nil, 0.55, -2.75, 1.35, 0},
	{nil, nil, 0.95, -3.53, 1.35, 0},
	{nil, nil, 0.55, -3.53, 1.35, 0},
	{nil, nil, -0.45, -3.53, 1.35, 0},
	{nil, nil, 0.55, -4.31, 1.35, 0},
	{nil, nil, -0.95, -4.31, 1.35, 0},
	{nil, nil, 0.95, -5.16, 1.35, 0},
	{nil, nil, -0.45, -5.16, 1.35, 0},
	{nil, nil, 0.95, -6.06, 1.35, 0},
	{nil, nil, 0.05, -6.06, 1.35, 0},
	{nil, nil, -0.95, -6.06, 1.35, 0}
}

PlayerBuser["459"] = {
	{nil, nil, -0.79, 0.15, 0.7, 0},
	{nil, nil, -0.35, 0.15, 0.7, 0},
	{nil, nil, -0.79, -0.55, 0.7, 0},
	{nil, nil, -0.35, -0.55, 0.7, 0},
	{nil, nil, -0.79, -1.15, 0.7, 0},
	{nil, nil, -0.35, -1.15, 0.7, 0},
	{nil, nil, -0.79, -1.90, 0.7, 0},
	{nil, nil, -0.35, -1.90, 0.7, 0},
	{nil, nil, -0.79, -2.65, 0.7, 0},
	{nil, nil, -0.35, -2.65, 0.7, 0},
	{nil, nil, -0.79, -3.30, 0.7, 0},
	{nil, nil, -0.35, -3.30, 0.7, 0},
	{nil, nil, 0.72, -1.15, 0.7, 0},
	{nil, nil, 0.72, -1.90, 0.7, 0},
	{nil, nil, 0.72, -2.65, 0.7, 0},
	{nil, nil, 0.72, -3.30, 0.7, 0}
}

local function getPlayerEXP( player )
	-- получить количество опыта
	if not TempTable[player] then
		TempTable[player] = {}
		TempTable[player].EXP = 0
		return TempTable[player].EXP
	else
		return TempTable[player].EXP
	end
end

addCommandHandler("setexp", function ( player, cmd, integer )
	if not tonumber(integer) then 
		--outputChatBox("[!]#FFFFFF Используйте /setexp [количество опыта]", player, 39, 199, 43, true)
		return 
	end
	if not TempTable[player] then
		TempTable[player] = {}
		TempTable[player].EXP = tonumber(integer)
	else
		TempTable[player].EXP = tonumber(integer)
	end
	--outputChatBox('[!]#FFFFFF Текущее количество опыта: '.. TempTable[player].EXP ..' очков!', player, 39, 199, 43, true)

end)

addEvent("getJobInfo", true)
addEventHandler("getJobInfo", resourceRoot, function ( index, bool )
	if not client then return end
	local player = client
	if not TempTable[player] then
		TempTable[player] = {}
	end
	if not TempTable[player].EXP then
		TempTable[player].EXP = 0
	end
	if bool then
		triggerClientEvent("client:getJobInfo", player, TempTable[player].EXP, index, true)
	else
		local zpcheck = PlayerBuser[player].increase
		local zpcount = PlayerBuser[player].ZPCount * zpcheck
		if PlayerBuser[player].ZPCount >= (math.floor(PlayerBuser[player].routeCount / 2)) then
			triggerClientEvent("client:getJobInfo", player, zpcount, index, false)
		else
			triggerClientEvent("client:getJobInfo", player, 0, index, false)
		end
		
	end
end)


local function unJobPlayer( player, text )
	if PlayerBuser[player] then
		PlayerBuser[PlayerBuser[player].bus].seat = nil
		if isTimer(PlayerBuser[player].timerExit) then 
			killTimer(PlayerBuser[player].timerExit)
		end
		triggerClientEvent(player, "client:setPlayerStartJob", player, false, PlayerBuser[player].bus)
		PlayerBuser[player].LimitBot_Enter = nil
		PlayerBuser[player].routeselect = nil
		PlayerBuser[player].routeNumber = nil
		PlayerBuser[player].Count = nil
		PlayerBuser[player].IntegerBot = nil
		PlayerBuser[player].state = nil
		PlayerBuser[player].countSeat = nil
		PlayerBuser[player].temp_index = nil
		if isTimer(PlayerBuser[player].timerStop) then
			killTimer(PlayerBuser[player].timerStop)
		end
		outputChatBox("[Información] #FFFFFF".. text .."", player, 209, 10, 10, true) 
		local zpcheck = PlayerBuser[player].increase
		local zpcount = PlayerBuser[player].ZPCount * zpcheck
		if PlayerBuser[player].ZPCount >= (math.floor(PlayerBuser[player].routeCount / 2)) then
			--outputChatBox("[АТП] #FFFFFFВам было начислено +10 очков опыта!", player, 38, 199, 43, true)
			outputChatBox("#FFFFFF Ganado  2000$", player, 38, 199, 43, true)
			if TempTable[player] and TempTable[player].EXP then
				TempTable[player].EXP = TempTable[player].EXP + 10
			else
				TempTable[player] = {}
				TempTable[player].EXP = 10
			end
			exports.global:giveMoney ( player, 2000 )
		else
			outputChatBox("#FFFFFF¡Condujo menos de la mitad de la ruta y no le pagaron!", player, 209, 10, 10, true)
		end
		destroyElement(PlayerBuser[player].bus)
		PlayerBuser[player].bus = nil
		PlayerBuser[player].increase = nil
		PlayerBuser[player].ZPCount = nil
		PlayerBuser[player].routeCount = nil
		PlayerBuser[player] = nil
		triggerClientEvent(player, "checkJobWindow", player)
	end
end

addEvent("onPlayerStopJob", true)
addEventHandler("onPlayerStopJob", resourceRoot, function (  )
	if not client then return end
	local player = client
	unJobPlayer( player, "Ha completado Conductor de autobús.'!" )
end)
-- 1779, -1888, 13.66, 0, 0, 270
addEvent("onPlayerStartJob", true)
addEventHandler("onPlayerStartJob", resourceRoot, function ( table, index, city )
	if not client then return end
	local player = client
	if PlayerBuser[player] then return end
	if not PlayerBuser[table[1]] then PlayerBuser[table[1]] = {} end
	PlayerBuser[player] = {}
	PlayerBuser[player].Count = 0
	PlayerBuser[player].ZPCount = 0
	for _ in pairs( PlayerBuser[table[1]] ) do
		PlayerBuser[player].Count = PlayerBuser[player].Count + 1
	end
	if tonumber(PlayerBuser[player].Count) >= table[4] then 
		outputChatBox("[Despachador] # FFFFFF ¡No hay autobuses gratuitos en esta ruta!", player, 209, 10, 10, true) 
		PlayerBuser[player] = nil
	return end
	local playerEXP = getPlayerEXP(player)
	--[[if tonumber(playerEXP) < tonumber(table[5]) then
		outputChatBox("[Despachador] #FFFFFFИзвините, у Вас недостаточно опыта!", player, 209, 10, 10, true) 
		PlayerBuser[player] = nil
	return end]]--
	triggerClientEvent(player, "client:setPlayerStartJob", player, true)
	outputChatBox("#FFFFFF 'Conductor de autobús' comenzaste tu ruta.'!", player, 38, 199, 43, true) 
	if city == "LS" then
		PlayerBuser[player].bus = Vehicle(459,  265.072265625, 2.0771484375, 2.3886110782623, 0, 0, 42)
	elseif city == "LV" then
		PlayerBuser[player].bus = Vehicle(459, -304.9228515625, 1045.310546875, 19.684080123901, 0, 0, 50)
	end
	if index == 1 then
		PlayerBuser[player].bus.model = 459
		local randomInteger = math.random(1, 3)
		if randomInteger == 1 then
			PlayerBuser[player].bus:setColor(28,123,209)
		elseif randomInteger == 2 then
			PlayerBuser[player].bus:setColor(28,123,209)
		elseif randomInteger == 3 then
			PlayerBuser[player].bus:setColor(28,123,209)
		end
	elseif index == 2 then
		PlayerBuser[player].bus.model = 431
		PlayerBuser[player].bus:setColor(28,123,209)
	elseif index == 3 then
		PlayerBuser[player].bus.model = 437
		PlayerBuser[player].bus:setColor(28,123,209)
	end
	-- доп.проверка на цвет в ЛВ и СФ
	if index == 2 and city == "LV" then
		PlayerBuser[player].bus:setColor(28,123,209)
	elseif index == 3 and city == "LV" then
		PlayerBuser[player].bus:setColor(28,123,209)
	end
	local vehicle = PlayerBuser[player].bus
   setElementData(vehicle, "fuel", exports.vehicle_fuel:getMaxFuel(vehicle))
   setElementData(vehicle, "battery", 100)
   setElementData(vehicle, "engineCrash", 0)
   setElementData(vehicle, "owner", -1)
   setElementData(vehicle, "faction", -1)
   setElementData(vehicle, "engine", 0)
   setElementData(vehicle, "job", 0)
	warpPedIntoVehicle(player, vehicle)
	setTimer(function (  )
		triggerClientEvent("OffColVehicle", root, vehicle)
	end, 200, 1)
	PlayerBuser[player].routeIndex = index
	PlayerBuser[player].routeCount = #RouteIndex[table[6]]
	PlayerBuser[player].routeNumber = table[6]
	PlayerBuser[player].increase = table[7]
	PlayerBuser[player].routeselect = 0
	PlayerBuser[vehicle] = {}
	PlayerBuser[player].LimitBot_Enter = 0 
	PlayerBuser[player].countSeat = 0
	PlayerBuser[vehicle].seat = PlayerBuser[tostring(vehicle.model)]
	PlayerBuser[vehicle].player = player
	loadRoute(player, table[6])
	vehicle:setData("emiTexture", "".. tostring(vehicle.model) .."/".. tostring(table[6]))
	if index == 3 then
		PlayerBuser[player].timerStop = setTimer(unJobPlayer, 900000, 1, player, "¡Has completado el trabajo de Conductor de autobús!")
	else
		PlayerBuser[player].timerStop = setTimer(unJobPlayer, 300000, 1, player, "¡Has completado el trabajo de Conductor de autobús!")
	end
end)

function StartEnterVehicle ( player, seat, jacked )
	if not source then return end
	if PlayerBuser[player] then
		if (source ~= PlayerBuser[player].bus) then cancelEvent() end
		if (source == PlayerBuser[player].bus) and (seat ~= 0) then cancelEvent() end
		return
	else
		cancelEvent()
	end
end
addEventHandler ( "onVehicleStartEnter", resourceRoot, StartEnterVehicle )

function StartEnterVehicleRoot ( player, seat, jacked )
	if not source then return end
	if (source.model == 431 or source.model == 459 or source.model == 437) and (seat ~= 0) then
		cancelEvent()
		return
	end
end
addEventHandler ( "onVehicleStartEnter", root, StartEnterVehicleRoot )

addEventHandler("onVehicleEnter", resourceRoot, function ( player )
	if not source then return end
	if PlayerBuser[player] and (PlayerBuser[player].bus == source) then
		if isTimer(PlayerBuser[player].timerExit) then 
			killTimer(PlayerBuser[player].timerExit)
		end
	end
end)

addEventHandler("onVehicleStartExit", resourceRoot, function ( player )
	if not source then return end
	if PlayerBuser[player] then
		if (source == PlayerBuser[player].bus) then
			outputChatBox("[INFORMACIÓN] #FFFFFF¡Te bajaste del autobús! Tienes 40 segundos para subirte.", player, 209, 10, 10, true) 
			PlayerBuser[player].timerExit = setTimer(unJobPlayer, 40000, 1, player, "¡Has completado el trabajo de Conductor de autobús! (Pasaron 40 segundos)")
		end
	end
end)

function loadRoute( player, text )
	local table_route = RouteIndex[text]
	PlayerBuser[player].routeselect = PlayerBuser[player].routeselect + 1
	PlayerBuser[player].ZPCount = PlayerBuser[player].ZPCount + 1
	local routeselect = PlayerBuser[player].routeselect
	if table_route[routeselect] == nil then
		unJobPlayer( player, "Ha completado Conductor de autobús.'!" )
	else
		--[[if table_route[routeselect][1] == 2 then
			outputChatBox('ID: '..routeselect)
			outputChatBox('ANGLE:' ..tostring(table_route[routeselect][6]))
		end]]
		if table_route[routeselect + 1] and table_route[routeselect + 1][1] == 2 and table_route[routeselect + 1][4] then
			PlayerBuser[player].state = math.random(1, 9) -- если нужны пустые остановки
			if table_route[routeselect + 1][8] or (routeselect + 1) == 17 then
				PlayerBuser[player].state = 5
			end
			if tonumber(PlayerBuser[player].state) ~= 5 then
				if PlayerBuser[player].routeIndex == 3 then
					PlayerBuser[player].IntegerBot = math.random(15, 20) or 20
				else
					PlayerBuser[player].IntegerBot = math.random(2, table_route[routeselect + 1][5]) or 2
				end
				triggerClientEvent(player, "CreateMarkerRouteBots", player, table_route[routeselect + 1][4], PlayerBuser[player].IntegerBot, table_route[routeselect + 1][6], table_route[routeselect + 1][7])
			end
		end
		if table_route[routeselect][1] == 2 then
			triggerClientEvent(player, "CreateMarkerRoute", player, table_route[routeselect][3], true)
		return end
		if not table_route[routeselect + 1] then
			triggerClientEvent(player, "CreateMarkerRoute", player, table_route[routeselect][3], nil)
		else
			triggerClientEvent(player, "CreateMarkerRoute", player, table_route[routeselect][3], nil, table_route[routeselect + 1][3])
		end
	end
end

function routeCheckMarker(  )
	if not client then return end
	local player = client
	loadRoute( player, PlayerBuser[player].routeNumber )
end
addEvent("RouteCheckMarker", true)
addEventHandler("RouteCheckMarker", resourceRoot, routeCheckMarker)

addEvent("RouteCheckStop", true)
addEventHandler("RouteCheckStop", resourceRoot, function ( )
	if not client then return end
	local player = client
	local routeselect = PlayerBuser[player].routeselect
	local vehicle = PlayerBuser[player].bus
	local table_route = RouteIndex[PlayerBuser[player].routeNumber]
	if isTimer(PlayerBuser[player].timerStop) then
		resetTimer(PlayerBuser[player].timerStop)
	end
	if PlayerBuser[player] and PlayerBuser[player].bus then
		vehicle.frozen = true
		PlayerBuser[player].temp_index = 0
		if isTimer(PlayerBuser[player].timeCheck) then killTimer(PlayerBuser[player].timeCheck) end
		if tonumber(PlayerBuser[player].state) ~= 5 then
			local random_exit_bot_limit = math.random(1, 4)
			local tables = PlayerBuser[vehicle].seat
			for i = 1, random_exit_bot_limit do 
				if tables[i][1] ~= nil and (not tables[i][1].player) then
					PlayerBuser[player].temp_index = PlayerBuser[player].temp_index + 1
					triggerClientEvent(player, "ExitBusDoorBot", player, vehicle, tables[i][1].modelid, PlayerBuser[player].temp_index, table_route[routeselect][4], table_route[routeselect][7])
					tables[i][1].destroy = true
					vehicle:setData("table_route", tables)
				end
			end
			if PlayerBuser[player].temp_index == 0 then
				triggerClientEvent(player, "BotMissionStart", player, vehicle)
			end
		else

			if table_route[routeselect][8] and table_route[routeselect][8] == 1 then
				PlayerBuser[player].empty = true
				local tables = PlayerBuser[vehicle].seat
				PlayerBuser[player].countSeat = 0
				for i = 1, #tables do 
					if tables[i][1] ~= nil then
						PlayerBuser[player].countSeat = PlayerBuser[player].countSeat + 1
					end
				end
				if PlayerBuser[player].countSeat == 0 then
					PlayerBuser[player].empty = nil
					triggerClientEvent(player, "client:exitAllBot", player)
				return end
				PlayerBuser[player].countSeat = 0
				for i = 1, #tables do 
					if tables[i][1] ~= nil and (not tables[i][1].player) then
						PlayerBuser[player].countSeat = PlayerBuser[player].countSeat + 1
						triggerClientEvent(player, "ExitBusDoorBot", player, vehicle, tables[i][1].modelid, PlayerBuser[player].countSeat, table_route[routeselect][4], table_route[routeselect][7])
						tables[i][1].destroy = true
						vehicle:setData("table_route", tables)
					end
				end
			return end
			local random_exit_bot_limit = math.random(1, 3)
			PlayerBuser[player].empty = true
			local tables = PlayerBuser[vehicle].seat
			PlayerBuser[player].countSeat = 0
			for i = 1, random_exit_bot_limit do 
				if tables[i][1] ~= nil then
					PlayerBuser[player].countSeat = PlayerBuser[player].countSeat + 1
				end
			end
			if PlayerBuser[player].countSeat == 0 then
				PlayerBuser[player].empty = nil
				triggerClientEvent(player, "client:exitAllBot", player)
			return end
			PlayerBuser[player].countSeat = 0
			for i = 1, random_exit_bot_limit do 
				if tables[i][1] ~= nil and (not tables[i][1].player) then
					PlayerBuser[player].countSeat = PlayerBuser[player].countSeat + 1
					triggerClientEvent(player, "ExitBusDoorBot", player, vehicle, tables[i][1].modelid, PlayerBuser[player].countSeat, table_route[routeselect][4], table_route[routeselect][7])
					tables[i][1].destroy = true
					vehicle:setData("table_route", tables)
				end
			end
		end
	end
end)

addEvent("EnterBusDoor", true)
addEventHandler("EnterBusDoor", resourceRoot, function ( veh )
	if not client then return end
	local player = client
	if exports.global:hasMoney(player) < 10 then
		outputChatBox("[!] # FFFFFF Tarifa de bus: $ 10", player, 209, 10, 10, true)
	return end
	exports.global:takeMoney(player, 10)
	local vehicle = veh
	if not PlayerBuser[vehicle] then
		PlayerBuser[vehicle] = {}
		PlayerBuser[vehicle].seat = PlayerBuser[tostring(vehicle.model)]
	end
	local tables = PlayerBuser[vehicle].seat 
	for i = 1, #tables do
		if tables[i][1] == nil then
			tables[i][1] = {}
			tables[i][1].modelid = getElementModel(player) -- просто чтоб не писать костыль
			tables[i][1].player = player
           	vehicle:setData("table_route", tables)
		return end
	end
end)

addEvent("EnterBusDoorBots", true)
addEventHandler("EnterBusDoorBots", resourceRoot, function ( vehicle, modelid )
	if not client then return end
	local player = client
	local vehicle = PlayerBuser[player].bus
	PlayerBuser[player].LimitBot_Enter = PlayerBuser[player].LimitBot_Enter + 1
	if PlayerBuser[player].LimitBot_Enter == PlayerBuser[player].IntegerBot then
		triggerClientEvent(player, "client:enterAllBot", player, vehicle)
		PlayerBuser[player].LimitBot_Enter = 0
	end
	local tables = PlayerBuser[vehicle].seat
	for i = 1, #tables do
		if tables[i][1] == nil then
			tables[i][1] = {}
			tables[i][1].modelid = modelid
			vehicle:setData("table_route", tables)
		return end
	end	
end)

addEvent("ExitBusDoorBots", true)
addEventHandler("ExitBusDoorBots", resourceRoot, function ( integer )
	if not client then return end
	local player = client
	if (integer == PlayerBuser[player].countSeat) or (integer == PlayerBuser[player].temp_index) then
		if not PlayerBuser[player].empty then
			triggerClientEvent(player, "BotMissionStart", player, PlayerBuser[player].bus)
		else
			PlayerBuser[player].empty = nil
			triggerClientEvent(player, "client:exitAllBot", player, true)
		end
		PlayerBuser[player].countSeat = 0
		PlayerBuser[player].temp_index = 0
	end
end)

addCommandHandler("testm", function ( player )
	local vehicle = player.vehicle
	local tables = PlayerBuser["459"]
	for i = 1, #tables do
		if tables[i][1] == nil then
			tables[i][1] = {}
			tables[i][1].modelid = 28
			vehicle:setData("table_route", tables)
		end
	end
	PlayerBuser[player].routeselect = 75
end)

addEvent("RouteBusFreeze", true)
addEventHandler("RouteBusFreeze", resourceRoot, function ( state )
	if not client then return end
	local player = client
	if PlayerBuser[player] and PlayerBuser[player].bus then
		PlayerBuser[player].bus.frozen = state 
	end
end)

addEvent("ExitBusDoor", true)
addEventHandler("ExitBusDoor", resourceRoot, function ( vehicle )
	if not client then return end
	local player = client
	detachElements( player, vehicle )
	setPedAnimation ( player, false )
	local tables = PlayerBuser[vehicle].seat 
	for i = 1, #tables do
		if tables[i][1] and tables[i][1].player == player then
			tables[i][1].destroy = true
			triggerClientEvent(root, "table_route_exit", root, player, vehicle, tables)
		return end
	end
end)

addEvent( "onElementSound", true )
addEventHandler( "onElementSound", root,
    function ( snd_name, distance, stop )
		triggerClientEvent( "onElementSoundSync", source, snd_name, distance, stop )
end )

addEvent("TableRouteUpdate", true)
addEventHandler("TableRouteUpdate", resourceRoot, function ( vehicle, tables )
	PlayerBuser[vehicle].seat = tables
end)

addEventHandler("onElementDestroy", getRootElement(), function ()
	if source.type == "vehicle" then
		if source.model == 431 or source.model == 437 or source.model == 459 then
			if PlayerBuser[source] and isElement(PlayerBuser[source].player) then
				triggerClientEvent(PlayerBuser[source].player, "client:setPlayerStartJob", PlayerBuser[source].player, false, source)
			end
		end
	end
end)

addEvent("updateBuserCount", true)
addEventHandler("updateBuserCount", resourceRoot, function ( vehicle, count )
	if not client then return end
	local player = client
	if PlayerBuser[player] then
		PlayerBuser[player].countSeat = tonumber(count + 1)
		PlayerBuser[player].temp_index = tonumber(count + 1)
	end
end)
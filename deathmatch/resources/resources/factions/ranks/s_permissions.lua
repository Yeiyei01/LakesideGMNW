mem_permissions = {
	[1] = 	{"add_member",			"Contratar"},
	[2] = 	{"del_member",			"Despedir"},
	[3] = 	{"modify_ranks",		"Editar Cargos"},
	[4] = 	{"modify_faction_note",	"Editar Nota"},
	[5] = 	{"modify_factionl_note","Editar Nota Lider"},
	[6] = 	{"respawn_vehs",		"Reaparecer Vehiculos"},
	[7] = 	{"change_member_rank",	"Reasignar Cargos"},
	[8] = 	{"manage_interiors",	"Controlar Interiores"},
	[9] = 	{"manage_finance",		"Controlar Finanzas"}, 
	[10] = 	{"toggle_chat",			"Alternar Chat"},  
	[11] = 	{"modify_leader_note",	"Editar Nota Lideres"}, 
	[12] =  {"edit_motd", 			"Editar Mensaje"},
	[13] = 	{"use_fl",				"Usar /fl"}, 
	[14] = 	{"use_hq",				"Usar /hq"}, 
	[15] = 	{"make_ads", 			"Enviar Anuncio"},
	[16] = 	{"modify_duty_settings","Editar Dutys"}, 	-- 16 and above are perms that do not exist for ALL factions
	[17] = 	{"set_member_duty",		"Establecer Dutys"}, 		-- If you add something you'll have to edit 'getFactionPermissions'
	[18] = 	{"see_towstats",		"Ver towstats"}, 
	}


-- Get Permissions
------------------->>
function hasMemberPermissionTo(player, factionID, action)
	if (not player or not action or not factionID) then return false end
	if (not isElement(player) or getElementType(player) ~= "player" or type(action) ~= "string" or type(factionID) ~= "number") then return false end
	local factionID = tonumber(factionID)
	local rankID = 0
	local faction = getElementData(player, "faction")
	for i,v in pairs(faction) do
		if i == factionID then
			rankID = tonumber(v.rank)
		end	
	end	
	local perm = FactionRanks[rankID]["permissions"] or ""
	if perm ~= true then
		local perProfile = split(perm, ",")
		for i,v in ipairs(perProfile) do
			v = tonumber(v)
			if (mem_permissions[v][1] == action) then
				return true
			end
		end
	end	
	return false
end

-- Get Permissions Table
------------------------->>

function getAllRankPermissions(rankID, ignoreLeader)
	if (not rankID or type(rankID) ~= "number") then 
		return mem_permissions
	end
	
	local isLeader = getFactionRankData(rankID, "isLeader")
	if (isLeader == 1) then
		local perms = {}
		for i,perm in ipairs(mem_permissions) do
			if (ignoreLeader and not perm[3]) then
				table.insert(perms, i)
			elseif (not ignoreLeader) then
				table.insert(perms, i)
			end
		end
		return perms
	end
	
	local perm = getFactionRankData(rankID, "permissions") or ""
	local perProfile = split(perm, ",")
	for i,v in ipairs(perProfile) do
		perProfile[i] = tonumber(v)
	end
	return perProfile
end


function getFactionPermissions(factionID)
	if (not factionID or type(factionID) ~= "number") then 
		return mem_permissions
	end
	
	local theTeam = getFactionFromID(factionID)
	local factionType = getElementData(theTeam, "type")
	if (theTeam) then
		local perms = {}
		for i,perm in ipairs(mem_permissions) do
			table.insert(perms, {perm[1], perm[2]})
			if (i == 16 or i == 17) and factionType <= 1 then
				table.remove(perms, #perms)
			elseif i == 18 and factionID ~= 4 then
				table.remove(perms, #perms)	
			end	
		end
		return perms
	end
end


-- Get Default Permissions
--------------------------->>

function getDefaultPermissionSet(permissions)
	if (not permissions or type(permissions) ~= "string") then return false end
	
	local permTable = {}
	if (permissions == "*") then		-- Founder/Leader Permissions
		for i=1,#mem_permissions do
			table.insert(permTable, i)
		end
		return permTable
	elseif (permissions == "New Member") then
		return {}
	end
end

-- Set Permissions
------------------->>

function setAllRankPermissions(rankID, permTable, newWage, factionID)
	if (not rankID or not permTable) then return false end
	if (type(rankID) ~= "number" or type(permTable) ~= "table") then return false end
	local theTeam = getFactionFromID(factionID)
	local factionWages = getElementData(theTeam, "wages")

	table.sort(permTable)
	permTable = table.concat(permTable, ",")
	
	dbExec(exports.mysql:getConn("mta"), "UPDATE `faction_ranks` SET `permissions` = ?, `wage` = ? WHERE `id` = ?", permTable, newWage, rankID)
	FactionRanks[rankID]["permissions"] = permTable
	FactionRanks[rankID]["wage"] = newWage
	factionWages[rankID] = newWage
	exports.anticheat:setEld(theTeam, "wages", factionWages, 'all')
	setTimer(function()
		triggerClientEvent("faction-system.cacheRanks", root, FactionRanks)
	end, 1000, 1)
	return true
end


--MAXIME
mysql = exports.mysql
TESTER = 25
SCRIPTER = 32
LEADSCRIPTER = 79
COMMUNITYLEADER = 14
TRIALADMIN = 18
ADMIN = 17
SENIORADMIN = 64
LEADADMIN = 15
SUPPORTER = 30
VEHICLE_CONSULTATION_TEAM_LEADER = 39
VEHICLE_CONSULTATION_TEAM_MEMBER = 43
MAPPING_TEAM_LEADER = 44
MAPPING_TEAM_MEMBER = 28
STAFF_MEMBER = {32, 14, 18, 17, 64, 15, 30, 39, 43, 44, 28}
AUXILIARY_GROUPS = {32, 39, 43, 44, 28}
ADMIN_GROUPS = {14, 18, 17, 64, 15}

staffTitles = {
	[1] = {
		[0] = "Jugador",
		[1] = "Administrador a Prueba",
		[2] = "Administrador",
		[3] = "Administrador veterano",
		[4] = "Administrador Lider",
		[5] = "Dueño"
	}, 
	[2] = {
		[0] = "Jugador",
		[1] = "Moderador a Prueba",
		[2] = "Moderador",
	}, 
	[3] = {
		[0] = "Jugador",
		[1] = "Miembro VT",
		[2] = "Lider VT",
	}, 
	[4] = {
		[0] = "Jugador",
		[1] = "Tester de Scripts",
		[2] = "Scripter a prueba",
		[3] = "Scripter",
	}, 
	[5] = {
		[0] = "Jugador",
		[1] = "Mapeador",
		[2] = "Mapeador Lider",
	}, 
	[6] = {
		[0] = "Jugador",
		[1] = "Miembro FT",
		[2] = "Lider FT",
	}
}

function getStaffTitle(teamID, rankID) 
	return staffTitles[tonumber(teamID)][tonumber(rankID)]
end

function getStaffTitles()
	return staffTitles
end
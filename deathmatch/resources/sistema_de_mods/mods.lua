local groups = { "Cars", "Skins", "Guns" } -- Grupo de nomes. Exemplo: { "Carros", "Skins", "Armas" }

local mods = { 
["Infernus"] = {411, "Cars"}, -- ["Nome do modelo"] = {ID Modelos ", nome do grupo"}
["Admiral"] = {445, "Cars"},
["Army"] = {287, "Skins"},
["Bmori"] = {14, "Skins"},
["Knife"] = {335, "Guns"},
["AK47"] = {355, "Guns"},

}

local nMods

addEventHandler("onResourceStart", resourceRoot,
	function()
		nMods = {}
		for i, v in pairs(mods) do
			nMods[i] = {}
			local txd = fileOpen("mods/"..v[2].."/"..i:lower()..".txd", true)
			local dff = fileOpen("mods/"..v[2].."/"..i:lower()..".dff", true)
			local size = fileGetSize(txd) + fileGetSize(dff)
			nMods[i] = { v[1], size, v[2] }
			fileClose(txd)
			fileClose(dff)
		end
	end
)

addEvent("requestModsData", true)
addEventHandler("requestModsData", root,
	function()
		triggerClientEvent(client, "transferModsData", client, nMods, groups)
	end
)
idMasks = {2212, 2213, 2214, 2215, 2216, 2217}
miMascara = {}

function colocarMascara(id)
	if isElement(miMascara[source]) then
		destroyElement(miMascara[source])
	end
  miMascara[source] = createObject(id, 0, 0, 0)
	setObjectScale(miMascara[source], 1.2)
	setElementCollisionsEnabled(miMascara[source], false)
	exports.pAttach:attach(miMascara[source], source, 8, 0.071, 0.60, 0.46, -82, 50, -83)
end
addEvent("colocarMascara", true)
addEventHandler("colocarMascara", getRootElement(), colocarMascara)

function quitarDineroJugador(amount)
	takePlayerMoney(source, amount)
end
addEvent("quitarDineroJugador", true)
addEventHandler("quitarDineroJugador", getRootElement(), quitarDineroJugador)

function playerLoginFre (thePreviousAccount, theCurrentAccount, autoLogin)
	if not (isGuestAccount (getPlayerAccount (source))) then
		account = getPlayerAccount (source)
		if (account) then
			for i in ipairs(idMasks) do
				saveAcces = getAccountData(theCurrentAccount, "mascara_"..idMasks[i]) or false
				setElementData(source, "mascara_"..idMasks[i], saveAcces)
			end
		end
	end
end
addEventHandler ("onPlayerLogin", getRootElement(), playerLoginFre)

function onQuitFre (quitType, reason, responsibleElement)
	if not (isGuestAccount (getPlayerAccount (source))) then
		account = getPlayerAccount (source)
		if (account) then
			for i in ipairs(idMasks) do
				local saveAcces = getElementData(source,"mascara_"..idMasks[i]) or false
				setAccountData (account,"mascara_"..idMasks[i], saveAcces)
			end
		end
	end
end
addEventHandler ("onPlayerQuit", getRootElement(), onQuitFre)

local rosie = createPed(141, -1347.033203125, -188.302734375, 14.151561737061)
local lsesOptionMenu = nil
setPedRotation(rosie, 296.709533)
setElementFrozen(rosie, true)
setElementDimension(rosie, 9)
setElementInterior(rosie, 6)
--setPedAnimation(rosie, "INT_OFFICE", "OFF_Sit_Idle_Loop", -1, true, false, false)
setElementData(rosie, "talk", 1, false)
setElementData(rosie, "name", "Carolina Herrera", false)
--[[
local jacob = createPed(277, -1794.3291015625, 647.0517578125, 960.38513183594)
local lsesOptionMenu = nil
setPedRotation(jacob, 57)
setElementFrozen(jacob, true)
setElementDimension(jacob, 8)
setElementInterior(jacob, 1)
setElementData(jacob, "talk", 1, false)
setElementData(jacob, "name", "Jacob Greenaway", false)]]

function popupSFESPedMenu()
	if getElementData(getLocalPlayer(), "exclusiveGUI") then
		return
	end
	if not lsesOptionMenu then
		local width, height = 150, 100
		local scrWidth, scrHeight = guiGetScreenSize()
		local x = scrWidth/2 - (width/2)
		local y = scrHeight/2 - (height/2)

		lsesOptionMenu = guiCreateWindow(x, y, width, height, "¿Cómo podemos ayudarle?", false)

		bPhotos = guiCreateButton(0.05, 0.2, 0.87, 0.2, "Necesito ayuda", true, lsesOptionMenu)
		addEventHandler("onClientGUIClick", bPhotos, helpButtonFunction, false)

		bAdvert = guiCreateButton(0.05, 0.5, 0.87, 0.2, "Necesito cita", true, lsesOptionMenu)
		addEventHandler("onClientGUIClick", bAdvert, appointmentButtonFunction, false)
		
		bSomethingElse = guiCreateButton(0.05, 0.8, 0.87, 0.2, "Estoy bien, gracias.", true, lsesOptionMenu)
		addEventHandler("onClientGUIClick", bSomethingElse, otherButtonFunction, false)
		triggerServerEvent("lses:ped:start", getLocalPlayer(), getElementData(rosie, "name"))
		showCursor(true)
	end
end
addEvent("lses:popupPedMenu", true)
addEventHandler("lses:popupPedMenu", getRootElement(), popupSFESPedMenu)

function closeSFESPedMenu()
	destroyElement(lsesOptionMenu)
	lsesOptionMenu = nil
	showCursor(false)
end

function helpButtonFunction()
	closeSFESPedMenu()
	triggerServerEvent("lses:ped:help", getLocalPlayer(), getElementData(rosie, "name"))
end

function appointmentButtonFunction()
	closeSFESPedMenu()
	triggerServerEvent("lses:ped:appointment", getLocalPlayer(), getElementData(rosie, "name"))
end

function otherButtonFunction()
	closeSFESPedMenu()
end


local pedDialogWindow
local thePed
function pedDialog_hospital(ped)
	if getElementData(getLocalPlayer(), "exclusiveGUI") then
		return
	end
	thePed = ped
	local width, height = 500, 345
	local scrWidth, scrHeight = guiGetScreenSize()
	local x = scrWidth/2 - (width/2)
	local y = scrHeight/2 - (height/2)
	if pedDialogWindow and isElement(pedDialogWindow) then
		destroyElement(pedDialogWindow)
	end
	pedDialogWindow = guiCreateWindow(x, y, width, height, "Recepción Hospital", false)

	b1 = guiCreateButton(10, 30, width-20, 40, "¡Necesito un médico ahora, alguien se está muriendo!", false, pedDialogWindow)
	addEventHandler("onClientGUIClick", b1,
		function()
			endDialog()
			if thePed then
				triggerServerEvent("lses:ped:outputchat", getResourceRootElement(), thePed, "local", "Estamos enviando un equipo aquí lo antes posible, por favor, mantenga la calma.")
				setTimer(function()
						triggerServerEvent("lses:ped:outputchat", getResourceRootElement(), thePed, "hospitalpa", "Código crítico en la recepción, Código crítico en la recepción, equipo de respuesta a la recepción lo antes posible.")
					end, 3000, 1)
			end
		end, false)

	b2 = guiCreateButton(10, 75, width-20, 40, "Necesito que alguien me ayude a mí o a un amigo a ir a Urgencias.", false, pedDialogWindow)
	addEventHandler("onClientGUIClick", b2,
		function()
			endDialog()
			if thePed then
				triggerServerEvent("lses:ped:outputchat", getResourceRootElement(), thePed, "local", "Estamos enviando a alguien para ayudarle, por favor, mantenga la calma.")
				setTimer(function()
						triggerServerEvent("lses:ped:outputchat", getResourceRootElement(), thePed, "hospitalpa", "Personal a la recepción, por favor, para ayudar a un paciente a Urgencias.")
					end, 4000, 1)
			end
		end, false)

	b3 = guiCreateButton(10, 120, width-20, 40, "Estoy aquí para programar una cita o una revisión.", false, pedDialogWindow)
	addEventHandler("onClientGUIClick", b3,
		function()
			endDialog()
			if thePed then
				triggerServerEvent("lses:ped:outputchat", getResourceRootElement(), thePed, "local", "Bien, voy a enviar a alguien abajo.")
				setTimer(function()
						triggerServerEvent("lses:ped:outputchat", getResourceRootElement(), thePed, "hospitalpa", "El miembro del personal a la recepción por favor para ayudar a un paciente para el chequeo o cita.")
					end, 5000, 1)
			end
		end, false)

	b4 = guiCreateButton(10, 165, width-20, 40, "He venido a ver a un amigo que está ingresado en el hospital por un periodo prolongado.", false, pedDialogWindow)
	addEventHandler("onClientGUIClick", b4,
		function()
			endDialog()
			if thePed then
				triggerServerEvent("lses:ped:outputchat", getResourceRootElement(), thePed, "local", "Por favor, diríjase a la sala de servicios para pacientes internos, al final del pasillo y en el primer ascensor a la izquierda. Una enfermera estará allí para ayudarle.")
			end
		end, false)

	b5 = guiCreateButton(10, 210, width-20, 40, "Vengo a ver a un amigo que está en Urgencias o en Servicios Ambulatorios.", false, pedDialogWindow)
	addEventHandler("onClientGUIClick", b5,
		function()
			endDialog()
			if thePed then
				triggerServerEvent("lses:ped:outputchat", getResourceRootElement(), thePed, "local", "Voy a enviar a un miembro del personal para ayudarle, por favor, tenga en cuenta que tenemos una política de 1 visitante en la sala de emergencias.")
				setTimer(function()
						triggerServerEvent("lses:ped:outputchat", getResourceRootElement(), thePed, "hospitalpa", "Personal a la recepción por favor para ayudar a un visitante a la E.R o Servicios Ambulatorios.")
					end, 5000, 1)
			end
		end, false)

	b6 = guiCreateButton(10, 255, width-20, 40, "Sólo necesito hablar con un miembro del personal.", false, pedDialogWindow)
	addEventHandler("onClientGUIClick", b6,
		function()
			endDialog()
			if thePed then
				triggerServerEvent("lses:ped:outputchat", getResourceRootElement(), thePed, "local", "De acuerdo, enviaré uno abajo.")
				setTimer(function()
						triggerServerEvent("lses:ped:outputchat", getResourceRootElement(), thePed, "hospitalpa", "Un miembro del personal a la recepción, por favor, para ayudar a un visitante que solicita un miembro del personal.")
					end, 5000, 1)
			end
		end, false)

	b7 = guiCreateButton(10, 300, width-20, 40, "Uhm. No importa.", false, pedDialogWindow)
	addEventHandler("onClientGUIClick", b7, pedDialog_hospital_noHelp, false)

	--showCursor(true)

	triggerServerEvent("airport:ped:outputchat", getResourceRootElement(), thePed, "local", "Bienvenido a la recepción de RCES. ¿Puedo ayudarle?")
end
addEvent("lses:ped:hospitalfrontdesk", true)
addEventHandler("lses:ped:hospitalfrontdesk", getRootElement(), pedDialog_hospital)

function endDialog()
	if pedDialogWindow and isElement(pedDialogWindow) then
		destroyElement(pedDialogWindow)
		pedDialogWindow = nil
	end
end

function pedDialog_hospital_noHelp()
	endDialog()
	if thePed then
		triggerServerEvent("lses:ped:outputchat", getResourceRootElement(), thePed, "local", "Vale.")
	end
end
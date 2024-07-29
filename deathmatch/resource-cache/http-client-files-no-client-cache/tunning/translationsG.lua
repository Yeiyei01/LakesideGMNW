selectedLanguage = "ru"

availableTranslations = {
	["ru"] = {
		["menu.mainMenu"] = "Categorías",
		["menu.performance"] = "Rendimiento",
		["menu.optical"] = "Exterior",
		["menu.extras"] = "Modificaciones",
		["menu.color"] = "Pintando",
		["menu.gear"] = "Engranaje",
		["menu.armor"] = "Blindaje",
		["tuningPackb.1"] = "Blindaje Nivel 1",
		["tuningPackb.2"] = "Blindaje Nivel 2",
		["tuningPackb.3"] = "Blindaje Nivel 3",
		
		["menu.123"] = "Menú Adicional",
		["menu.performance.fast"] = "fast",
		["menu.performance.engine"] = "Motor",
		["menu.performance.turbo"] = "Turbo",
		["menu.performance.nitro"] = "Nitro",
		["menu.performance.tires"] = "Neumáticos",
		["menu.performance.brakes"] = "Frenos",
		["menu.performance.mass"] = "Pérdida de Peso",
		["menu.performance.suspension"] = "Suspensión",
		
		
		["menu.optical.misc"] = "Varios (Remington)",
		["menu.optical.headlight"] = "Faros Antiniebla",
		["menu.optical.frontBullars"] = "Parrilla Radiador (slamwan)",
		["menu.optical.rearBullars"] = "Calcomanías Traseras (slamwan)",
		["menu.optical.hoodScoop"] = "Ventilación Capó",
		["menu.optical.frontBumper"] = "Parachoques Frontal",
		["menu.optical.rearBumper"] = "Parachoques Trasero",
		["menu.optical.hood"] = "Campana Capó",
		["menu.optical.exhaust"] = "Silenciador",
		["menu.optical.spoiler"] = "Spoiler",
		["menu.optical.wheels"] = "Discos",
		["menu.optical.sideSkirt"] = "Faldones Taterales",
		["menu.optical.roofScoop"] = "Toma Aire Techo",
		["menu.optical.hidraulics"] = "Hidráulicos",
		["menu.optical.lampColor"] = "Color Faros",
		
		["menu.extras.frontWheelSize"] = "Tamaño Rueda Delantera",
		["menu.extras.rearWheelSize"] = "Tamaño Rueda Trasera",
		["menu.extras.offroad"] = "Conducción Off-Road",
		["menu.extras.driveType"] = "Conducción",
		["menu.extras.bulletproofTires"] = "Neumáticos Reforzados",
		["menu.extras.lsdDoor"] = "Puertas",
		["menu.extras.steeringLock"] = "Cerradura",
		["menu.extras.numberplate"] = "Matricula",
		["menu.extras.dbl"] = "Doble Escape",
		
		["tuningsus.1"] = "Fuera Carretera",
		["tuningsus.2"] = "Deportes",
		["tuningsus.3"] = "Carreras",
		["tuningPack.0"] = "Estándar ",
		["tuningPack.1"] = "Paquete Calle",
		["tuningPack.2"] = "Paquete Deportivo",
		["tuningPack.3"] = "Paquete Carreras 1",
		["tuningPack.4"] = "Paquete Carreras 2",
		["tuningPackDBL.0"] = "Estándar ",
		["tuningPackDBL.1"] = "Preparado ",
		["tuningPack.wheelSize.veryNarrow"] = "Muy Estrecho",
		["tuningPack.wheelSize.narrow"] = "Estrecho",
		["tuningPack.wheelSize.wide"] = "Amplio",
		["tuningPack.wheelSize.veryWide"] = "Muy Amplio",
		["tuningPack.offroad.dirt"] = "Tierra",
		["tuningPack.offroad.sand"] = "Arena",
		["tuningPack.driveType.front"] = "Tracción Delantera",
		["tuningPack.driveType.all"] = "Tracción Integral 4x4",
		["tuningPack.driveType.rear"] = "Tracción Trasera",
		["tuningPack.bulletproofTires"] = "Preparado",
		["tuningPack.numberplate.random"] = "Aleatorio",
		["tuningPack.numberplate.custom"] = "Custom",
		
		["tuningPack.optical.neon.1"] = "Blanco",
		["tuningPack.optical.neon.2"] = "Azul",
		["tuningPack.optical.neon.3"] = "Verde",
		["tuningPack.optical.neon.4"] = "Rojo",
		["tuningPack.optical.neon.5"] = "Amarillo",
		["tuningPack.optical.neon.6"] = "Rosa",
		["tuningPack.optical.neon.7"] = "Naranja",
		["tuningPack.optical.neon.8"] = "Azul Claro",
		["tuningPack.optical.neon.9"] = "Arco Iris",
		["tuningPack.optical.neon.10"] = "Blanco + Azul claro",

		["tuningPrice.free"] = "Pagado  ",
		["tuningPack.remove"] = "Quitarlo  ",
		["tuningPack.install"] = "Instalar",
		["tuning.active"] = "Instalado  ",
		
		["navbar.select"] = "Seleccionar",
		["navbar.buy"] = "Comprar",
		["navbar.navigate"] = "Navegación",
		["navbar.back"] = "Volver",
		["navbar.exit"] = "Salida",
		["navbar.camera"] = "Control Cámara",
		
		["notification.error.notCompatible"] = "Este componente (%s) no puede ser instalado en su vehículo.",
		["notification.error.itemIsPurchased"] = "Este componente (%s) ya está instalado en su vehículo.",
		["notification.error.notEnoughMoney"] = "No tienes suficiente dinero.",
		["notification.success.purchased"] = "El componente se ha instalado instalado.",
		["notification.warning.airRideInstalled"] = "¡Atención!\nSuspensión Neumática instalada en su vehículo.\n¡Por favor, quita el Sistema Hidráulico!",
		
		["prompt.text"] = "¿Está seguro de que quiere comprar e instalar este componente?",
		["prompt.info.1"] = "Seleccion ",
		["prompt.info.2"] = "Precio",
		["prompt.button.1"] = "Colocar (Enter)",
		["prompt.button.2"] = "Volver (Backspace)",
		
		["message.airride.error"] = "Uso: /airride [0 - 5] (0 => Estándar)",
	},
}

function getLocalizedText(stringCode, ...)
	if stringCode then
		if availableTranslations[selectedLanguage] then
			if availableTranslations[selectedLanguage][stringCode] then
				if ... then
					return availableTranslations[selectedLanguage][stringCode]:format(...)
				else
					return availableTranslations[selectedLanguage][stringCode]
				end
			end
		end
	end
	
	if ... then
		return stringCode .. "|" .. table.concat({...}, "|")
	else
		return stringCode
	end
end
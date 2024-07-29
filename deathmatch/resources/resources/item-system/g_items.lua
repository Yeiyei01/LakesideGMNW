g_items = {
	[1] = { "Hotdog", "Un hotdog humeante, de buen aspecto y sabroso.", 1, 2215, 205, 205, 0, 0.01, weight = 0.1 },
	[2] = { "Teléfono", "Un teléfono móvil elegante, que además parece nuevo.", 7, 330, 90, 90, 0, 0, weight = 0.3, metadata = { item_name = { type = 'string', rank = 'player' } } },
	[3] = { "Llave de vehículo", "Una llave de vehículo con un pequeño distintivo del fabricante.", 2, 1581, 270, 270, 0, 0, weight = 0.1, metadata = { key_name = { type = 'string', rank = 'player' } }, ooc_item_value = true },
	[4] = { "Llave de Casa", "Una llave de casa verde.", 2, 1581, 270, 270, 0, 0, weight = 0.1, metadata = { key_name = { type = 'string', rank = 'player' } }, ooc_item_value = true },
	[5] = { "Llave de Negocio", "Una llave de negocio azul.", 2, 1581, 270, 270, 0, 0, weight = 0.1, metadata = { key_name = { type = 'string', rank = 'player' } }, ooc_item_value = true },
	[6] = { "Radio", "Una radio negra.", 7, 330, 90, 90, 0, -0.05, weight = 0.2 },
	[7] = { "Guía telefónica", "Una guía telefónica rota.", 5, 2824, 0, 0, 0, -0.01, weight = 2 },
	[8] = { "Sandwich", "Un rico sandwich con queso.", 1, 2355, 205, 205, 0, 0.06, weight = 0.3 },
	[9] = { "Refresco", "Una lata de Sprunk.", 1, 2647, 0, 0, 0, 0.12, weight = 0.2 },
	[10] = { "Dardos", "Un dado rojo con #v caras.", 4, 1271, 0, 0, 0, 0.285, weight = 0.1 },
	[11] = { "Taco", "Un grasoso taco mexicano.", 1, 2215, 205, 205, 0, 0.06, weight = 0.1 },
	[12] = { "Hamburguesa", "Una hamburguesa doble con huevo frito.", 1, 2703, 265, 0, 0, 0.06, weight = 0.3 },
	[13] = { "Donut", "Donut caliente cubierto de azúcar.", 1, 2222, 0, 0, 0, 0.07, weight = 0.2 },
	[14] = { "Galletita", "Unas galletitas con chispas de chocolate de lujo.", 1, 2222, 0, 0, 0, 0.07, weight = 0.1 },
	[15] = { "Agua", "Una botella de agua mineral.", 1, 1484, -15, 30, 0, 0.2, weight = 1 },
	[16] = { "Ropa", "Ropa para lucir bien. (( Skin ID ##v ))", 6, 2386, 0, 0, 0, 0.1, weight = 1, metadata = { item_name = { type = 'string', rank = 'player', max_length = 50 } } },
	[17] = { "Reloj", "Un reloj para ver la hora.", 6, 1271, 0, 0, 0, 0.285, weight = 0.1, metadata = { item_name = { type = 'string', rank = 'staff' } } },
	[18] = { "Guía de ciudad", "Una pequeña guía de ciudad.", 5, 2824, 0, 0, 0, -0.01, weight = 0.3 },
	[19] = { "Reproductor MP3", "Un reproductor de MP3 blanco y de aspecto elegante. La marca dice EyePod.", 7, 1210, 270, 0, 0, 0.1, weight = 0.1 },
	[20] = { "Pela Estándar para tontos", "Un libro sobre como hacer pelea estándar.", 5, 2824, 0, 0, 0, -0.01, weight = 0.3 },
	[21] = { "Boxing para Tontos", "Un libro sobre como hacer boxeo.", 5, 2824, 0, 0, 0, -0.01, weight = 0.3 },
	[22] = { "Kung Fu para tontos", "Un libro sobre como hacer kung fu.", 5, 2824, 0, 0, 0, -0.01, weight = 0.3 },
	[23] = { "Knee Head Fighting para tontos", "Un libro sobre como hacer kick fighting.", 5, 2824, 0, 0, 0, -0.01, weight = 0.3 },
	[24] = { "Kick Fighting para tontos", "Un libro sobre como hacer elbow fighting.", 5, 2824, 0, 0, 0, -0.01, weight = 0.3 },
	[25] = { "Elbow Fighting para tontos", "Un libro sobre como hacer elbow fighting.", 5, 2824, 0, 0, 0, -0.01, weight = 0.3 },
	[26] = { "Máscara de Gas", "Una máscara antigás negra, que bloquea los efectos del gas y de las granadas..", 6, 2386, 0, 0, 0, 0.1, weight = 0.5 },
	[27] = { "Flashbang", "Una pequeña lata de granada con FB escrito en el lado.", 4, 343, 0, 0, 0, 0.1, weight = 0.2 },
	[28] = { "Barra luminosa", "Una barra luminosa verde.", 4, 343, 0, 0, 0, 0.1, weight = 0.2 },
	[29] = { "Ariete", "Un ariete de metal rojo.", 4, 1587, 90, 0, 0, 0.05, weight = 3 },
	[30] = { "Cannabis Sativa", "Cannabis Sativa, cuando se mezcla puede crear algunas drogas fuertes.", 3, 1279, 0, 0, 0, 0, weight = 0.1 },
	[31] = { "Cocaine Alkaloid", "Alcaloide de la cocaína, cuando se mezcla puede crear algunas drogas fuertes.", 3, 1279, 0, 0, 0, 0, weight = 0.1 },
	[32] = { "Ácido lisérgico", "El ácido lisérgico, cuando se mezcla puede crear algunas drogas fuertes.", 3, 1279, 0, 0, 0, 0, weight = 0.1 },
	[33] = { "PCP sin procesar", "El PCP sin procesar, cuando se mezcla puede crear algunas drogas fuertes.", 3, 1279, 0, 0, 0, 0, weight = 0.1 },
	[34] = { "Cocaina", "Una sustancia en forma de polvo que proporciona un gran impulso de energía.", 3, 1575, 0, 0, 0, 0, weight = 0.1 },
	[35] = { "Morfina", "Una píldora o sustancia líquida con fuertes efectos.", 3, 1578, 0, 0, 0, -0.02, weight = 0.1 },
	[36] = { "Extasis", "Píldoras con fuertes efectos visuales y euroforia.", 3, 1576, 0, 0, 0, 0.07, weight = 0.1 },
	[37] = { "Heroina", "Una sustancia líquida o en forma de polvo con fuertes efectos de ralentización y fuerte euroforia.", 3, 1579, 0, 0, 0, 0, weight = 0.1 },
	[38] = { "Marihuana", "Hierba verde y de buen sabor.", 3, 3044, 0, 0, 0, 0.04, weight = 0.1 },
	[39] = { "Metanfetamina", "Una sustancia parecida al cristal con fuertes efectos energéticos.", 3, 1580, 0, 0, 0, 0, weight = 0.1 },
	[40] = { "Epinefrina (Adrenalina)", "Epinefrina - una sustancia líquida que aumenta la adrenalina.", 3, 1575, 0, 0, 0, -0.02, weight = 0.1 },
	[41] = { "LSD", "El ácido lisérgico con la dietilamida, da visiones divertidas.", 3, 1576, 0, 0, 0, 0, weight = 0.1 },
	[42] = { "Setas", "Setas doradas secas del maestro.", 3, 1577, 0, 0, 0, 0, weight = 0.1 },
	[43] = { "PCP", "Polvo de fenciclidina.", 3, 1578, 0, 0, 0, 0, weight = 0.1 },
	[44] = { "Set de química", "Un pequeño set de química.", 4, 1210, 90, 0, 0, 0.1, weight = 3 },
	[45] = { "Esposas", "Un par de esposas metálicas.", 4, 2386, 0, 0, 0, 0.1, weight = 0.4 },
	[46] = { "Cuerda", "Una cuerda larga.", 4, 1271, 0, 0, 0, 0.285, weight = 0.3 },
	[47] = { "Llaves de esposas", "Unas llaves de esposas.", 4, 2386, 0, 0, 0, 0.1, weight = 0.05 },
	[48] = { "Mochila", "Una mochila con espacio razonable.", 4, 3026, 270, 0, 0, 0, weight = 1 },
	[49] = { "Caña de pescar", "Una caña de pescar de acero al carbono de 7 pies.", 4, 338, 80, 0, 0, -0.02, weight = 1.5 },
	[50] = { "Código de Conducción de Riverside", "Código de Conducción de Riverside.", 5, 2824, 0, 0, 0, -0.01, weight = 0.3 },
	[51] = { "Chemistry 101",  "Un libro de introducción a la Química.", 5, 2824, 0, 0, 0, -0.01, weight = 0.3 },
	[52] = { "Manual RSD", "Manual de Oficiales.", 5, 2824, 0, 0, 0, -0.01, weight = 0.3 },
	[53] = { "Respirador", "Un pequeño alcoholímetro negro.", 4, 1271, 0, 0, 0, 0.285, weight = 0.2 },
	[54] = { "Ghettoblaster", "Un Ghettoblaster negro.", 7, 2226, 0, 0, 0, 0, weight = 3 },
	[55] = { "Tarjeta de negocio", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.1 },
	[56] = { "Máscara de Ski", "Una máscara de ski.", 6, 2386, 0, 0, 0, 0.1, weight = 0.2 },
	[57] = { "Bidon de gasolina", "Un bidon de gasolina de metal y rojo.", 4, 1650, 0, 0, 0, 0.30, weight = 1 }, -- would prolly to make sense to make it heavier if filled
	[58] = { "Cerveza Ziebrand", "La mejor cerveza, importada de Holanda.", 1, 1520, 0, 0, 0, 0.15, weight = 1 },
	--[59] = { "Mudkip", "So i herd u liek mudkips? mabako's Favorite.", 1, 1579, 0, 0, 0, 0, weight = 0 },
	[60] = { "Caja fuerte", "Una caja fuerte para guardar sus objetos.", 4, 2332, 0, 0, 0, 0, weight = 5 },
	[61] = { "Luces de emergencia", "Una luz estroboscópica de emergencia que puedes poner en tu coche.", 7, 1210, 270, 0, 0, 0.1, weight = 0.1 },
	[62] = { "Bastradov Vodka", "Para tus mejores amigos - Vodka Bastradov.", 1, 1512, 0, 0, 0, 0.25, weight = 1 },
	[63] = { "Scottish Whiskey", "El mejor whisky escocés, ahora elaborado exclusivamente por Haggis.", 1, 1512, 0, 0, 0, 0.25, weight = 1 },
	[64] = { "Placa RSSD", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 },
	[65] = { "Placa RSFD", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 },
	[66] = { "Venda", "Una venda negra para los ojos.", 6, 2386, 0, 0, 0, 0.1, weight = 0.1 },
	--[67] = { "GPS", "(( This item is currently disabled. ))", 6, 1210, 270, 0, 0, 0.1, weight = 0.8 },
	[68] = { "Ticket de lotería", "Un ticket de lotería de Riverside.", 6, 2894, 0, 0, 0, -0.01, weight = 0.1 },
	[69] = { "Diccionario", "Un diccionario.", 5, 2824, 0, 0, 0, -0.01, weight = 1.5 },
	[70] = { "Kit de primeros auxilios", "Salva una vida. Puede usarse #v veces.", 4, 1240, 90, 0, 0, 0.05, weight = function(v) return v/3 end },
	[71] = { "Cuaderno", "Una pequeña colección de papeles en blanco, útiles para escribir notas.Quedan #v páginas. ((/writenote))", 4, 2894, 0, 0, 0, -0.01, weight = function(v) return v*0.01 end },
	[72] = { "Nota", "La nota dice: #v", 4, 2894, 0, 0, 0, 0.01, weight = 0.01 },
	[73] = { "Control de elevador", "Un control remoto para cambiar el modo del elevador.", 2, 364, 0, 0, 0, 0.05, weight = 0.3, metadata = { key_name = { type = 'string', rank = 'player' } }, ooc_item_value = true },
	--[74] = { "Bomb", "What could possibly happen when you use this?", 4, 363, 270, 0, 0, 0.05, weight = 2 },
	--[75] = { "Bomb Remote", "Has a funny red button.", 4, 364, 0, 0, 0, 0.05, weight = 100000 },
	[76] = { "Escudo antidisturbios", "Un pesado escudo antidisturbios.", 4, 1631, -90, 0, 0, 0.1, weight = 5 },
	[77] = { "Baraja de cartas", "Una baraja de cartas para jugar a algunos juegos.", 4,2824, 0, 0, 0, -0.01, weight = 0.1 },
	[78] = { "Certificado de Piloto Riverside", "Un permiso oficial para volar aviones y helicópteros.", 10, 1581, 270, 270, 0, 0, weight = 0.3 },
	[79] = { "Revista porno", "Una revista porno, #v", 4,2824, 0, 0, 0, -0.01, weight = 0.2 },
	[80] = { "Item genérico", "#v", 4, 1271, 0, 0, 0, 0, weight = 1, newPickupMethod = true, metadata = { 
			item_name = { type = 'string', rank = 'staff:once' }, model = { type = 'integer', rank = 'staff:once' }, scale = { type = 'string', rank = 'staff:once' },
			url = { type = 'string', rank = 'staff' }, texture = { type = 'string', rank = 'staff' }, weight = { type = 'string', rank = 'staff:once' },
		}
	}, --itemValue= name:model:scale:texUrl:texName --Do not use http:// in URL (since the : is divider), script will add http:// for this item.
	[81] = { "Nevera", "Una nevera para almacenar alimentos y bebidas.", 7, 2147, 0, 0, 0, 0, weight = 0.1, storage = true, capacity = 50, acceptItems = {[-1] = true} },
	[82] = { "Bureau of Traffic Services Identification", "This Bureau of Traffic Services Identification has been issued to #v.", 10, 1581, 270, 270, 0, 0, weight = 0.3 },
	[83] = { "Café", "Una pequeña taza de café.", 1, 2647, 0, 0, 0, 0.12, weight = 0.25 },
	[84] = { "Detector de radar Escort 9500ci", "Detecta a la policía en un radio de media milla.", 7, 330, 90, 90, 0, -0.05, weight = 1 },
	[85] = { "Sirena de Emergencia (Policía)", "Una sirena de emergencia para poner en el coche.", 7, 330, 90, 90, 0, -0.05, weight = 0.2 },
	[86] = { "SAN Identification", "#v.", 10, 330, 90, 90, 0, -0.05, weight = 0.3 },
	[87] = { "Placa del Gobierno de Riverside", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.5 },
	[88] = { "Auricular", "Un pequeño auricular, se puede conectar a una radio.", 7, 1581, 270, 270, 0, 0, weight = 0.15 },
	[89] = { "Comida genérica", "#v", 1, 2222, 0, 0, 0, 0.07, weight = 0.5, newPickupMethod = true },
	[90] = { "Casco de Motocross", "Ideal para motos.", 6, 2799, 0, 0, 0, 0.2, weight = 1.5, scale = 1, hideItemValue = true, metadata = { url = { type = 'string', rank = 'player', max_length = 50 } } },
	[91] = { "Ponche de huevo", "Yum Yum.", 1, 2647, 0, 0, 0, 0.1, weight = 0.5 }, --91
	[92] = { "Pavo", "Yum Yum.", 1, 2222, 0, 0, 0, 0.1, weight = 3.8 },
	[93] = { "Pudín de navidad", "Yum Yum.", 1, 2222, 0, 0, 0, 0.1, weight = 0.4 },
	[94] = { "Regalo de navidad", "Sé que quieres uno.", 4, 1220, 0, 0, 0, 0.1, weight = 1 },
	[95] = { "Bebida genérica", "#v", 1, 1455, 0, 0, 0, 0, weight = 0.5, newPickupMethod = true }, --[95] = { "Drink", "", 1, 1484, -15, 30, 0, 0.2, weight = 1 },
	[96] = { "Macbook Pro A1286 Core i7", "Un Macbook de alta gama para ver los correos electrónicos y navegar por Internet.", 6, 2886, 0, 0, 180, 0.1, weight = function(v) return v == 1 and 0.2 or 1.5 end },
	[97] = { "Manual de Procedimientos RSFD", "Manual de procedimientos de los Servicios de Emergencias (FD y MD).", 5, 2824, 0, 0, 0, -0.01, weight = 0.5 },
	[98] = { "Control de Garaje", "Un pequeño mando para abrir o cerrar un garaje.", 2, 364, 0, 0, 0, 0.05, weight = 0.3, metadata = { key_name = { type = 'string', rank = 'player' } }, ooc_item_value = true },
	[99] = { "Bandeja de cena mixta", "Juguemos a las adivinanzas.", 1, 2355, 205, 205, 0, 0.06, weight = 0.4 },
	[100] = { "Cartón de leche pequeño", "Leche que te da energía para seguir con el día", 1, 2856, 0, 0, 0, 0, weight = 0.2 },
	[101] = { "Cartón de jugo", "Sé que estas sediento", 1, 2647, 0, 0, 0, 0.12, weight = 0.2 },
	[102] = { "Repollo", "Para los amantes de las verduras.", 1, 1271, 0, 0, 0, 0.1, weight = 0.4 },
	[103] = { "Estantería", "Una gran estantería para guardar cosas", 4, 3761, -0.15, 0, 85, 1.95, weight = 0.1, storage = true, capacity = 100 },
	[104] = { "TV portable", "Un televisor portátil para ver programas de televisión.", 6, 1518, 0, 0, 0, 0.29, weight = 1 },
	[105] = { "Paquete de Cigarros", "Paquete con #v cigarrillos dentro.", 6, 3044 , 270, 0, 0, 0.1, weight = function(v) return 0.1 + v*0.03 end }, -- 105
	[106] = { "Cigarrillo", "Algo que se puede fumar.", 6, 3044 , 270, 0, 0, 0.1, weight = 0.03 }, -- 106
	[107] = { "Encendedor", "Hace fuego si lo usas correctamente.", 6, 1210, 270, 0, 0, 0.1, weight = 0.05 }, -- 107
	[108] = { "Pancake", "Un pancake.", 1, 2222, 0, 0, 0, 0.07, weight = 0.5 }, -- 108
	[109] = { "Fruta", "Comida sana.", 1, 2222, 0, 0, 0, 0.07, weight = 0.35 }, -- 109
	[110] = { "Vegetal", "Comida sana.", 1, 2222, 0, 0, 0, 0.07, weight = 0.35  }, -- 110
	[111] = { "GPS portable", "Un GPS, contiene los mapas mas recientes.", 6, 1210, 270, 0, 0, 0.1, weight = 0.3 }, -- 111
	[112] = { "Placa Riverside Highway Patrol", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 }, -- 142
	[113] = { "Paquete de Barras luminosas", "Paquete con #v barras luminosas dentro, de la marca 'Friday'.", 6, 1210, 270, 0, 0, 0.1, weight = function(v) return v * 0.2 end }, -- 113
	[114] = { "Mejora de vehiculo", "#v", 4, 1271, 0, 0, 0, 0.285, weight = 1.5 }, -- 114
	[115] = { "Arma", "#v ", 8, 2886, 270, 0, 1, 0.1, 2, weight = function( v )
																		local weaponID = tonumber( explode(":", v)[1] )
																		return weaponID and weaponweights[ weaponID ] or 1
																	end
	}, -- 115
	[116] = { "Cargador", "Cargador con #v balas dentro.", 9, 2040, 0, 1, 0, 0.1, 3,
		weight = function( v )
			local packs = explode(":", v)
			local ammo_id = tonumber( packs[1] )
			local bullets = tonumber( packs[2] )
			if ammo_id and bullets then
				local ammunition = exports.weapon:getAmmo(ammo_id)
				return ammunition and exports.global:round(ammunition.bullet_weight*bullets, 3)
			end
			return 0.2
		end
	}, -- 2886 / 116
	[117] = { "Rampa", "Usada para cargar DFT-30s.", 4, 1210, 270, 1, 0, 0.1, 3, weight = 5 }, -- 117
	[118] = { "Pase peaje", "Ponlo en tu coche, paga automaticamente cada vez que pasas por un peaje.", 6, 1210, 270, 0, 0, 0.1, weight = 0.3 }, -- 118
	[119] = { "Sanidad Riverside ID", "Una tarjeta de identificacion de sanidad.", 10, 1210, 270, 0, 0, 0.1, weight = 0.2 }, -- 119
	[120] = { "Traje de buceo", "Permite permanecer bajo el agua durante bastante tiempo", 6, 1271, 0, 0, 0, 0.285, weight = 4 }, --120
	[121] = { "Caja con suministros", "Una caja bastante grande llena de suministros", 4, 1271, 0, 0, 0, 0.285, weight = function(v) return tonumber(v) and tonumber(v) or 50 end }, --121
	[122] = { "Bandana azul claro", "Un trapo azul claro.", 6, 2386, 0, 0, 0, 0.1, weight = 0.2 }, -- 122
	[123] = { "Bandana roja", "Un trapo rojo.", 6, 2386, 0, 0, 0, 0.1, weight = 0.2 }, -- 123
	[124] = { "Bandana amarilla", "Un trapo amarillo.", 6, 2386, 0, 0, 0, 0.1, weight = 0.2 }, -- 124
	[125] = { "Bandana púrpura", "Un trapo púrpura.", 6, 2386, 0, 0, 0, 0.1, weight = 0.2 }, -- 125
	[126] = { "Cinturón de servicio", "Un cinturón de servicio de cuero negro, con muchas fundas.", 4, 2386, 270, 0, 0, 0, weight = 1 }, -- 126
	[127] = { "LSIA Identification", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 }, --127
	[128] = { "UNUSED BADGE", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 }, --128 | ADD TTR FACTION BAGDE ITEM | 24.1.14
	[129] = { "Direct Imports ID", "A Direct Imports ID.", 10, 1581, 270, 270, 0, 0, weight = 0.3 }, --129
	[130] = { "Alarma para vehiculos", "Sistema de alarma para vehiculos.", 6, 1210, 270, 0, 0, 0.1, weight = 0.3 }, -- 130
	[131] = { "LSCSD Badge", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 }, -- 131
	[132] = { "Botella de prescripción", "Un frasco con prescripción médica, contiene medicamentos recetados.", 3, 1575, 0, 0, 0, 0.04, weight = 0.1 }, --132
	[133] = { "Licencia de conducir - Autos", "Una Licencia de conducir autos", 10, 1581, 270, 270, 0, 0, weight = 0.1 },
	[134] = { "Dinero", "Moneda de Estados Unidos.", 10, 1212, 0, 0, 0, 0.04, weight = 0.3 }, -- 134
	[135] = { "Bandana azul", "Un trapo azul.", 6, 2386, 0, 0, 0, 0.1, weight = 0.2 }, -- 135
	[136] = { "Bandana marrón", "Un trapo marron.", 6, 2386, 0, 0, 0, 0.1, weight = 0.2 }, -- 136
	[137] = { "Camara espía", "Una camara espía, es usada en operaciones SWAT.", 7, 330, 90, 90, 0, -0.05, weight = 0.3 }, -- 137
	[138] = { "Sistema de vehículos de cebo", "Un dispositivo utilizado en las operaciones policiales.", 4, 1271, 0, 0, 0, 0.285, weight = 0.5 }, -- 138
	[139] = { "Rastreador de vehículos", "Un dispositivo utilizado para seguir la posición de los vehículos", 7, 1271, 0, 0, 0, 0.285, weight = 0.2 }, --139
	[140] = { "Luz de emergencia naranja", "Una luz naranja estroboscópica que puedes poner en tu coche.", 7, 1210, 270, 0, 0, 0.1, weight = 0.1 }, --140
	[141] = { "Megáfono", "Dispositivo en forma de cono que sirve para intensificar o dirigir la voz.", 7, 1210, 270, 0, 0, 0.1, weight = 0.1 }, --141
	[142] = { "Identificacion Taxistas y Buseros - Riverside", "Una tarjeta de identificación para Buseros y Taxistas.", 10, 1210, 270, 0, 0, 0.1, weight = 0.3 }, -- 142
	[143] = { "Terminal de datos móviles", "Terminal de datos móviles.", 7, 2886, 0, 0, 180, 0.1, weight = 0.1 }, -- 143
	[144] = { "Estroboscopio amarillo", "Una luz estroboscópica amarilla para poner en su coche.", 7, 2886, 270, 0, 0, 0.1, weight = 0.1 }, -- 144
	[145] = { "Linterna", "Batería: #v%", 7, 15060, 0, 90, 0, 0.05, weight = 0.3 },
	[146] = { "Tarjeta de identificación del Tribunal de Distrito de Riverside", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 },
	[147] = { "Papel de pared", "Para retexturizar tu interior.", 4, 2894, 0, 0, 0, -0.01, weight = 0.01 }, --147
	[148] = { "Licencia de portación abierta de armas", "Un permiso de armas de fuego que permite a una persona llevar abiertamente un arma de fuego.", 10, 1581, 270, 270, 0, 0, weight = 0.3 },
	[149] = { "Licencia para portar armas ocultas - LSPD", "Un permiso de arma de fuego que permite la ocultación de un arma de fuego, emitido por el RSSD.", 10, 1581, 270, 270, 0, 0, weight = 0.3 },
	[150] = { "Tarjeta de Credito - ATM", "Una tarjeta de plástico utilizada para realizar transacciones con un importe muy limitado al día desde un cajero automático (ATM).", 10, 1581, 270, 270, 0, 0, weight = 0.1 },
	[151] = { "Control a distancia del ascensor", "Un dispositivo a distancia para un elevador de vehículos.", 2, 364, 0, 0, 0, 0.05, weight = 0.3 },
	[152] = { "San Andreas Identification Card", "A sleek plastic Identification Card.", 10, 1581, 270, 270, 0, 0, weight = 0.1 },
	[153] = { "Licencia de conducir - Motocicleta", "Una licencia de conducir motos.", 10, 1581, 270, 270, 0, 0, weight = 0.1 },
	[154] = { "Permiso de Pesca", "Permiso de pesca de Riverside", 10, 1581, 270, 270, 0, 0, weight = 0.1 },
	[155] = { "Licencia de conducir - Naval", "Una licencia de conducir barcos.", 10, 1581, 270, 270, 0, 0, weight = 0.1 },
	[156] = { "Tribunal Superior de Riverside ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.1 },
	[157] = { "Caja de herramientas", "Una caja metálica roja que contiene herramientas dentro.", 4, 1271, 0, 0, 0, 0, weight = 0.5 },
	[158] = { "Bandana verde", "Un trapo verde.", 6, 2386, 0, 0, 0, 0.1, weight = 0.2 }, -- 158
	[159] = { "Sparta Inc. ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3}, -- 159 | Sparta Incorporated ID
	[160] = { "Maleta", "Una maleta.", 6, 1210, 90, 0, 0, 0.1, weight = 0.4}, -- Exciter
	[161] = { "Fleming Architecture and Construction ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3}, -- 161 | anumaz Fleming Architecture and Construction ID
	[162] = { "Chaleco antibalas", "Para que puedas ser Terminator.", 6, 3916, 90, 0, 0, 0.1, weight = 4}, -- Exciter
	[163] = { "Bolsa de lona", "Una bolsa de lona.", 6, 3915, 90, 0, 0, 0.2, weight = 0.4}, -- Exciter
	[164] = { "Bolsa médica", "Una bolsa médica con equipamientos avanzados de medicina.", 6, 3915, 0, 0, 0, 0.2, weight = 1, texture = {{":artifacts/textures/medicbag.png", "hoodyabase5"}} }, -- Exciter
	[165] = { "DVD", "Un disco de video.", 4, 2894, 0, 0, 0, -0.01, weight = 0.1 }, -- Exciter
	[166] = { "ClubTec VS1000", "Sistema de video.", 4, 3388, 0, 0, 90, -0.01, weight = 5, scale = 0.6, preventSpawn = true, newPickupMethod = true }, -- Exciter
	[167] = { "Cuadro (Marco dorado)", "Coloca tu foto y cuélgala en la pared.", 4, 2287, 0, 0, 0, 0, weight = 1, doubleSided = true, newPickupMethod = true }, -- Exciter
	[168] = { "Bandana naranja", "Un trapo naranja.", 6, 2386, 0, 0, 0, 0.1, weight = 0.2 },
	[169] = { "Cerradura de puerta digital sin llave", "Este sistema de seguridad de alto nivel es mucho más seguro que una cerradura tradicional con llave porque no se puede forzar ni golpear.", 6, 2922, 0, 0, 180, 0.2, weight = 0.5 }, --Maxime
	[170] = { "Tarjeta de acceso", "Una tarjeta magnética para #v", 2, 1581, 270, 270, 0, 0, weight = 0.1 }, -- Exciter
	[171] = { "Casco de bicicleta", "Ideal para ir en bicicleta.", 6, 3911, 0, 0, 0, 0.2, weight = 1.5, scale = 1, hideItemValue = true, metadata = { url = { type = 'string', rank = 'player', max_length = 50 } } },
	[172] = { "Casco integral", "Ideal para ir en moto.", 6, 3917, 0, 0, 0, 0.2, weight = 1.5, scale = 1, hideItemValue = true, metadata = { url = { type = 'string', rank = 'player', max_length = 50 } } },
	[173] = { "DPV", "Documento necesario para vender un vehículo a otra persona.", 4, 2894, 0, 0, 0, -0.01, weight = 0.01 }, -- Anumaz
	[174] = { "Mapa electrónico", "Dispositivo electrónico que muestra información y mapas alrededor de todo Riverside.", 4, 1271, 0, 0, 0, -0.01, weight = 0.01 }, -- Anumaz
	[175] = { "Poster", "Un cartel publicitario.", 4, 2717, 0, 0, 0, 0.7, weight = 0.01, hideItemValue = true }, -- Exciter
	[176] = { "Altavoz", "Gran altavoz negro que emite un sonido enorme, lo suficientemente grande como para llenar cualquier espacio, sonido claro a cualquier volumen.", 7, 2232, 0, 0, 0, 0.6, weight = 3 }, -- anumaz
	[177] = { "Dispositivo de despacho a distancia", "Un dispositivo de despacho remoto conectado al Centro de Despacho.", 7, 1581, 0, 0, 0, 0.6, weight = 0.01 }, -- anumaz
    [178] = { "Libro", "#v", 5, 2824, 0, 0, 0, -0.1, weight = 0.1}, -- Chaos
    [179] = { "Motivo Vehiculo", "Un motivo para decorar tu coche.", 4, 2894, 0, 0, 0, -0.01, weight = 0.01 }, -- Exciter
    [180] = { "SAPT ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3}, -- Exciter
    [181] = { "Paquete para fumadores", "Papeles de cigarros transparentes. El paquete contiene #v papeles.", 4, 3044 , 270, 0, 0, 0.1, weight = function(v) return 0.1 + v*0.03 end },
    [182] = { "Cigarro armado", "Un cigarro armado con pura marihuana.", 4, 1485, 270, 0, 0, 0.1, weight = 0.03 },
    [183] = { "Tarjeta de socio Tunning Perfomace", "Socio exclusivo de Tunning Perfomace", 10, 1581, 270, 270, 0, 0, weight = 0.3 }, --  Chase
    [184] = { "Tinte para ventanas", "Tinte para ventana Tunning Perfomace ((50 /chance))", 4, 1271, 0, 0, 0, 0, weight = 0.6 }, -- Chase
    [185] = { "Tinte para ventanas CXP70", "Tinte para ventanas CXP70 Tunning Perfomace ((95 /chance))", 4, 1271, 0, 0, 0, 0, weight = 0.3 }, -- Chase
    [186] = { "Cortador de bordes Tunning Perfomace (Red Anodized)", "Cortador de bordes para el tintado", 4, 1271, 0, 0, 0, 0, weight = 0.05 }, -- Chase
    [187] = { "Medidor de Transmisión del Espectro Solar Tunning Perfomace", "Medidor de espectro para probar el tinte antes de usarla", 7, 1271, 0, 0, 0, 0, weight = 2 }, -- Chase
    [188] = { "Prueba-tintes 2800 Tunning Perfomace", "Mide la transmisión de la luz visible en cualquier tinte/vidrio", 7, 1271, 0, 0, 0, 0, weight = 1 }, -- Chase
    [189] = { "Pistola de calor Equalizer Heatwave Tunning Perfomace", "Pistola de calor fácil de usar, perfecta para encoger las ventanas traseras", 7, 1271, 0, 0, 0, 0, weight = 1 }, -- Chase
    [190] = { "36 Cubo de corte polivalente Tunning Perfomace", "Ideal para trabajos ligeros de corte mientras se aplica el tinte", 4, 1271, 0, 0, 0, 0, weight = 0.5 }, -- Chase
    [191] = { "Lámpara de demostración del tinte Tunning Perfomace", "Presentación eficaz de la aplicación tintada", 7, 1271, 0, 0, 0, 0, weight = 0.5 }, -- Chase
    [192] = { "Rascador angular Triumph Tunning Perfomace", "Rascador angular de 6 pulgadas para aplicar el tinte", 4, 1271, 0, 0, 0, 0, weight = 0.3 }, -- Chase
    [193] = { "Pulverizador manual Performax 48oz Tunning Perfomace", "Pulverizador manual Performax para la aplicación de tintes", 4, 1271, 0, 0, 0, 0, weight = 1 }, -- Chase
    [194] = { "Encendido de vehículo Tunning Perfomace - 2010 ((20 /chance))", "Encendido de vehículo made by Tunning Perfomace for 2010", 4, 1271, 0, 0, 0, 0, weight = 1.5 }, -- Chase
    [195] = { "Encendido de vehículo Tunning Perfomace- 2011 ((30 /chance))", "Encendido de vehículo made by Tunning Perfomace for 2011", 4, 1271, 0, 0, 0, 0, weight = 1.3 }, -- Chase
    [196] = { "Encendido de vehículo Tunning Perfomace - 2012 ((40 /chance))", "Encendido de vehículo made by Tunning Perfomace for 2012", 4, 1271, 0, 0, 0, 0, weight = 1 }, -- Chase
    [197] = { "Encendido de vehículo Tunning Perfomace - 2013 ((50 /chance))", "Encendido de vehículo made by Tunning Perfomace for 2013", 4, 1271, 0, 0, 0, 0, weight = 0.8 }, -- Chase
    [198] = { "Encendido de vehículo Tunning Perfomace - 2014 ((70 /chance))", "Encendido de vehículo made by Tunning Perfomace for 2014", 4, 1271, 0, 0, 0, 0, weight = 0.6 }, -- Chase
    [199] = { "Encendido de vehículo Tunning Perfomace - 2015 ((90 /chance))", "Encendido de vehículo made by Tunning Perfomace for 2015", 4, 1271, 0, 0, 0, 0, weight = 0.4 }, -- Chase
    --[200] = { "Encendido de vehículo Tunning Perfomace - 2016", "Encendido de vehículo not yet in production", 4, 1271, 0, 0, 0, 0, weight = 1 }, -- Chase (not to be used)
    --[201] = { "Encendido de vehículo Tunning Perfomace - 2017", "Encendido de vehículo not yet in production", 4, 1271, 0, 0, 0, 0, weight = 1 }, -- Chase (not to be used)
    --[202] = { "Encendido de vehículo Tunning Perfomace - 2018", "Encendido de vehículo not yet in production", 4, 1271, 0, 0, 0, 0, weight = 1 }, -- Chase (not to be used)
    [203] = { "Rastreador de vehículo ocultable Tunning Perfomace 315 Pro ((Undetectable))", "GPS HVT 315 Pro, easy installation ((and undetectable)), by Tunning Perfomace", 7, 1271, 0, 0, 0, 0, weight = 3 }, -- Chase
    [204] = { "Rastreador de vehículo ocultable Tunning Perfomace 272 Micro ((30 /chance))", "GPS HVT 272 Micro, easy installation ((30 /chance to be found)), by Tunning Perfomace", 7, 1271, 0, 0, 0, 0, weight = 0.5 }, -- Chase
    [205] = { "Rastreador portable Tunning Perfomace HVT 358 4.0 ((50 /chance))", "GPS HVT 358 Spark Nano 4.0 Portable ((50 /chance to be found)), by Tunning Perfomace", 7, 1271, 0, 0, 0, 0, weight = 0.2 }, -- Chase
	--[206] = { "Wheat Seed", "A nice seed with potential", 7, 1271, 0, 0, 0, 0, weight = 0.1 }, -- Chaos
	--[207] = { "Barley Seed", "A nice seed with potential", 7, 1271, 0, 0, 0, 0, weight = 0.1 }, -- Chaos
	--[208] = { "Oat Seed", "A nice seed with potential", 7, 1271, 0, 0, 0, 0, weight = 0.1 }, -- Chaos
	[209] = { "Servicio FLU", "Un dispositivo electrónico de la Unidad de Licencias de Armas de Fuego", 7, 1271, 0, 0, 0, 0, weight = 0.1}, -- anumaz
	[210] = { "Coca-Cola Navidad", "Botella de coca cola, version navidad.", 1, 2880, 180, 0, 0, 0, weight = 0.2}, -- Exciter
	[211] = { "Un ticket de navidad para la lotería", "De la Coca-Cola Santa.", 10, 1581, 270, 270, 0, 0, weight = 0.1, preventSpawn = true}, -- Exciter
	[212] = { "Ruedas para la nieve", "Se pegan al suelo como una garrapata a la ropa", 4, 1098, 0, 0, 0, 0, weight = 1}, -- Exciter
	[213] = { "Pinnekjott", "El favorito de Navidad de Exciter.", 1, 2215, 205, 205, 0, 0.06, weight = 0.1, preventSpawn = true}, -- Exciter
	[214] = { "Droga genérica", "#v", 3, 1576, 0, 0, 0, 0.07, weight = 0.1}, -- Chaos
	[215] = { "Licencia para portar armas ocultas - RSSD", "Un permiso de armas de fuego que permite la ocultación de un arma de fuego, expedido por RSSD.", 10, 1581, 270, 270, 0, 0, weight = 0.3 },
	[216] = { "Licencia de armas Tier 3 - RSSD", "Un permiso de armas de fuego que permite el manejo de armas de nivel 3, expedido por la RSSD.", 10, 1581, 270, 270, 0, 0, weight = 0.3 },
	[217] = { "Beeper", "Un avisador acústico que se utiliza en frecuencias específicas.", 7, 1271, 0, 0, 0, 0, weight = 0.1}, -- anumaz, currently used for lsfd /alarm
	[219] = { "Armadura de cuerpo delgado (TYPE2)", "Hidden and protective.", 6, 1581, 270, 270, 0, 0, weight = 2 },
	[220] = { "Armadura de cuerpo de kevlar (TYPE3)", "Visible and good quality.", 6, 1581, 270, 270, 0, 0, weight = 2 },
	[221] = { "Blindaje de alta gama de Kevlar (TYPE4)", "Military grade body armor.", 6, 1581, 270, 270, 0, 0, weight = 2 },
	[222] = { "SACMA ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3}, -- Chaos
	[223] = { "Almacén Generico", "#v", 4, 3761, -0.15, 0, 85, 0.2, weight = 2, storage = true, capacity = 10 }, -- Chaos --value= Name:ModelID:Capacity
	[224] = { "Crack", "Una pequeña sustancia parecida a una roca, que al fumarla produce una intensa sensación de euforia.", 3, 1575, 0, 0, 0, 0, weight = 0.1 },
	[225] = { "Ketamina", "Una sustancia parecida a un polvo que, cuando se inyecta, produce una experiencia extracorporal, y cuando se esnifa, un breve estallido de energía y euforia.", 3, 1576, 0, 0, 0, 0, weight = 0.1 },
	[226] = { "Oxicodona", "Un analgésico de prescripción médica que suele recetarse para el dolor moderado o severo.", 3, 1576, 0, 0, 0, 0, weight = 0.1 },
	[227] = { "Rohypnol", "Una sustancia parecida a una píldora, a menudo triturada en polvo; también conocida como la droga de la 'violación'. Los consumidores suelen experimentar pérdida de control muscular, confusión, somnolencia y amnesia.", 3, 1576, 0, 0, 0, 0, weight = 0.1 },
	[228] = { "Xanax", "Una sustancia similar a una píldora que se suele recetar para ayudar a aliviar los síntomas de ansiedad y pánico.", 3, 1576, 0, 0, 0, 0, weight = 0.1 },
	[229] = { "JGC ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3}, --Exciter
	[230] = { "RPMF Incorporated ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3}, --Exciter
	[231] = { "Contenedor de transporte", "Un gran contenedor de carga.", 4, 2934, 0, 0, 0, 1.44, weight = 0.1, hideItemValue = true, storage = true, capacity = 200 }, --Exciter --preventSpawn = true --value= registration;textureSides;textureDoors
	[232] = { "Cargador de batería de coche", "Puede cargar rápidamente casi todos los tipos de baterías, y es una gran opción para los mecánicos domésticos y los pequeños talleres.", 7, 2040, 0, 1, 0, 0.1, 3, weight = 4.3 },
	[233] = { "DOC Badge", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 },
	[234] = { "USMCR ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 },
	[235] = { "Dinoco ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 },
	[236] = { "National Park Service ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 },
	[237] = { "Bandana negra", "Un trapo negro.", 6, 2386, 0, 0, 0, 0.1, weight = 0.2}, -- George
	[238] = { "Bandana gris", "Un trapo gris.", 6, 2386, 0, 0, 0, 0.1, weight = 0.2}, -- George
	[239] = { "Bandana blanca", "Un trapo blanco.", 6, 2386, 0, 0, 0, 0.1, weight = 0.1}, -- George
	[240] = { "Christmas Hat", "A festive hat.", 6, 954, 0, 0, 0, 0.1, weight = 0.1, preventSpawn = true}, -- Chaos
	--{ "Armor", "Kevlar-made armor.", 6, 373, 90, 90, 0, -0.05, weight = 1 }, -- 138
	--{ "Dufflebag", "LOL", 10, 2462, 0, 0, 0, 0.04, weight = 0.1 }, -- 135
	[241] = { "Red Rose Funeral Home ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 }, --Exciter
	[242] = { "Mesa de trabajo", "Un banco para construir cosas.", 4, 936, 0, 0, 0, 0, weight = 4, storage = true, capacity = 20 }, --Exciter, factory system --preventSpawn = true
	[243] = { "Máquina de fábrica", "Una máquina para producir cosas.", 4, 14584, 0, 0, 0, 0, weight = 5, storage = true, capacity = 50 }, --Exciter, factory system --preventSpawn = true
	[244] = { "Horno", "Un horno para cocinar y hornear.", 4, 2417, 0, 0, 0, 0, weight = 4, storage = true, capacity = 10 }, --Exciter, factory system --preventSpawn = true
	[245] = { "Legal Corporation ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 }, --Exciter
	[246] = { "Bank of Los Santos ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 }, --Exciter
	[247] = { "Astro Corporation ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 }, --Exciter
	[248] = { "Control remoto Proyector", "Un control remoto para un proyector ##v.", 2, 364, 0, 0, 0, 0.05, weight = 0.3, ooc_item_value = true },
	[249] = { "Western Solutions ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 }, --Unitts
	[250] = { "St John Ambulance ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 }, --Exciter
	[251] = { "Pizza Stack ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 }, --Exciter
	[252] = { "Contenedor de basura", "Un contenedor de basura.", 4, 1344, 0, 0, 0, 0, weight = 4, hideItemValue = true, storage = true, capacity = 200 }, --Exciter
	[253] = { "Contenedor de basura", "Un Contenedor de basura.", 4, 1344, 270, 270, 0, 0, weight = 3, hideItemValue = true, storage = true, capacity = 50 }, --Exciter
	[254] = { "Basura", "#vkg de la basura.", 4, 1344, 270, 270, 0, 0, weight = function(v) return v end }, --Exciter --math.floor((v/50)*(10^2)+0.5)/(10^2)
	[255] = { "Residuos", "#vkg de residuos.", 4, 1344, 270, 270, 0, 0, weight = function(v) return v end }, --Exciter
	[256] = { "Blu-Ray", "Un disco de video.", 4, 2894, 0, 0, 0, -0.01, weight = 0.1 }, --Exciter
	[257] = { "ClubTec VS2000", "Sistema de video.", 4, 3388, 0, 0, 90, -0.01, weight = 6, preventSpawn = true, newPickupMethod = true, image = 166 }, --Exciter
	[258] = { "Lamborghini Automotive ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3, image = 129 }, --Exciter
	[259] = { "SL Incorporated ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3, image = 129 }, --Exciter
	[260] = { "Botella de amoníaco", "Una botella de amoníaco.", 1, 1484, -15, 30, 0, 0.2, weight = 1 }, --Chaos
	[261] = { "Sirena de emergencia (Bombero)", "Una sirena de emergencia que puedes poner en tu vehículo.", 7, 330, 90, 90, 0, -0.05, weight = 0.2, image = 85 }, -- Chaos
	[262] = { "Ficha de casino (( Ficha de casa ))", "Una pequeña ficha de plástico. (( Utilizalo para comprar una nueva casa valuada en < $40,000 ))", 4, 2894, 0, 0, 0, -0.01, weight = 0.1 }, --Chaos
	[263] = { "Ficha de casino (( Ficha de auto ))", "Una pequeña ficha de plástico. (( Utilizalo para comprar un nuevo vehiculo valuado en < $35,000 ))", 4, 2894, 0, 0, 0, -0.01, weight = 0.1 }, --Chaos
	[264] = { "Sistema USVT", "Unidad de seguimiento de vehículos terrestres del aeropuerto.", 6, 2886, 0, 0, 180, 0.1, weight = 0.9, preventSpawn = true }, --Exciter
	[265] = { "Saint Ernest Medical Center Staff ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3 }, --Exciter
	[266] = { "SAAN Staff ID", "#v", 10, 1581, 270, 270, 0, 0, weight = 0.3, image = 129 },
	[267] = { "Citación (Multa)", "Una multa emitida por las autoridades.", 4, 2894, 0, 0, 0, -0.01, weight = 0.01 },
	[268] = { "Tabla de surf", "Una Tabla de surf.", 4, 2406, 0, 0, 0, 1.2, weight = 2 }, --Exciter
	[269] = { "Sirena de emergencia (Ambulancia)", "Una sirena de emergencia que puedes poner en tu vehiculo.", 7, 330, 90, 90, 0, -0.05, weight = 0.2, image = 85 }, -- Hurley
	[270] = { "Guantes", "Un par de guantes que te puedes poner.", 6, 2386, 0, 0, 0, 0.1, weight = 0.1, hideItemValue = true, metadata = { item_name = { type = 'string', rank = 'player', max_length = 50 } } }, -- Hurley
	[271] = { "Carcasa de Balas (Arma)", "#v", 4, 2061, 90, 0, 0, 0, weight = 0.1, scale = 0.2 }, 
	[272] = { "Labrador", "#v", 4, 2351, 0, 0, 0, 0.9, weight = 5 }, -- (Dog) Yannick
	[273] = { "Pescado genérico", "#v", 4, 1604, 0, 90, 0, 0.07, weight = 0.1, preventSpawn = true},
	[274] = { "Patines de hielo", "Perfecto para patinar en hielo", 6, 1852, 0, 0, 0, 1, weight = 0.1},
	[275] = { "Candado para bicicletas", "Candado para bicicletas.", 4, 1271, 0, 0, 0, 0, weight = 0.1}, -- SjoerdPSV 
	[284] = { "Sistema RAM", "Reconocimiento Automático de Matrículas.", 4, 367, 270, 270, 0, 0, weight = 0.1},
}

	-- name, description, category, model, rx, ry, rz, zoffset, weight

	-- categories:
	-- 1 = Food & Drink
	-- 2 = Keys
	-- 3 = Drugs
	-- 4 = Other
	-- 5 = Books
	-- 6 = Clothing & Accessories
	-- 7 = Electronics
	-- 8 = guns
	-- 9 = bullets
	-- 10 = wallet

weaponmodels = {
	[1]=331, [2]=333, [3]=326, [4]=335, [5]=336, [6]=337, [7]=338, [8]=339, [9]=341,
	[15]=326, [22]=346, [23]=347, [24]=348, [25]=349, [26]=350, [27]=351, [28]=352,
	[29]=353, [32]=372, [30]=355, [31]=356, [33]=357, [34]=358, [35]=359, [36]=360,
	[37]=361, [38]=362, [16]=342, [17]=343, [18]=344, [39]=363, [41]=365, [42]=366,
	[43]=367, [10]=321, [11]=322, [12]=323, [14]=325, [44]=368, [45]=369, [46]=371,
	[40]=364, [100]=373
}

-- other melee weapons?
weaponweights = {
	[22] = 1.14, [23] = 1.24, [24] = 2, [25] = 3.1, [26] = 2.1, [27] = 4.2, [28] = 3.6, [29] = 2.640, [30] = 4.3, [31] = 2.68, [32] = 3.6, [33] = 4.0, [34] = 4.3
}

--
-- Vehicle upgrades as names
--
vehicleupgrades = {
	"Pro Spoiler", "Win Spoiler", "Drag Spoiler", "Alpha Spoiler", "Champ Scoop Hood",
	"Fury Scoop Hood", "Roof Scoop", "Right Sideskirt", "5x Nitro", "2x Nitro",
	"10x Nitro", "Race Scoop Hood", "Worx Scoop Hood", "Round Fog Lights", "Champ Spoiler",
	"Race Spoiler", "Worx Spoiler", "Left Sideskirt", "Upswept Exhaust", "Twin Exhaust",
	"Large Exhaust", "Medium Exhaust", "Small Exhaust", "Fury Spoiler", "Square Fog Lights",
	"Offroad Wheels", "Right Alien Sideskirt (Sultan)", "Left Alien Sideskirt (Sultan)",
	"Alien Exhaust (Sultan)", "X-Flow Exhaust (Sultan)", "Left X-Flow Sideskirt (Sultan)",
	"Right X-Flow Sideskirt (Sultan)", "Alien Roof Vent (Sultan)", "X-Flow Roof Vent (Sultan)",
	"Alien Exhaust (Elegy)", "X-Flow Roof Vent (Elegy)", "Right Alien Sideskirt (Elegy)",
	"X-Flow Exhaust (Elegy)", "Alien Roof Vent (Elegy)", "Left X-Flow Sideskirt (Elegy)",
	"Left Alien Sideskirt (Elegy)", "Right X-Flow Sideskirt (Elegy)", "Right Chrome Sideskirt (Broadway)",
	"Slamin Exhaust (Chrome)", "Chrome Exhaust (Broadway)", "X-Flow Exhaust (Flash)", "Alien Exhaust (Flash)",
	"Right Alien Sideskirt (Flash)", "Right X-Flow Sideskirt (Flash)", "Alien Spoiler (Flash)",
	"X-Flow Spoiler (Flash)", "Left Alien Sideskirt (Flash)", "Left X-Flow Sideskirt (Flash)",
	"X-Flow Roof (Flash)", "Alien Roof (Flash)", "Alien Roof (Stratum)", "Right Alien Sideskirt (Stratum)",
	"Right X-Flow Sideskirt (Stratum)", "Alien Spoiler (Stratum)", "X-Flow Exhaust (Stratum)",
	"X-Flow Spoiler (Stratum)", "X-Flow Roof (Stratum)", "Left Alien Sideskirt (Stratum)",
	"Left X-Flow Sideskirt (Stratum)", "Alien Exhaust (Stratum)", "Alien Exhaust (Jester)",
	"X-FLow Exhaust (Jester)", "Alien Roof (Jester)", "X-Flow Roof (Jester)", "Right Alien Sideskirt (Jester)",
	"Right X-Flow Sideskirt (Jester)", "Left Alien Sideskirt (Jester)", "Left X-Flow Sideskirt (Jester)",
	"Shadow Wheels", "Mega Wheels", "Rimshine Wheels", "Wires Wheels", "Classic Wheels", "Twist Wheels",
	"Cutter Wheels", "Switch Wheels", "Grove Wheels", "Import Wheels", "Dollar Wheels", "Trance Wheels",
	"Atomic Wheels", "Stereo System", "Hydraulics", "Alien Roof (Uranus)", "X-Flow Exhaust (Uranus)",
	"Right Alien Sideskirt (Uranus)", "X-Flow Roof (Uranus)", "Alien Exhaust (Uranus)",
	"Right X-Flow Sideskirt (Uranus)", "Left Alien Sideskirt (Uranus)", "Left X-Flow Sideskirt (Uranus)",
	"Ahab Wheels", "Virtual Wheels", "Access Wheels", "Left Chrome Sideskirt (Broadway)",
	"Chrome Grill (Remington)", "Left 'Chrome Flames' Sideskirt (Remington)",
	"Left 'Chrome Strip' Sideskirt (Savanna)", "Covertible (Blade)", "Chrome Exhaust (Blade)",
	"Slamin Exhaust (Blade)", "Right 'Chrome Arches' Sideskirt (Remington)",
	"Left 'Chrome Strip' Sideskirt (Blade)", "Right 'Chrome Strip' Sideskirt (Blade)",
	"Chrome Rear Bullbars (Slamvan)", "Slamin Rear Bullbars (Slamvan)", false, false, "Chrome Exhaust (Slamvan)",
	"Slamin Exhaust (Slamvan)", "Chrome Front Bullbars (Slamvan)", "Slamin Front Bullbars (Slamvan)",
	"Chrome Front Bumper (Slamvan)", "Right 'Chrome Trim' Sideskirt (Slamvan)",
	"Right 'Wheelcovers' Sideskirt (Slamvan)", "Left 'Chrome Trim' Sideskirt (Slamvan)",
	"Left 'Wheelcovers' Sideskirt (Slamvan)", "Right 'Chrome Flames' Sideskirt (Remington)",
	"Bullbar Chrome Bars (Remington)", "Left 'Chrome Arches' Sideskirt (Remington)", "Bullbar Chrome Lights (Remington)",
	"Chrome Exhaust (Remington)", "Slamin Exhaust (Remington)", "Vinyl Hardtop (Blade)", "Chrome Exhaust (Savanna)",
	"Hardtop (Savanna)", "Softtop (Savanna)", "Slamin Exhaust (Savanna)", "Right 'Chrome Strip' Sideskirt (Savanna)",
	"Right 'Chrome Strip' Sideskirt (Tornado)", "Slamin Exhaust (Tornado)", "Chrome Exhaust (Tornado)",
	"Left 'Chrome Strip' Sideskirt (Tornado)", "Alien Spoiler (Sultan)", "X-Flow Spoiler (Sultan)",
	"X-Flow Rear Bumper (Sultan)", "Alien Rear Bumper (Sultan)", "Left Oval Vents", "Right Oval Vents",
	"Left Square Vents", "Right Square Vents", "X-Flow Spoiler (Elegy)", "Alien Spoiler (Elegy)",
	"X-Flow Rear Bumper (Elegy)", "Alien Rear Bumper (Elegy)", "Alien Rear Bumper (Flash)",
	"X-Flow Rear Bumper (Flash)", "X-Flow Front Bumper (Flash)", "Alien Front Bumper (Flash)",
	"Alien Rear Bumper (Stratum)", "Alien Front Bumper (Stratum)", "X-Flow Rear Bumper (Stratum)",
	"X-Flow Front Bumper (Stratum)", "X-Flow Spoiler (Jester)", "Alien Rear Bumper (Jester)",
	"Alien Front Bumper (Jester)", "X-Flow Rear Bumper (Jester)", "Alien Spoiler (Jester)",
	"X-Flow Spoiler (Uranus)", "Alien Spoiler (Uranus)", "X-Flow Front Bumper (Uranus)",
	"Alien Front Bumper (Uranus)", "X-Flow Rear Bumper (Uranus)", "Alien Rear Bumper (Uranus)",
	"Alien Front Bumper (Sultan)", "X-Flow Front Bumper (Sultan)", "Alien Front Bumper (Elegy)",
	"X-Flow Front Bumper (Elegy)", "X-Flow Front Bumper (Jester)", "Chrome Front Bumper (Broadway)",
	"Slamin Front Bumper (Broadway)", "Chrome Rear Bumper (Broadway)", "Slamin Rear Bumper (Broadway)",
	"Slamin Rear Bumper (Remington)", "Chrome Front Bumper (Remington)", "Chrome Rear Bumper (Remington)",
	"Slamin Front Bumper (Blade)", "Chrome Front Bumper (Blade)", "Slamin Rear Bumper (Blade)",
	"Chrome Rear Bumper (Blade)", "Slamin Front Bumper (Remington)", "Slamin Rear Bumper (Savanna)",
	"Chrome Rear Bumper (Savanna)", "Slamin Front Bumper (Savanna)", "Chrome Front Bumper (Savanna)",
	"Slamin Front Bumper (Tornado)", "Chrome Front Bumper (Tornado)", "Chrome Rear Bumper (Tornado)",
	"Slamin Rear Bumper (Tornado)"
}

--
-- Badges
--

function getBadges( )
	return {
		-- [itemID] = {elementData, name, factionIDs, color, iconID} iconID 1 = ID, 2 = badge
		-- old faction badges that existed since being inscribed on stone tablets thousands of years ago
		[156]  = { "Superior Court of San Andreas ID", 		"a Superior Court of San Andreas ID",			{[50] = true},				 	 {0, 102, 255}, 2},
		[64]  = { "LSPD badge", 		"a LSPD badge",			{[1] = true},				 	{0,100,255, true},	2},
		--[112]  = { "SAHP badge", 		"a SAHP badge",			{[59] = true},				 	{222, 184, 135, true},	2}, -- Sheriff department
		[65]  = { "LSFD badge", 		"a LSFD badge", {[2] = true},	    {175, 50, 50},	1},
		[86]  = { "SAN badge",		"an SAN ID",				{[20] = true},					{150,150,255},	1},
		[87]  = { "GOV badge",		"a Government badge",		{[3] = true},					{0, 80, 0},	1},

		-- bandanas
		[122] = { "light blue bandana", "a light blue bandana",				{[-1] = true},					{0,185,200},	122, bandana = true},
		[123] = { "red bandana", "a red bandana",				{[-1] = true},					{190,0,0},	123, bandana = true},
		[124] = { "yellow bandana", "a yellow bandana",				{[-1] = true},					{255,250,0},	124, bandana = true},
		[125] = { "purple bandana", "a purple bandana",				{[-1] = true},					{220,0,255},	125, bandana = true},
		[135] = { "blue bandana", "a blue bandana",				{[-1] = true},					{0,100,255},	135, bandana = true},
		[136] = { "brown bandana", "a brown bandana",				{[-1] = true},					{125,63,50},	136, bandana = true},
		[158] = { "green bandana", "a green bandana",				{[-1] = true},					{50,150,50},	158, bandana = true},
		[168] = { "orange bandana", "a orange bandana",				{[-1] = true},					{210,105,30},	168, bandana = true},
		[237] = { "black bandana", "a black bandana", {[-1] = true}, {0,0,0}, 215, bandana = true},
		[238] = { "grey bandana", "a grey bandana", {[-1] = true}, {255,255,255}, 216, bandana = true},
		[239] = { "white bandana", "a white bandana", {[-1] = true}, {100,100,100}, 217, bandana = true},

		-- newer faction badges
		[127] = { "LSIA Identification",		"a LSIA ID card",	{[47] = true},	{255,140,0},	1},
		[82] = { "Bureau of Traffic Services ID", "An ID from the Bureau of Traffic Services",	{[4] = true},	{255,136,0},	1}, --MAXIME | ADD TTR FACTION BAGDE ITEM | 24.1.14
		[159] = { "Sparta Inc. ID", "An ID from Sparta Inc.", {[212] = true},  {52, 152, 219}, 1}, -- anumaz, Cargo Group ID
		[180] = { "SAPT ID", "An ID from San Andreas Public Transport", {[64] = true},  {73, 136, 245}, 1}, -- Exciter
		[222] = { "LSMA ID", "an LSMA ID", {[130] = true}, {143, 52, 173}, 1},
		[229] = { "JGC ID", "a JGC ID", {[74] = true}, {178, 0, 0}, 1},
		[230] = { "RPMF Incorporated ID", "a RPMF Incorporated ID", {[78] = true}, {0, 69, 156}, 1},
		[233] = { "Department of Corrections ID Card", "DOC Badge", {[84] = true}, {11, 97, 11}, 2},
		[234] = { "United States Marine Corps ID Card", "USMCR ID", {[81] = true}, {41, 57, 8}, 2},
		[235] = { "Dinoco ID Card", "a Dinoco ID", {[147] = true}, {0, 240, 255}, 1},
		[236] = { "National Park Service ID Card", "National Park Serv. ID", {[86] = true}, {45, 74, 31}, 1},
		[241] = { "Sharp Towing ID", "a Sharp Towing ID", {[101] = true}, {189, 189, 189}, 1},
		[245] = { "Legal Corporation ID", "a Legal Corporation ID", {[99] = true}, {255, 127, 0}, 1},
		[246] = { "Bank of Los Santos ID", "a Bank of Los Santos ID", {[17] = true}, {144, 195, 212}, 1},
		[247] = { "Astro Corporation ID", "a Astro Corporation ID", {[91] = true}, {173, 151, 64}, 1},
		--[131] = { "LSCSD Badge", "a Los Santos County Sheriff's Deparment badge", {[1] = true, [142] = true}, {222, 184, 135, true},	2},
		[249] = { "Western Solutions ID", "a Western Solutions ID card", {[159] = true}, {255,215,0}, 1},
		[250] = { "St John Ambulance ID", "a St John Ambulance ID card", {[134] = true}, {0, 171, 23}, 1},
		[251] = { "Pizza Stack ID", "a Pizza Stack ID card", {[172] = true}, {255, 173, 51}, 1},
		[258] = { "Lamborghini Automotive ID", "a Lamborghini Automotive ID card", {[93] = true}, {10, 10, 10}, 1},
		[259] = { "SL Incorporated ID", "a SL Incorporated ID card", {[104] = true}, {66, 66, 66}, 1},
		[265] = { "Saint Ernest Medical Center Staff ID", "a Saint Ernest Medical Center Staff ID card", {[164] = true}, {255, 112, 229}, 1},
		[266] = { "SAAN Staff ID", "a San Andreas Action News ID card", {[145] = true}, {255, 156, 51}, 1},
		[241] = { "Red Rose Funeral Home ID", "a Red Rose Funeral Home ID card", {[210] = true}, {255, 153, 153}, 1}
	}
end

-- badges/IDs should generally be in the wallet.
for k, v in pairs(getBadges()) do
	if not v[3][-1] and g_items[k][3] ~= 10 then
		outputDebugString('Placa/ID' .. k .. ' no está en la billetera.')
	end
end

--
-- Mask Data
--
function getMasks( )
	return {
		-- [itemID] = { elementData, textWhenPuttingOn, textWhentakingOff, hideIdentity }
		[26]  = {"gasmask",			"se coloca una máscara de gas en su cara",	"se quita una máscara de su cabeza",	true},
		[56]  = {"mask",			"se coloca una máscara en su cabeza",				"se quita un mask de su cabeza",				true},
		[90]  = {"helmet",			"se coloca un #name over their head",				"se quita un #name de su cabeza",				false},
		[120] = {"scuba",			"se coloca el equipo de buceo",						"se quita el equipo de buceo",						true},
		[171] = {"bikerhelmet",		"se coloca un #name over their head",				"se quita un #name de su cabeza",				false},
		[172] = {"fullfacehelmet",	"se coloca un #name over their head",				"se quita un #name de su cabeza",				true},
		[240] = {"christmashat",	"se coloca una #name on their head",				"se quita un #name de su cabeza",				false},
	}
end

replacedModelsWithWrongCollisionCheck = { [3915] = true }

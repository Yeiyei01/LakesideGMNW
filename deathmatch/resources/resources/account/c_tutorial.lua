local currentStage = 1
local FINAL_STAGE = 13
local TUTORIAL_STAGES = {
    [1] = {"Bienvenido", "¡Hola y bienvenido a Nine Nine! \n\nHas superado con éxito la fase de registro y estás en camino de empezar a jugar al rol aquí. Para ayudarte a empezar hemos creado este tutorial, ¡disfrútalo!", 1271.6337890625, -2037.69140625, 81.409843444824, 1125.6396484375, -2036.96484375, 69.880661010742},
    [2] = {"Propiedades", "Riverside ofrece una variedad de propiedades que puedes comprar, incluyendo lugares comerciales y residenciales como tiendas, garajes, negocios y casas. Los nuevos personajes reciben una ficha de propiedad que les permite comprar una casa con un valor de hasta 20.000 dólares, lo que les permite empezar a jugar al rol inmediatamente como si ya fueran residentes de Riverside.\n\nAl comprar una propiedad puedes elegir utilizar un interior predeterminado proporcionado o puedes cargar tu propio interior mapeado personalizado, adquirible con GameCoins a través de nuestro cargador de interiores en el Panel de Control de Usuario.", 2092.314453125, -1220.6669921875, 35.311351776123, 2108.9404296875, -1240.2802734375, 27.001424789429},
    [3] = {"Vehículos", "There's a large variety of vehicles always available from the scripted shops (not including player sold vehicles): \n\n - Ocean Docks Car Shop (Standard Cars) \n - Ocean Docks Truck/Industrial Shop (Industrial Vehicles) \n - Jefferson Car Shop (Standard Cars) \n - Santa Maria Beach Boat Shop (Boats) \n - Grotti's Car Shop (Sports Vehicles) \n - Idlewood Bike Shop (Motorcycles) \n\nNew characters are provided with a vehicle token, just like property tokens, these tokens allow you to buy a vehicle right away without having to grind a script job. They have a value of up to $35,000. Don't forget to /park your new vehicle! If a vehicle respawn occurs and you do not /park it, it will get deleted.", 2111.3681640625, -2116.8876953125, 21.02206993103, 2128.1513671875, -2138.896484375, 15.001725196838},
    [4] = {"DMV", "Aquí, en el Departamento de Vehículos Motorizados (también conocido como DMV) se pueden hacer muchas cosas. La razón principal por la que usted visitaría aquí es para adquirir una licencia de conducir, pero siempre puede adquirir muchos tipos diferentes de licencias aquí e incluso registrar / desregistrar sus vehículos. \n\nDesde el DMV también puedes comprar papeles de transacción del DMV, estos te permiten vender tu vehículo a otro jugador dentro del estacionamiento del DMV. (No puedes vender tu vehículo simbólico).", 1061.421875, -1752.6943359375, 25.57329750061, 1105.625, -1792.9228515625, 17.421173095703},
    [5] = {"Banco", "Aquí está el Banco de Riverside. En el banco puedes retirar, depositar y transferir dinero entre otros jugadores y facciones. El banco es también el lugar donde puedes pedir tarjetas de cajero automático.", 626.2001953125, -1207.552734375, 35.195793151855, 600.30859375, -1239.025390625, 20.625173568726},
    [6] = {"ATMS", "En los alrededores de Riverside, verás que hay muchos ATMS.\n\nThese may be utilized by dragging the card you ordered at the bank onto the machine itself. Depending on the card you bought at the Bank you'll be able to withdraw a certain amount from an ATM.\n\nWe offer three types of ATM cards, these are: \n - Basic ATM Card ($0 -> $10,000) \n - Premium ATM Card ($0 -> $50,000) \n - Ultimate ATM Card (Unlimited)\n\nEach ATM card has its own cost, you can view the costs at the Bank NPC.", 1106.2578125, -1792.5869140625, 19.298328399658, 1110.90625, -1790.431640625, 16.59375},
    [7] = {"Ayuntamiento", "Aquí, en el Ayuntamiento, hay una gran variedad de trabajos entre los que puedes elegir, estos trabajos están diseñados para ayudarte a ponerte en pie económicamente. Incluyen:\n- City Maintenance\n- Bus Driving\n- Taxi Driving\n- Delivery Driver\n\nAnother starting job which you can't sign up for at City Hall is fishing. To begin fishing you need to buy a Fishing Rod from a General Store, a boat from the boat store and then head out to sea! Players seeking the Mechanic Job should report for an administrator to set it for them and should have an RP reason for acquiring that job.", 1526.1279296875, -1712.4970703125, 25.736494064331, 1497.982421875, -1738.583984375, 18.620281219482},
    [8] = {"Chofer Taxis y Bus", "Aquí está la parada de taxis y autobuses. \n\nYou'll be able to find both taxis and buses ready for you to take (You need the job before you may drive the vehicle(s) and transport the citizens of Los Santos around!). Keep in mind that these vehicles should be used for the purposes of the job and not personal transportation.", 1823.2099609375, -1912.7138671875, 30.250659942627, 1789.2900390625, -1910.4990234375, 19.221006393433},
    [9] = {"Camioneros", "Aquí está Camioneros \n\nEn Camioneros hay 5 niveles de progresión, empezando por las furgonetas pequeñas y subiendo hasta los grandes camiones de transporte comercial. Como conductor de Camioneros, tienes la tarea de hacer entregas en lugares decididos por la compañía de camiones, dependiendo de cada trabajo recibirás una determinada cantidad. Estas entregas se realizan tanto en lugares preestablecidos como en tiendas de los jugadores, por lo que tu entrega ayuda a abastecer las tiendas y a marcar la diferencia en la economía del servidor.", -104.125, -1119.65234375, 2.7560873031616, -79.01953125, -1117.978515625, 1.078125},
    [10] = {"Pesca", "¿Quieres ser el próximo Ray Scott? \n\nPara pescar todo lo que necesitas es una caña y una barca y luego adentrarte en la bahía. Puedes empezar a pescar una vez que tengas los objetos con /startfishing. Al cabo de unos instantes, verás que has capturado un pez. Después de pescar, recibirás el objeto de pesca que podrás vender al pescador John, que se encuentra junto a la tienda de cebos en Riverside, en los muelles.", 163.1201171875, -1903.20703125, 19.174238204956, 134.77734375, -1962.0517578125, 15.005571365356},
    [11] = {"Facciones Legales", "Después de ganar un poco de dinero para empezar con uno de nuestros muchos trabajos con guión, es posible que quieras empezar a mirar para unirte a una facción legal.\n\nNormalmente puedes encontrar el reclutamiento para las facciones legales en noticias rstv en discord o en el sitio web de las facciones (los enlaces a los sitios web del Gobierno se pueden encontrar en owlgaming.net y la mayoría de los sitios web de las facciones se pueden encontrar en docs.owlgaming.net)", 1513.9677734375, -1674.328125, 33.480712890625, 1552.08203125, -1675.1279296875, 17.445131301882},
    [12] = {"Facciones Ilegales", "¿Te apetece ganar un poco de dinero pero no quieres hacerlo por medios legales?\n\nEn ese caso, quizá te interese unirte a una facción ilegal. Las facciones ilegales se encargan de abastecer las calles con contrabando. Cada facción suministra diferentes tipos de contrabando. Algunas facciones ilegales juegan en las calles y otras lo hacen entre bastidores, dependiendo de cómo desarrolles tu personaje podrás elegir a qué tipo de facción ilegal te puedes unir. Puedes ver las facciones ilegales en el docs del discord.", 2180.5078125, -1647.9208984375, 29.288076400757, 2140.115234375, -1625.4150390625, 15.865843772888},
    [13] = {"Nota Final", "El Roleplay con las facciones es tan infinito como tu imaginación, explorando el servidor y conociendo gente nueva. Encontrarás muchos escenarios interesantes tanto legales como ilegales.", 1981.0166015625, -1349.6162109375, 61.649375915527, 1925.7919921875, -1400.3291015625, 34.439781188965}
}

function runTutorial()
    tutorialWindow = guiCreateWindow(0.78, 0.63, 0.21, 0.35, "", true)
    guiWindowSetMovable(tutorialWindow, false)
    guiWindowSetSizable(tutorialWindow, false)
    showCursor(true)
    fadeCamera(true, 2.5)

    tutorialLabel = guiCreateLabel(0.02, 0.08, 0.95, 0.77, "", true, tutorialWindow)
    guiSetFont(tutorialLabel, "clear-normal")
    guiLabelSetHorizontalAlign(tutorialLabel, "left", true)

    backButton = guiCreateButton(0.02, 0.87, 0.45, 0.10, "Atras", true, tutorialWindow)
    nextButton = guiCreateButton(0.52, 0.87, 0.45, 0.10, "Siguiente", true, tutorialWindow)

    setStage(1)
    addEventHandler("onClientGUIClick", tutorialWindow, buttonFunctionality)
end
addEvent("tutorial:run", true)
addEventHandler("tutorial:run", root, runTutorial)

function setStage(stage)
    if (stage > FINAL_STAGE) then 
        currentStage = -1
        fadeCamera(false)
        guiSetText(tutorialWindow, "Tutorial Nine Nine - Tutorial Terminado")
        guiSetText(tutorialLabel, "Has completado el tutorial ¿Qué te gustaría hacer a continuación?")
        guiSetText(nextButton, "Final del Tutorial")
    else
        guiSetText(tutorialWindow, "Nine Nine Tutorial - " .. TUTORIAL_STAGES[stage][1])
        guiSetText(tutorialLabel, TUTORIAL_STAGES[stage][2])
        setCameraMatrix(TUTORIAL_STAGES[stage][3], TUTORIAL_STAGES[stage][4], TUTORIAL_STAGES[stage][5], TUTORIAL_STAGES[stage][6], TUTORIAL_STAGES[stage][7], TUTORIAL_STAGES[stage][8], 0, 90)
        
        if not guiGetVisible(tutorialWindow) then 
            guiSetVisible(tutorialWindow, true)
        end
    end
end

function buttonFunctionality(button, state)
    if (button == "left") and (source == backButton) then 
        if (currentStage == 1) then 
            return
        elseif (currentStage == -1) then 
            currentStage = FINAL_STAGE
            fadeClientScreen()
            guiSetText(nextButton, "Next")
            setTimer(setStage, 1000, 1, currentStage)
        else
            currentStage = currentStage - 1
            fadeClientScreen()
            setTimer(setStage, 1000, 1, currentStage)
        end            
    elseif (button == "left") and (source == nextButton) then 
        if (currentStage == -1) then 
            removeEventHandler("onClientGUIClick", tutorialWindow, buttonFunctionality)
            destroyElement(tutorialWindow)   
            triggerServerEvent("accounts:tutorialFinished", resourceRoot)
        else
            currentStage = currentStage + 1
            fadeClientScreen()
            setTimer(setStage, 1000, 1, currentStage)
        end
    end
end

function fadeClientScreen()
    fadeCamera(false)
    setTimer(function()
        fadeCamera(true, 2.5)
    end, 1000, 1)
end

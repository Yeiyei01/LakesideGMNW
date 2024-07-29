-- Script feita por Takayo 

-- Montain Shop https://discord.gg/Ap5CqvUW7h

local MARKER_PEGAR_PRE_MACONHA = createMarker(-1448.145, -1459.455, 100.758, "cylinder", 1.5, 0, 255, 0, 100) --X, Y, Z, "TIPO", TAMANHO, COR RGB, Opacidade

local MARKER_PLANTAR = createMarker (-1428.374, -1541.425, 100.758, "cylinder", 1.5, 255, 255, 255, 100) or createMarker(-1395.3000488281, -1591.4000244141, 101.40000152588, "cylinder", 1.5, 255, 255, 255, 100)

local MARKER_COLHER_MACONHA = createMarker(-1428.374, -1541.425, 100.758, "cylinder", 1.5, 255, 255, 255, 2) --X, Y, Z, "TIPO", TAMANHO, COR RGB, Opacidade

local MARKER_ENTREGAR_GROVE = createMarker(2522.78223, -1679.61951, 15.49700 -1, "cylinder", 1.5, 255, 255, 255, 100) --X, Y, Z, "TIPO", TAMANHO, COR RGB, Opacidade

local BLIP_GROVE = createBlipAttachedTo(MARKER_ENTREGAR_GROVE, 41) --Blip onde aparecerá quando o player digitar /colher para mudar troque o 41 por o id de um blip para mudar acesse (https://wiki.multitheftauto.com/wiki/Radar_Blips)

-----------------------------------------------
setElementVisibleTo(MARKER_PLANTAR, root, false) --Para deixar o marker para todos ver troque false por true

setElementVisibleTo(BLIP_GROVE, root, false) --Para deixar o BLIP para todos ver troque false por true

setElementVisibleTo(MARKER_ENTREGAR_GROVE, root, false) --Para deixar o marker para todos ver troque false por true
-------------------------------------------------
function mensagemPre (source)
    outputChatBox("#0000ff[INFO] #ffffffPara obtener la marihuana, use /recogerm", source, 255, 255, 255, true) --Mensagem ao passar no marker para pegar o pé de maconha
end
addEventHandler("onMarkerHit", MARKER_PEGAR_PRE_MACONHA, mensagemPre)

function pegarPre (source)
    if isElementWithinMarker(source, MARKER_PEGAR_PRE_MACONHA) then 
        if getElementData(source, "RK:PreMaconha") == false then
            setElementFrozen(source, true)
            setPedAnimation(source, "bar", "barcustom_get", 2600, true, false, false, false) --Animação que acontecerá ao digitar /pmaconha
            setTimer(function()
            setElementData(source, "RK:PreMaconha", true)
            setElementFrozen(source, false)
            outputChatBox("#0000ff[INFO] #ffffffTienes la planta de marihuana. Llévalo a la plantación y usa /plantar", source, 255, 255, 255, true) --Mensagem ao dar /pmaconha
            setElementVisibleTo(MARKER_PLANTAR, source, true)
            end, TEMPO_PEGAR_PE_MACONHA, 1)
        else
            outputChatBox("#FF0000[ERRO] #ffffff¡Ya tienes una planta de Marihuana en la mano!", source, 255, 255, 255, true) --Mensagem se o player passar no marker com o pé de maconha
        end
    end
end
addCommandHandler("recogerm", pegarPre) --Comando para pegar o pé de maconha

function plantarM (source)
    if isElementWithinMarker(source, MARKER_PLANTAR) then
        if getElementData(source, "RK:PreMaconha") == true then
            setElementFrozen(source, true)
            Broto = createObject(675, -1428.374, -1541.425, 100.758)
			setPedAnimation(source, "BOMBER", "BOM_Plant", 2600, true, false, false, false) --Animação que acontecerá ao digitar /plantar
        ------------------------------------------    
        setTimer(function()
            setElementFrozen(source, false)
            setElementData(source, "RK:PreMaconha", false)
            outputChatBox("#0000ff[INFO] #ffffffPlantaste la marihuana, espera a que crezca para cosechar", source, 255, 255, 255, true) --Mensagem ao dar /plantar
            setElementVisibleTo(MARKER_PLANTAR, source, false)
        end, TEMPO_PLANTAR, 1)

        setTimer(function()
            destroyElement(Broto)
			Maconha = createObject(3409, -1428.374, -1541.425, 100.758) --ID, X, Y, Z Para mudar a planta troque o 675 por um id de objeto
            outputChatBox("#0000ff[INFO] #ffffffTu marihuana ha crecido, cosechala y llévala al surco", source, 255, 255, 255, true) --Mensagem dps de dar /plantar
        end, TEMPO_PLANTAR_2, 1)
            --------------------------------------------
        end
    end 
end
addCommandHandler("plantar", plantarM) --Comando para plantar a maconha


function ColherM (source)
    if isElementWithinMarker(source, MARKER_COLHER_MACONHA) then
        if getElementData(source, "RK:Maconha") == false then
            setElementData(source, "RK:Maconha", true)
            setElementFrozen(source, true)
            setPedAnimation(source, "BOMBER", "BOM_Plant", 5000, true, false, false, false)
            setTimer(function()
                setElementFrozen(source, false)
                setPedAnimation(source, false)
                outputChatBox("#0000ff[INFO] #ffffffCosechaste la marihuana, llévala a la arboleda y escribe /entregar", source, 255, 255, 255, true) --Mensagem ao dar /colher
                setElementVisibleTo(BLIP_GROVE, source, true) --Para deixar o blip invisivel para o player que der /colher troque o true por false
                setElementVisibleTo(MARKER_PLANTAR, source, false) --Para deixar o marker visivel para o player que der /colher troque o false por true
                destroyElement(Maconha)
            end, TEMPO_COLHER, 1)
        end
    else
        outputChatBox("#FF0000[ERRO] #ffffffAún no has plantado marihuana", source, 255, 255, 255, true)
    end
end
addCommandHandler("colectar", ColherM) --Comandos para colher a droga

function levarGrove (source)
    if isElementWithinMarker(source, MARKER_ENTREGAR_GROVE) then
        if getElementData(source, "RK:Maconha") == true then
            setElementData(source, "RK:Maconha", false)
            setElementFrozen(source, true)
            setPedAnimation(source, "casino", "slot_in", 3000, true, false, false, false)
            setTimer(function()
                setElementFrozen(source, false)
                setPedAnimation(source, false)
                outputChatBox("#0000ff[INFO] #ffffff¡Vendiste la marihuana y recibiste tu pago!", source, 255, 255, 255, true) --Mensagem ao dar /entregar
                exports.global:giveMoney(source, 150) -- Dinheiro que o player vai receber
                setElementVisibleTo(BLIP_GROVE, source, false) --Para deixar o BLIP da GROVE ao dar /entregar visivel troque o false por true
            end, TEMPO_ENTREGAR, 1)
        end
    else
        outputChatBox("#FF0000[ERRO] #ffffffNo tienes marihuana o no estás en el lugar de entrega", source, 255, 255, 255, true)
    end
end
addCommandHandler("entregar", levarGrove) --Comando para entregar a maconha 

function RemoverM (source)
    destroyElement(Broto)
    destroyElement(Maconha)
	outputChatBox("#0000ff[INFO] #ffffffQuitaste toda la marihuana con exito", source, 255, 255, 255, true) -- Mensagem ao remover as maconhas e brotos.
end
	addCommandHandler("quitarmarihuanaadmin", RemoverM) 

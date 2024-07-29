local markersTableMask = {}
local shopsMasks = {
    {1153.7969970703, -1457.9930419922, 14.796875},
    {-2277.6652832031, 708.05859375, 48.4453125},
}

local listMascaras = {
    -- Name       ID   Price
    {"Mascara ", 2213, 400},
    {"Mascara Cerdo", 2212, 300},
    {"Mascara Chimpance", 2214, 200},
    {"Mascara Mono", 2215, 600},
    {"Mascara Jason", 2216, 600},
    {"Mascara Orco", 2217, 600},
}

function createShopMarkers()
    for i, _ in ipairs (shopsMasks) do 
        markersTableMask[i] = createMarker( shopsMasks[i][1], shopsMasks[i][2], shopsMasks[i][3], "cylinder", 1.5, 255, 255, 255, 255)
        createBlipAttachedTo(markersTableMask[i], 45, 2, 255, 255, 255, 150,0, 200, resourceRoot)
        AgregarTextoMarcadores(shopsMasks[i][1], shopsMasks[i][2], shopsMasks[i][3]+1, "Tienda de Mascaras", 255, 255, 255)
        addEventHandler('onClientMarkerHit', markersTableMask[i], function ( hitPlayer )
            if ( getElementType( hitPlayer ) == "player" ) and ( hitPlayer == localPlayer ) then
                if not isElement(windowMask) then
                    ventanaBuyMascaras()
                end
            end
        end)
    end
end
addEventHandler("onClientResourceStart", resourceRoot, createShopMarkers)

function ventanaBuyMascaras()
    windowMask = guiCreateWindow(931, 243, 487, 550, "Sistema De Mascaras", false)
    guiWindowSetSizable(windowMask, false)

    list = guiCreateGridList(21, 37, 451, 429, false, windowMask)
    guiGridListAddColumn(list, "Mascara", 0.6)
    guiGridListAddColumn(list, "Precio", 0.3)

    maskSpace = 0
    for i, _ in ipairs(listMascaras) do
        local buymask = getElementData(localPlayer, "mascara_"..listMascaras[i][2]) or false
        if not buymask then 
            guiGridListAddRow(list)
            guiGridListSetItemText(list, maskSpace, 1, tostring(listMascaras[i][1]), false, false)
            guiGridListSetItemText(list, maskSpace, 2, tostring(listMascaras[i][3]), false, false)
            maskSpace = maskSpace + 1
        end
    end

    btn_buy_mascara = guiCreateButton(35, 481, 144, 59, "Comprar Mascara", false, windowMask)
    btn_exit = guiCreateButton(272, 481, 144, 59, "Salir", false, windowMask)    

    addEventHandler("onClientGUIClick", btn_exit, closeVentanaMascaras, false)
    addEventHandler("onClientGUIClick", btn_buy_mascara, buy_mascara, false)
    showCursor(true)
end

function buy_mascara()
    local row = guiGridListGetSelectedItem(list)
    if (not row or row == -1) then return end
    local name_mascara = guiGridListGetItemText(list, row, 1)
    id_mascara, price_mascara = getIdAndPriceMascaraOfName(name_mascara)
    isMascara = getElementData(localPlayer, "mascara_"..id_mascara) or false
    if isMascara then
        outputChatBox("Ya compraste esta mascara antes", 255, 0, 0)
    else
        if getPlayerMoney(localPlayer) >= price_mascara then
            triggerServerEvent("quitarDineroJugador", localPlayer, price_mascara)
            setElementData(localPlayer, "mascara_"..id_mascara, true)
            outputChatBox("Compra Exitosa, usa el comando /mascaras para colocartela", 0, 255, 0)
            closeVentanaMascaras()
        else
            outputChatBox("No tienes dinero suficiente", 255, 0, 0)
        end
    end
end

function getIdAndPriceMascaraOfName(mascara)
	for i, _ in ipairs(listMascaras) do
		if mascara == listMascaras[i][1] then
			return listMascaras[i][2], listMascaras[i][3]
		end
	end
end

function closeVentanaMascaras()
    destroyElement(windowMask)
    showCursor(false)
end

function ventanaMisMascaras()
    windowMis = guiCreateWindow(931, 243, 487, 550, "Sistema De Mascaras", false)
    guiWindowSetSizable(windowMis, false)

    list2 = guiCreateGridList(21, 37, 451, 429, false, windowMis)
    guiGridListAddColumn(list2, "Mascara", 0.6)

    espaciosLista = 0
    for i, _ in ipairs(listMascaras) do
        isMascara = getElementData(localPlayer, "mascara_"..listMascaras[i][2])
        if isMascara then
            guiGridListAddRow(list2)
            guiGridListSetItemText(list2, espaciosLista, 1, tostring(listMascaras[i][1]), false, false)
            espaciosLista = espaciosLista + 1
        end
    end

    btn_colocar_mascara = guiCreateButton(35, 481, 144, 59, "Colocar Mascara", false, windowMis)
    btn_exit = guiCreateButton(272, 481, 144, 59, "Salir", false, windowMis)    

    addEventHandler("onClientGUIClick", btn_exit, closeVentanaMascarasColocar, false)
    addEventHandler("onClientGUIClick", btn_colocar_mascara, colocar_mascara, false)
    showCursor(true)
end
addCommandHandler("mascaras", ventanaMisMascaras)

function colocar_mascara()
    local row = guiGridListGetSelectedItem(list2)
    if (not row or row == -1) then return end
    local name_mascara = guiGridListGetItemText(list2, row, 1)
    id_mascara, price_mascara = getIdAndPriceMascaraOfName(name_mascara)
    triggerServerEvent("colocarMascara", localPlayer, id_mascara)
end

function closeVentanaMascarasColocar()
    destroyElement(windowMis)
    showCursor(false)
end

function importarMascaras()
	reemplazarObjetoMascara(2212)
	reemplazarObjetoMascara(2213)
	reemplazarObjetoMascara(2214)
	reemplazarObjetoMascara(2215)
	reemplazarObjetoMascara(2216)
	reemplazarObjetoMascara(2217)
end
addEventHandler("onClientResourceStart", resourceRoot, importarMascaras)

function reemplazarObjetoMascara(idObject)
    txd = engineLoadTXD("Archivos/"..idObject..".txd")
	dff = engineLoadDFF("Archivos/"..idObject..".dff")
    engineImportTXD(txd,idObject)
	engineReplaceModel(dff,idObject)
	engineSetModelLODDistance(idObject, 500)
end

sx,sy = guiGetScreenSize()
textsToDraw = {}
maxrange = 10
addEventHandler("onClientRender",root,
    function()
        for a,b in pairs(textsToDraw) do
            x,y,z = b[1],b[2],b[3]
            scx,scy = getScreenFromWorldPosition (x,y,z)
            camX,camY,camZ = getCameraMatrix()
            if scx and scy and getDistanceBetweenPoints3D(camX,camY,camZ,x,y,z+5) <= maxrange then 
            dxDrawFramedText(b[4],scx-0.5*dxGetTextWidth(b[4],2,"sans"),scy+30-0.5*dxGetFontHeight(2,"sans"),sx, sy+5,tocolor ( b[5], b[6], b[7], 255 ), 2,"sans")
            end
        end
    end
)

function AgregarTextoMarcadores(x,y,z,text,r,g,b)
    table.insert(textsToDraw,{x,y,z,text,r,g,b})
end

function dxDrawFramedText ( message , left , top , width , height , color , scale , font , alignX , alignY , clip , wordBreak , postGUI , frameColor )
	color = color or tocolor ( 255 , 255 , 255 , 255 )
	frameColor = frameColor or tocolor ( 0 , 0 , 0 , 255 )
	scale = scale or 1
	font = font or "sans"
	alignX = alignX or "left"
	alignY = alignY or "top"
	clip = clip or false
	wordBreak = wordBreak or false
	postGUI = postGUI or false
	dxDrawText ( message , left + 1 , top + 1 , width + 1 , height + 1 , frameColor , scale , font , alignX , alignY , clip , wordBreak , postGUI )
	dxDrawText ( message , left + 1 , top - 1 , width + 1 , height - 1 , frameColor , scale , font , alignX , alignY , clip , wordBreak , postGUI )
	dxDrawText ( message , left - 1 , top + 1 , width - 1 , height + 1 , frameColor , scale , font , alignX , alignY , clip , wordBreak , postGUI )
	dxDrawText ( message , left - 1 , top - 1 , width - 1 , height - 1 , frameColor , scale , font , alignX , alignY , clip , wordBreak , postGUI )
	dxDrawText ( message , left , top , width , height , color , scale , font , alignX , alignY , clip , wordBreak , postGUI )
end

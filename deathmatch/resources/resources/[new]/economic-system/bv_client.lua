GUIEditor = {
    tab = {},
    tabpanel = {},
    edit = {},
    button = {},
    window = {},
    gridlist = {}
}
GUIEditor.window[1] = guiCreateWindow(320, 145, 640, 431, "Stock Market by MrSolo 1.0v", false)
    guiWindowSetSizable(GUIEditor.window[1], false)
    GUIEditor.window[1].visible = false

    GUIEditor.tabpanel[1] = guiCreateTabPanel(27, 37, 589, 336, false, GUIEditor.window[1])

    GUIEditor.tab[1] = guiCreateTab("Buy Stock", GUIEditor.tabpanel[1])

    GUIEditor.gridlist[1] = guiCreateGridList(6, 8, 433, 293, false, GUIEditor.tab[1])
    guiGridListAddColumn(GUIEditor.gridlist[1], "Company", 0.4)
    guiGridListAddColumn(GUIEditor.gridlist[1], "PPS", 0.25)
    guiGridListAddColumn(GUIEditor.gridlist[1], "Value change", 0.25)
    GUIEditor.button[1] = guiCreateButton(456, 19, 113, 54, "Buy Stock", false, GUIEditor.tab[1])
    GUIEditor.button[1].enabled = false
    guiSetProperty(GUIEditor.button[1], "NormalTextColour", "FFAAAAAA")
    GUIEditor.edit[1] = guiCreateEdit(456, 83, 113, 31, "", false, GUIEditor.tab[1])
    GUIEditor.edit[1].enabled = false

    GUIEditor.tab[2] = guiCreateTab("Sell Stock", GUIEditor.tabpanel[1])

    GUIEditor.gridlist[2] = guiCreateGridList(6, 8, 433, 293, false, GUIEditor.tab[2])
    guiSetProperty(GUIEditor.gridlist[2], "SortSettingEnabled", "False")
    guiGridListAddColumn(GUIEditor.gridlist[2], "Company", 0.4)
    guiGridListAddColumn(GUIEditor.gridlist[2], "Total Shares", 0.25)
    guiGridListAddColumn(GUIEditor.gridlist[2], "Total Value", 0.25)
    GUIEditor.button[2] = guiCreateButton(456, 19, 113, 54, "Sell Stock", false, GUIEditor.tab[2])
    GUIEditor.button[2].enabled = false
    guiSetProperty(GUIEditor.button[2], "NormalTextColour", "FFAAAAAA")


    GUIEditor.button[3] = guiCreateButton(17, 384, 609, 37, "Close", false, GUIEditor.window[1])
guiSetProperty(GUIEditor.button[3], "NormalTextColour", "FFAAAAAA")

local currentData
local selectedBuyRow = -1
local selectedSellRow = -1
local totalMidifier = 1
local buyD,sellD

addEventHandler("onClientGUIChanged", GUIEditor.edit[1], function()
    GUIEditor.edit[1].text = GUIEditor.edit[1].text:gsub("%D", "")
    totalMidifier = math.max((tonumber(GUIEditor.edit[1].text)or 1),1)
    updateWindowData( currentData )
end)

addEventHandler( "onClientGUIClick", GUIEditor.window[1], function( )


    selectedBuyRow = GUIEditor.gridlist[1]:getSelectedItem()
    GUIEditor.button[1].enabled = not buyD and selectedBuyRow > -1 and true or false
    GUIEditor.edit[1].enabled = not buyD and selectedBuyRow > -1 and true or false
    selectedSellRow = GUIEditor.gridlist[2]:getSelectedItem()
    GUIEditor.button[2].enabled = not sellD and selectedSellRow > -1 and true or false
    
    updateWindowData( currentData )

    if source == GUIEditor.button[3] then
        GUIEditor.window[1].visible = false
        showCursor( false )
    end

    if source == GUIEditor.button[1] then
        if selectedBuyRow > -1 then
            local c = currentData[selectedBuyRow+1].name
            local n = currentData[selectedBuyRow+1].pps*totalMidifier
            if getPlayerMoney( ) - n >= 0 then
                local temp = localPlayer:getData "Stocks" or {}
                for k,d in pairs(currentData) do
                    if d.name == c then
                        temp[d.name] = {temp[d.name] and temp[d.name][1]+totalMidifier or totalMidifier,currentData[selectedBuyRow+1].pps}
                    end
                end
                localPlayer:setData("Stocks",temp,false)
                triggerServerEvent( "onClientStockTransaction", localPlayer, -n )
                GUIEditor.button[1].enabled = false
                GUIEditor.edit[1].enabled = false
                buyD = true
                saveStocks( )
            else
                outputChatBox( "U broke dude... U missing $"..math.abs(getPlayerMoney( ) - n), 255, 100, 100 )
            end
        end
    end

    if source == GUIEditor.button[2] then
        if selectedSellRow > -1 then
            local temp = localPlayer:getData "Stocks"
            local c = GUIEditor.gridlist[2]:getItemText(selectedSellRow,1)
            local n = getCompPPS(c) * temp[c][1]
            temp[c] = nil
            localPlayer:setData("Stocks",temp,false)
            triggerServerEvent( "onClientStockTransaction", localPlayer, round(n,2,"ceil") )
            updateWindowData( currentData )
            GUIEditor.button[2].enabled = false
            sellD = true
            saveStocks( )
        end
    end

end )

addEvent( "onConfirmPayment", true )
addEventHandler( "onConfirmPayment", root, function( )
    buyD,sellD = false,false
    GUIEditor.button[1].enabled = true
    GUIEditor.edit[1].enabled = true
    GUIEditor.button[2].enabled = true
end)

addEvent( "onToggleStockWindow", true )
addEventHandler( "onToggleStockWindow", root, function( data )
    local exec = not GUIEditor.gridlist[1].visible and updateWindowData( data )
    GUIEditor.window[1].visible = not GUIEditor.window[1].visible
    showCursor( GUIEditor.window[1].visible )
end)

addEventHandler( "onClientResourceStart", resourceRoot, function( )
    triggerServerEvent( "onClientRequestStocks", localPlayer )
end)

addEvent( "onClientGetStockInfo", true )
addEventHandler( "onClientGetStockInfo", root, function( data )
    localPlayer:setData("Stocks",fromJSON(data.data), false)
end)

function updateWindowData( data )
    currentData = data
    local playerData = localPlayer:getData "Stocks" or {}
    GUIEditor.gridlist[1]:clear()
    GUIEditor.gridlist[2]:clear()
    for i,d in pairs(data) do
        local r = GUIEditor.gridlist[1]:addRow()
        GUIEditor.gridlist[1]:setItemText( r, 1, d.name, false, false )
        GUIEditor.gridlist[1]:setItemText( r, 2, "$ "..round(d.pps,2)*totalMidifier, false, false )
        GUIEditor.gridlist[1]:setItemText( r, 3, (d.diff[1] and "▲ " or "▼ " )..round(d.diff[2],2).."%", false, false )
        GUIEditor.gridlist[1]:setItemColor( r, 3, d.diff[1] and 0 or 255, d.diff[1] and 255 or 0, 0 )
    end
    for k,s in pairs(playerData) do
        local r = GUIEditor.gridlist[2]:addRow()
        GUIEditor.gridlist[2]:setItemText( r, 1, k, false, false )
        GUIEditor.gridlist[2]:setItemText( r, 2, s[1], false, false )
        local old = s[2]*s[1]
        local new = getCompPPS( k )*s[1]
        local change = new-old >= 0 and true
        GUIEditor.gridlist[2]:setItemText( r, 3, "$"..round(new-old,2), false, false )
        GUIEditor.gridlist[2]:setItemColor( r, 3, change and 0 or 255, change and 255 or 0, 0 )
    end
    GUIEditor.gridlist[1]:setSelectedItem(selectedBuyRow,1)
    GUIEditor.gridlist[2]:setSelectedItem(selectedSellRow,1)
end
addEvent( "onStocksUpdated", true )
addEventHandler( "onStocksUpdated", root, updateWindowData)

function saveStocks( )
    local data = localPlayer:getData "Stocks"
    local data = data and toJSON( data )
    triggerServerEvent( "onClientSaveStocks", localPlayer, data )
end

function getCompPPS( c )
    for _,v in pairs(currentData) do
        if v.name == c then return v.pps end
    end
end

function round(number, decimals, method)
    decimals = decimals or 0
    local factor = 10 ^ decimals
    if (method == "ceil" or method == "floor") then return math[method](number * factor) / factor
    else return tonumber(("%."..decimals.."f"):format(number)) end
end
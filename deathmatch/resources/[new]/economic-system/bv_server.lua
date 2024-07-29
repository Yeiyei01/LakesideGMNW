local db = Connection("sqlite", "stocks.db")
db:exec([[CREATE TABLE IF NOT EXISTS playerData(serial TEXT,data TEXT)]])


local Companies = {}

function Company( name, price, lowL, upL )
    local self = {
        name = name:gsub("%W","") ~= "" and name or "Undefined",
        pps = tonumber(price) or 20,
        upperLimit = upL or 1.01,
        lowerLimit = lowL or 0.99,
        diff = {true,100}
    }

    function self.randomChange( )
        local change = math.random(self.lowerLimit*1000,self.upperLimit*1000)*.001
        self.pps = self.pps * change
        self.diff = {change-1 > 0,(change-1)*100}
    end

    table.insert( Companies, self )
    return self
end

function updateStocks( )
    for i,s in pairs(Companies) do
        s.randomChange()
    end
    syncStocks()
end
setTimer( updateStocks, 60000, 0 )
addCommandHandler( "change", updateStocks )

function syncStocks()
    triggerClientEvent( "onStocksUpdated", resourceRoot, Companies )
end

function round(number, decimals, method)
    decimals = decimals or 0
    local factor = 10 ^ decimals
    if (method == "ceil" or method == "floor") then return math[method](number * factor) / factor
    else return tonumber(("%."..decimals.."f"):format(number)) end
end

addEvent( "onClientStockTransaction", true )
addEventHandler( "onClientStockTransaction", root, function( money )
    triggerClientEvent( source, "onConfirmPayment", source )
    source:giveMoney(money)
    -- exports.global:giveMoney( source, money )
end)

addEvent( "onClientSaveStocks", true )
addEventHandler( "onClientSaveStocks", root, function( data )
    db:query(saveCallback,{source,data}, "SELECT data FROM `playerData` WHERE `serial` = ?", source.serial )
end)

function saveCallback( qh,plr,cdata )
	local data = qh:poll(-1)[1]
	local _ = not data and addPlayerToDb(plr,cdata) or updatePlayerToDb( plr, cdata )
end

function addPlayerToDb( plr, data )
	db:exec( "INSERT INTO playerData(serial,data) VALUES(?,?)", plr.serial,data )
    iprint("saving",plr,data)
end

function updatePlayerToDb( plr, data )
	db:exec("UPDATE playerData SET data='"..data.."' WHERE serial=?", plr.serial )
    iprint("Updated",plr,data)
end

addEvent( "onClientRequestStocks", true )
addEventHandler( "onClientRequestStocks", root, function( )
    db:query(loadCallback,{source}, "SELECT data FROM `playerData` WHERE `serial` = ?", source.serial )
end)

function loadCallback( qh,plr )
	local data = qh:poll(-1)[1]
	local _ = data and triggerClientEvent( plr, "onClientGetStockInfo", resourceRoot, data )
end


addEventHandler( "onColShapeHit", root, function( p, dim )
    if source.id == "Stock Marker" and  p:getType() == "player" then
        triggerClientEvent( p, "onToggleStockWindow", resourceRoot, Companies )
    end
end)

for i,m in pairs(markerTable) do
    createMarker( m[1], m[2], m[3], "cylinder", 1, 255, 255, 0, 255 )
    createBlip( m[1], m[2], m[3], 52, 2, 255, 255, 255, 255,  0, 1000 )
    local c = createColSphere( m[1], m[2], m[3]+1, 1 )
    c.id = "Stock Marker"
end

for i,c in pairs(companyTable) do
    Company(c[1],c[2],c[3],c[4])
end

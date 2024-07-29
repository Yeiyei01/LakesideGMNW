
--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

addEventHandler('onClientResourceStart',resourceRoot,function () 
txd = engineLoadTXD( 'Model/GameLight.txd' ) 
engineImportTXD( txd, 6334 ) 
col = engineLoadCOL ( "Model/GameLight.col" )
engineReplaceCOL ( col, 6334 )
end)

addEventHandler('onClientResourceStart',resourceRoot,function () 
txd = engineLoadTXD( 'Model/4735.txd' ) 
engineImportTXD( txd, 4735 ) 
dff = engineLoadDFF('Model/4735.dff', 4735) 
engineReplaceModel( dff, 4735 )
end)

addEventHandler('onClientResourceStart',resourceRoot,function () 
txd = engineLoadTXD( 'Model/3095.txd' ) 
engineImportTXD( txd, 3095 ) 
end)

addEventHandler('onClientResourceStart',resourceRoot,function () 
txd = engineLoadTXD( 'Model/door.txd' ) 
engineImportTXD( txd, 1502 ) 
dff = engineLoadDFF('Model/door.dff', 1502) 
engineReplaceModel( dff, 1502 )
col = engineLoadCOL ( "Model/door.col" )
engineReplaceCOL ( col, 1502 )
end)

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

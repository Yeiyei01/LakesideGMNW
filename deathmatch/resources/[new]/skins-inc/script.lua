-- Skins Mujeres Nine Nine Roleplay - The Jose

addEventHandler('onClientResourceStart',resourceRoot,function () 

txd = engineLoadTXD( 'Seguridad.txd' ) 
engineImportTXD( txd, 146 ) 
dff = engineLoadDFF('Seguridad.dff', 146 ) 
engineReplaceModel( dff, 146 )

txd = engineLoadTXD( 'directorio.txd' ) 
engineImportTXD( txd, 153 ) 
dff = engineLoadDFF('directorio.dff', 153 ) 
engineReplaceModel( dff, 153 )

txd = engineLoadTXD( 'tactico.txd' ) 
engineImportTXD( txd, 162 ) 
dff = engineLoadDFF('tactico.dff', 162 ) 
engineReplaceModel( dff, 162 )

end)

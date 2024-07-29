function ReplaceCar()
txd = engineLoadTXD('minertruck/barracks.txd', 433)
engineImportTXD(txd, 433)
dff = engineLoadDFF('minertruck/barracks.dff', 433)
engineReplaceModel(dff, 433)
end
addEventHandler( 'onClientResourceStart', getResourceRootElement(getThisResource()), ReplaceCar)
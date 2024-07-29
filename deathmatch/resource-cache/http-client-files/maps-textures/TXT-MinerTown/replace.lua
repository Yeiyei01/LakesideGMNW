function replaceModel()

txd_hillhousex4_5 = engineLoadTXD ( "TXT-MinerTown/data/hillhousex4_5.txd" )
engineImportTXD ( txd_hillhousex4_5, 3601 )

end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), replaceModel)
addCommandHandler ( "reloadcar", replaceModel )
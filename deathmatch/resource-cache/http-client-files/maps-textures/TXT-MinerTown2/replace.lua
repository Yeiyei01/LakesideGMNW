function replaceModel()

txd_ganghous03 = engineLoadTXD ( "TXT-MinerTown2/data/ganghous03.txd" )
engineImportTXD ( txd_ganghous03, 3655 )

end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), replaceModel)
addCommandHandler ( "reloadcar", replaceModel )
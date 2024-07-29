function replaceModel()

txd_sw_diner1 = engineLoadTXD ( "TXT-Towns/sw_diner1.txd" )
engineImportTXD ( txd_sw_diner1, 12976 )

dff_sw_diner1 = engineLoadDFF ( "TXT-Towns/sw_diner1.dff" )
engineImportDFF ( dff_sw_diner1, 12976 )

end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), replaceModel)
addCommandHandler ( "reloadcar", replaceModel )
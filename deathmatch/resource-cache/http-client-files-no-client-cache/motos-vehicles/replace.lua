function replaceModel() 

       txd = engineLoadTXD("fcr900.txd", 521 )
  engineImportTXD(txd, 521)
  dff = engineLoadDFF("fcr900.dff", 521 )
  engineReplaceModel(dff, 521)

       txd = engineLoadTXD("freeway_1.txd", 463 )
  engineImportTXD(txd, 463)
  dff = engineLoadDFF("freeway_1.dff", 463 )
  engineReplaceModel(dff, 463)

       txd = engineLoadTXD("quad.txd", 471 )
  engineImportTXD(txd, 471)
  dff = engineLoadDFF("quad.dff", 471 )
  engineReplaceModel(dff, 471)

       txd = engineLoadTXD("sanchez.txd", 468 )
  engineImportTXD(txd, 468)
  dff = engineLoadDFF("sanchez.dff", 468 )
  engineReplaceModel(dff, 468)

       txd = engineLoadTXD("wayfarer.txd", 586 )
  engineImportTXD(txd, 586)
  dff = engineLoadDFF("wayfarer.dff", 586 )
  engineReplaceModel(dff, 586)

end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), replaceModel)
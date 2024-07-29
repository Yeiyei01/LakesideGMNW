function replaceModel() 

       txd = engineLoadTXD("journey.txd", 508 )
  engineImportTXD(txd, 508)
  dff = engineLoadDFF("journey.dff", 508 )
  engineReplaceModel(dff, 508)

       txd = engineLoadTXD("journey1.txd", 483 )
  engineImportTXD(txd, 483)
  dff = engineLoadDFF("journey1.dff", 483 )
  engineReplaceModel(dff, 483)

       txd = engineLoadTXD("journey2.txd", 459 )
  engineImportTXD(txd, 459)
  dff = engineLoadDFF("journey2.dff", 459 )
  engineReplaceModel(dff, 459)

end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), replaceModel)
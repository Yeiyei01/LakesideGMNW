function replaceModel() 

       txd = engineLoadTXD("polmav.txd", 497 ) --- AStar’s 350 B2 SD
  engineImportTXD(txd, 497)
  dff = engineLoadDFF("polmav.dff", 497 )
  engineReplaceModel(dff, 497)

       txd = engineLoadTXD("copbike.txd", 523 ) --- BMW Norwalk SD
  engineImportTXD(txd, 523)
  dff = engineLoadDFF("copbike.dff", 523 )
  engineReplaceModel(dff, 523)

       txd = engineLoadTXD("copcarla.txd", 596 ) --- Ford Crown Victoria SD
  engineImportTXD(txd, 596)
  dff = engineLoadDFF("copcarla.dff", 596 )
  engineReplaceModel(dff, 596)

       txd = engineLoadTXD("copcarsf.txd", 597 ) --- Dodge Charger SD
  engineImportTXD(txd, 597)
  dff = engineLoadDFF("copcarsf.dff", 597 )
  engineReplaceModel(dff, 597)

       txd = engineLoadTXD("copcarlv.txd", 598 ) --- Ford Explorer SD
  engineImportTXD(txd, 598)
  dff = engineLoadDFF("copcarlv.dff", 598 )
  engineReplaceModel(dff, 598)

       txd = engineLoadTXD("coprancher.txd", 599 ) --- Chevrolet Tahoe SD
  engineImportTXD(txd, 599)
  dff = engineLoadDFF("coprancher.dff", 599 )
  engineReplaceModel(dff, 599)

       txd = engineLoadTXD("patriot.txd", 470 ) ---  Dodge Charger Hellcat Incognito SD
  engineImportTXD(txd, 470)
  dff = engineLoadDFF("patriot.dff", 470 )
  engineReplaceModel(dff, 470)

       txd = engineLoadTXD("premier.txd", 426 ) --- Ford Crown Victoria Incognito SD
  engineImportTXD(txd, 426)
  dff = engineLoadDFF("premier.dff", 426 )
  engineReplaceModel(dff, 426)

       txd = engineLoadTXD("fbitruck.txd", 528 ) ---  GENERIC Spartant SD
  engineImportTXD(txd, 528)
  dff = engineLoadDFF("fbitruck.dff", 528 )
  engineReplaceModel(dff, 528)

       txd = engineLoadTXD("ambulance.txd", 416 ) --- Ford E-350 ES
  engineImportTXD(txd, 416)
  dff = engineLoadDFF("ambulance.dff", 416 )
  engineReplaceModel(dff, 416)

       txd = engineLoadTXD("fbirancher.txd", 490 ) --- GMC Sierra ES
  engineImportTXD(txd, 490)
  dff = engineLoadDFF("fbirancher.dff", 490 )
  engineReplaceModel(dff, 490)

       txd = engineLoadTXD("packer.txd", 443 ) --- GMC Sany Tunning Performace
  engineImportTXD(txd, 443)
  dff = engineLoadDFF("packer.dff", 443 )
  engineReplaceModel(dff, 443)

end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), replaceModel)
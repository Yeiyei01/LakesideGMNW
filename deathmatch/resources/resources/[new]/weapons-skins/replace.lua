function replaceModel() 
  txd = engineLoadTXD("ak47.txd", 355 )
  engineImportTXD(txd, 355)
  dff = engineLoadDFF("ak47.dff", 355 )
  engineReplaceModel(dff, 355)

  txd = engineLoadTXD("shotgun.txd", 349 )
  engineImportTXD(txd, 349)
  dff = engineLoadDFF("shotgun.dff", 349 )
  engineReplaceModel(dff, 349)
  
  txd = engineLoadTXD("colt45.txd", 346 )
  engineImportTXD(txd, 346)
  dff = engineLoadDFF("colt45.dff", 346 )
  engineReplaceModel(dff, 346)
  
  txd = engineLoadTXD("desert_eagle.txd", 348 )
  engineImportTXD(txd, 348)
  dff = engineLoadDFF("desert_eagle.dff", 348 )
  engineReplaceModel(dff, 348)

  txd = engineLoadTXD("m4.txd", 356 )
  engineImportTXD(txd, 356)
  dff = engineLoadDFF("m4.dff", 356 )
  engineReplaceModel(dff, 356)  
  
  txd = engineLoadTXD("micro_uzi.txd", 352 )
  engineImportTXD(txd, 352)
  dff = engineLoadDFF("micro_uzi.dff", 352 )
  engineReplaceModel(dff, 352)
  
  txd = engineLoadTXD("mp5lng.txd", 353 )
  engineImportTXD(txd, 353)
  dff = engineLoadDFF("mp5lng.dff", 353 )
  engineReplaceModel(dff, 353) 

  txd = engineLoadTXD("sawnoff.txd", 350 )
  engineImportTXD(txd, 350)
  dff = engineLoadDFF("sawnoff.dff", 350 )
  engineReplaceModel(dff, 350)

  txd = engineLoadTXD("shotgun.txd", 349 )
  engineImportTXD(txd, 349)
  dff = engineLoadDFF("shotgun.dff", 349 )
  engineReplaceModel(dff, 349) 

  txd = engineLoadTXD("shotgspa.txd", 351 )
  engineImportTXD(txd, 351)
  dff = engineLoadDFF("shotgspa.dff", 351 )
  engineReplaceModel(dff, 351)  
  
  txd = engineLoadTXD("silenced.txd", 347 )
  engineImportTXD(txd, 347)
  dff = engineLoadDFF("silenced.dff", 347 )
  engineReplaceModel(dff, 347)

  txd = engineLoadTXD("sniper.txd", 358 )
  engineImportTXD(txd, 358)
  dff = engineLoadDFF("sniper.dff", 358 )
  engineReplaceModel(dff, 358)

  txd = engineLoadTXD("tec9.txd", 372 )
  engineImportTXD(txd, 372)
  dff = engineLoadDFF("tec9.dff", 372 )
  engineReplaceModel(dff, 372)     
  
end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), replaceModel)
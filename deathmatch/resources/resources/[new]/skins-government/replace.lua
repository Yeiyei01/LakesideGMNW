function replaceModel() 
  
  txd = engineLoadTXD("pd1.txd", 265 ) --- Oficial Blanco
  engineImportTXD(txd, 265)
  dff = engineLoadDFF("pd1.dff", 265 )
  engineReplaceModel(dff, 265)
  
  txd = engineLoadTXD("pd2.txd", 266 ) --- Oficial Negro
  engineImportTXD(txd, 266)
  dff = engineLoadDFF("pd2.dff", 266 )
  engineReplaceModel(dff, 266)
  
  txd = engineLoadTXD("pd3.txd", 267 ) --- Mujer Detective
  engineImportTXD(txd, 267)
  dff = engineLoadDFF("pd3.dff", 267 )
  engineReplaceModel(dff, 267)

  txd = engineLoadTXD("detective.txd", 290 ) --- Hombre Detective
  engineImportTXD(txd, 290)
  dff = engineLoadDFF("detective.dff", 290 )
  engineReplaceModel(dff, 290)
  
  txd = engineLoadTXD("pd4.txd", 282 ) --- Nivel 2º Hombre
  engineImportTXD(txd, 282)
  dff = engineLoadDFF("pd4.dff", 282 )
  engineReplaceModel(dff, 282)

  txd = engineLoadTXD("wfycllv.txd", 71 ) --- Nivel 2º Mujer
  engineImportTXD(txd, 71)
  dff = engineLoadDFF("wfycllv.dff", 71 )
  engineReplaceModel(dff, 71)
  
  txd = engineLoadTXD("pd5.txd", 284 ) --- Oficial Mujer
  engineImportTXD(txd, 284)
  dff = engineLoadDFF("pd5.dff", 284 )
  engineReplaceModel(dff, 284)
  
  txd = engineLoadTXD("pd6.txd", 280 ) --- Oficial Hombre en Pruebas
  engineImportTXD(txd, 280)
  dff = engineLoadDFF("pd6.dff", 280 )
  engineReplaceModel(dff, 280)
  
  txd = engineLoadTXD("pd7.txd", 281 ) --- Oficial Mujer en Pruebas
  engineImportTXD(txd, 281)
  dff = engineLoadDFF("pd7.dff", 281 )
  engineReplaceModel(dff, 281)

  txd = engineLoadTXD("FemalePolice.txd", 283 ) --- Oficial Mujer Alto Rango
  engineImportTXD(txd, 283)
  dff = engineLoadDFF("FemalePolice.dff", 283 )
  engineReplaceModel(dff, 283)

  txd = engineLoadTXD("dsher.txd", 288 ) --- Oficial Hombre Alto Rango
  engineImportTXD(txd, 288)
  dff = engineLoadDFF("dsher.dff", 288 )
  engineReplaceModel(dff, 288)
  
  txd = engineLoadTXD("swat.txd", 285 ) --- SWAT Hombre
  engineImportTXD(txd, 285)
  dff = engineLoadDFF("swat.dff", 285 )
  engineReplaceModel(dff, 285)

  txd = engineLoadTXD("swatmujer.txd", 287 ) --- SWAT Mujer
  engineImportTXD(txd, 287)
  dff = engineLoadDFF("swatmujer.dff", 287 )
  engineReplaceModel(dff, 287)

  txd = engineLoadTXD("army.txd", 286 ) --- FSB Hombre
  engineImportTXD(txd, 286)
  dff = engineLoadDFF("army.dff", 286 )
  engineReplaceModel(dff, 286)

  txd = engineLoadTXD("wfyclem.txd", 298 ) --- Paramedico Mujer Blanca
  engineImportTXD(txd, 298)
  dff = engineLoadDFF("wfyclem.dff", 298 )
  engineReplaceModel(dff, 298)

  txd = engineLoadTXD("laemt1.txd", 274 ) --- Paramedico Hombre Negro
  engineImportTXD(txd, 274)
  dff = engineLoadDFF("laemt1.dff", 274 )
  engineReplaceModel(dff, 274)

  txd = engineLoadTXD("lvemt1.txd", 275 ) --- Paramedico Hombre Latino
  engineImportTXD(txd, 275)
  dff = engineLoadDFF("lvemt1.dff", 275 )
  engineReplaceModel(dff, 275)

  txd = engineLoadTXD("sfemt1.txd", 276 ) --- Paramedico Hombre Blanco
  engineImportTXD(txd, 276)
  dff = engineLoadDFF("sfemt1.dff", 276 )
  engineReplaceModel(dff, 276)

  txd = engineLoadTXD("kendl.txd", 304 ) --- Bombero Mujer Blanca
  engineImportTXD(txd, 304)
  dff = engineLoadDFF("kendl.dff", 304 )
  engineReplaceModel(dff, 304)

  txd = engineLoadTXD("lafd1.txd", 277 ) --- Bombero Hombre Blanco
  engineImportTXD(txd, 277)
  dff = engineLoadDFF("lafd1.dff", 277 )
  engineReplaceModel(dff, 277)

  txd = engineLoadTXD("lvfd1.txd", 278 ) --- Bombero Hombre Negro
  engineImportTXD(txd, 278)
  dff = engineLoadDFF("lvfd1.dff", 278 )
  engineReplaceModel(dff, 278)

  txd = engineLoadTXD("sffd1.txd", 279 ) --- Jefe de Bomberos Hombre Blanco
  engineImportTXD(txd, 279)
  dff = engineLoadDFF("sffd1.dff", 279 )
  engineReplaceModel(dff, 279)

  txd = engineLoadTXD("Robber1.txd", 127 ) --- Miembro Bratva
  engineImportTXD(txd, 127)
  dff = engineLoadDFF("Robber1.dff", 127 )
  engineReplaceModel(dff, 127)

  txd = engineLoadTXD("Robber2.txd", 128 ) --- Miembro Bratva
  engineImportTXD(txd, 128)
  dff = engineLoadDFF("Robber2.dff", 128 )
  engineReplaceModel(dff, 128)

end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), replaceModel)
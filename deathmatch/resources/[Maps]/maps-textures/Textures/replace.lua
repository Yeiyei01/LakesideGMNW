function AlejandroClient ()

txdSD = engineLoadTXD("Textures/des_nwtownpolice.txd") -- Cartel Policia
engineImportTXD(txdSD, 11611)

txdES = engineLoadTXD("Textures/des_nwtown.txd") -- Cartel Medico
engineImportTXD(txdES, 11455)

--txdGlass = engineLoadTXD("Textures/wglass.txd") -- Vidrio
--engineImportTXD(txdGlass, 1649)

txdDoor = engineLoadTXD("Textures/adam_v_doort.txd") -- Puerta
engineImportTXD(txdDoor, 1569)

txdGDoor = engineLoadTXD("Textures/vgsegarage.txd") -- Porton
engineImportTXD(txdGDoor, 8957)

txdLand = engineLoadTXD("Textures/factorycunte.txd") -- Suelo
engineImportTXD(txdLand, 12814)

txdWall1 = engineLoadTXD("Textures/des_stownW.txd") -- Muro 1
engineImportTXD(txdWall1, 16500)

txdWall2 = engineLoadTXD("Textures/des_byoffice.txd") -- Muro 2
engineImportTXD(txdWall2, 16501)

txdBank = engineLoadTXD("Textures/sw_ware01.txd") -- Banco
engineImportTXD(txdBank, 12941)

txdWorkshop = engineLoadTXD("Textures/ce_terminal.txd") -- Taller
engineImportTXD(txdWorkshop, 13295)

dffWorkshop = engineLoadDFF("Textures/ce_terminal1.dff") -- Taller
engineReplaceModel(dffWorkshop, 13295)

txdTec = engineLoadTXD("Textures/dockcargo2_las.txd") -- Techo
engineImportTXD(txdTec, 3567)

txdGOB = engineLoadTXD("Textures/placa.txd") -- Placa del Gobierno
engineImportTXD(txdGOB, 8132)

txdFlag = engineLoadTXD("Textures/firehouse_sfse.txd") -- Bandera
engineImportTXD(txdFlag, 11245)

txdPub = engineLoadTXD("Textures/dk_midbuilds.txd") -- a
engineImportTXD(txdPub, 12936)

txdStore = engineLoadTXD("Textures/cunte_lik.txd") -- bn
engineImportTXD(txdStore, 12843)

txdBarr = engineLoadTXD("Textures/helixbarrier.txd") -- a
engineImportTXD(txdBarr, 981)

txdBarri = engineLoadTXD("Textures/barrier.txd") -- bn
engineImportTXD(txdBarri, 1228)

txdCo = engineLoadTXD("Textures/dyncones.txd") -- a
engineImportTXD(txdCo, 1237)

txdTru = engineLoadTXD("Textures/truckedepotlawn.txd") -- bn
engineImportTXD(txdTru, 17072)

txdFarm = engineLoadTXD("Textures/sw_farm1.txd") -- a
engineImportTXD(txdFarm, 12921)

txdGym = engineLoadTXD("Textures/ground5_las.txd") -- bn
engineImportTXD(txdGym, 4848)

txdGym = engineLoadTXD("Textures/icons6.txd") -- bn
engineImportTXD(txdGym, 1239)

txdRSS = engineLoadTXD("Textures/cw_motel2cs_t.txd") -- a
engineImportTXD(txdRSS, 18244)

txdTru = engineLoadTXD("Textures/newstuff_sfn.txd") -- bn
engineImportTXD(txdTru, 9314)

txdFarm = engineLoadTXD("Textures/vgsn_rbstiff.txd") -- a
engineImportTXD(txdFarm, 3521)

txdGym = engineLoadTXD("Textures/vgnfremnt2.txd") -- bn
engineImportTXD(txdGym, 7313)

txdGym = engineLoadTXD("Textures/portakabin.txd") -- bn
engineImportTXD(txdGym, 1684)

txdGym = engineLoadTXD("Textures/cxref_freeway.txd") -- bn
engineImportTXD(txdGym, 3410)

txdGym = engineLoadTXD("Textures/law_coffintu.txd") -- bn
engineImportTXD(txdGym, 2898)

txdGym = engineLoadTXD("Textures/cxref_desert.txd") -- bn
engineImportTXD(txdGym, 3334)

txdGym = engineLoadTXD("Textures/vgnpwrentrnce.txd") -- bn
engineImportTXD(txdGym, 7023)

txdGym = engineLoadTXD("Textures/des_stownmain2.txd") -- bn
engineImportTXD(txdGym, 16563)

end
addEventHandler( "onClientResourceStart", resourceRoot, AlejandroClient )
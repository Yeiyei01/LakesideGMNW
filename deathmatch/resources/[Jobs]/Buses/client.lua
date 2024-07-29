
--function Start()
	--txdtxd = engineLoadTXD("bus.txd")
	--engineImportTXD(txdtxd,431)
	--dffdff = engineLoadDFF("bus.dff")
	--engineReplaceModel(dffdff,431)
--end
--addEventHandler("onClientResourceStart", getResourceRootElement(thisResource), Start, false)

--function Start()
	--txdtxd = engineLoadTXD("coach.txd")
	--engineImportTXD(txdtxd,437)
	--dffdff = engineLoadDFF("coach.dff")
	--engineReplaceModel(dffdff,437)
--end
--addEventHandler("onClientResourceStart", getResourceRootElement(thisResource), Start, false)

function Start()
	txdtxd = engineLoadTXD("topfun.txd")
	engineImportTXD(txdtxd,459)
	dffdff = engineLoadDFF("topfun.dff")
	engineReplaceModel(dffdff,459)
end
addEventHandler("onClientResourceStart", getResourceRootElement(thisResource), Start, false)

--function Start()
	--txdtxd = engineLoadTXD("911rs.txd")
	--engineImportTXD(txdtxd,400)
	--dffdff = engineLoadDFF("911rs.dff")
	--engineReplaceModel(dffdff,400)
--end
--addEventHandler("onClientResourceStart", getResourceRootElement(thisResource), Start, false)
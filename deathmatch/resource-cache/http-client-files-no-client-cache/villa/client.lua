addEventHandler('onClientResourceStart', resourceRoot,
function()
local txd = engineLoadTXD('HOUSE8.txd',true)
engineImportTXD(txd, 1859)
local dff = engineLoadDFF('HOUSE8.dff', 0)
engineReplaceModel(dff, 1859)
local col = engineLoadCOL('HOUSE8.col')
engineReplaceCOL(col, 1859)
engineSetModelLODDistance(1859, 5000)
end)


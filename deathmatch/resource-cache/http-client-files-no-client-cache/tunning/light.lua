function ReplaceCar()
dff = engineLoadDFF('files/light/lgt_b_rspt.dff', 1013)
engineReplaceModel(dff, 1013)
end
addEventHandler( 'onClientResourceStart', getResourceRootElement(getThisResource()), ReplaceCar)
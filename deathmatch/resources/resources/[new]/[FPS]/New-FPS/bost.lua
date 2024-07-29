setFogDistance( 0 )
setCloudsEnabled ( false )
setFarClipDistance( 1150 )
setMoonSize(0)
setSunSize(0)
setOcclusionsEnabled( false )

addEventHandler("onClientResourceStart", resourceRoot, function()
    if #getElementsByType("object") > 350 then
    engineSetAsynchronousLoading( true, true )
    end
end)

-- <3
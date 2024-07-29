
addEventHandler("onClientResourceStart", resourceRoot,
    function()
        LOGORP = guiCreateStaticImage(0.45, 0.00, 0.15, 0.14, "img/logorp.png", true)
        guiSetAlpha(LOGORP, 0.59)    
    end
)
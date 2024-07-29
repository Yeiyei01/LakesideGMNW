-- Sitemiz : https://sparrow-mta.blogspot.com/

-- Facebook : https://facebook.com/sparrowgta/
-- İnstagram : https://instagram.com/sparrowmta/
-- YouTube : https://youtube.com/c/SparroWMTA/

-- Discord : https://discord.gg/DzgEcvy

addEventHandler( "onClientResourceStart", resourceRoot,
    function()
        if getVersion ().sortable < "1.1.0" then
            outputChatBox( "resource wont work on this client." )
            return
        end

texShader = dxCreateShader ( "texreplace.fx" )
siteM16 = dxCreateTexture("siteM16.png")


dxSetShaderValue(texShader,"gTexture",siteM16)
engineApplyShaderToWorldTexture(texShader,"siteM16")
        end
)



-- Sitemiz : https://sparrow-mta.blogspot.com/

-- Facebook : https://facebook.com/sparrowgta/
-- İnstagram : https://instagram.com/sparrowmta/
-- YouTube : https://youtube.com/c/SparroWMTA/

-- Discord : https://discord.gg/DzgEcvy
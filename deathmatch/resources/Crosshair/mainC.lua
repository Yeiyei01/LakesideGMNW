-- Sitemiz : https://sparrow-mta.blogspot.com/

-- Facebook : https://facebook.com/sparrowgta/
-- İnstagram : https://instagram.com/sparrowmta/
-- YouTube : https://youtube.com/c/SparroWMTA/

-- Discord : https://discord.gg/DzgEcvy

local textures = {
    {"snipercrosshair", "files/textures/sniper.png"},
}

addEventHandler("onClientResourceStart", getResourceRootElement(),
    function()
        for k, v in pairs(textures) do
            local shader = dxCreateShader("files/texreplace.fx")
            local texture = dxCreateTexture(v[2])
            dxSetShaderValue(shader, "Tex0", texture)
            engineApplyShaderToWorldTexture(shader, v[1])
        end
    end 
)


-- Sitemiz : https://sparrow-mta.blogspot.com/

-- Facebook : https://facebook.com/sparrowgta/
-- İnstagram : https://instagram.com/sparrowmta/
-- YouTube : https://youtube.com/c/SparroWMTA/

-- Discord : https://discord.gg/DzgEcvy
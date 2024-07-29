local screenW, screenH = guiGetScreenSize()

local components = { "weapon", "ammo", "health", "clock", "money", "breath", "armour", "wanted" }

addEventHandler("onClientResourceStart", getResourceRootElement(getThisResource()),
function ()
    for _, component in ipairs( components ) do
        setPlayerHudComponentVisible( component, false )
    end
end)

addEventHandler("onClientRender", root,
    function()

    local salud = getElementHealth ( localPlayer )
    local armadura = getPedArmor (localPlayer)
    local pMoney = ("%008d"):format(getElementData(localPlayer, "money") or 0 )
    local showammo1 = getPedAmmoInClip (localPlayer,getPedWeaponSlot(localPlayer))
    local showammo2 = getPedTotalAmmo(localPlayer)-getPedAmmoInClip(localPlayer)
    local showammo3 = getPedTotalAmmo(getLocalPlayer())
    local arma = getPedWeapon (localPlayer)
    local vidaActual = (screenW * 0.0922) * (salud/100)
    local armaduraActual = (screenW * 0.0922) * (armadura/100)
    local bankmoney = ("%008d"):format(getElementData(localPlayer, "bankmoney") or 0 )


        dxDrawRectangle(screenW * 0.8150, screenH * 0.2580, screenW * 0.0974, screenH * 0.0273, tocolor(0, 0, 0, 700), false)
        dxDrawRectangle(screenW * 0.8180, screenH * 0.2640, vidaActual, screenH * 0.0143, tocolor(500, 0, 0, 700), false)
        dxDrawRectangle(screenW * 0.8150, screenH * 0.2890, screenW * 0.0974, screenH * 0.0273, tocolor(0, 0, 0, 700), false)
        dxDrawRectangle(screenW * 0.8180, screenH * 0.2940, armaduraActual, screenH * 0.0143, tocolor(228, 228, 228, 700), false)




    end
)
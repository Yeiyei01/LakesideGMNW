local sW, sH = guiGetScreenSize()
local sw, sh = sW/1920, sH/1080
local components = {
    "health", "armour", "money", "clock", "weapon", "ammo"
}

local images = {}
images.logo = dxCreateTexture("files/logo.png")
images.card = dxCreateTexture("files/icon_card.png")
images.money = dxCreateTexture("files/icon_money.png")
images.health = dxCreateTexture("files/icon_heart.png")

local colors = {}
colors.black = tocolor(20, 20, 20)
colors.red = tocolor(255, 0, 0)
colors.white = tocolor(255, 255, 255)

local function dxDrawRoundedRectangle(x, y, width, height, radius, color, postGUI, subPixelPositioning)
    dxDrawRectangle(x + radius, y + radius, width - (radius * 2), height - (radius * 2), color, postGUI, subPixelPositioning)
    dxDrawCircle(x + radius, y + radius, radius, 1000, 270, color, color, 16, 1, postGUI)
    dxDrawCircle(x + radius, (y + height) - radius, radius, 90, 180, color, color, 16, 1, postGUI)
    dxDrawCircle((x + width) - radius, (y + height) - radius, radius, 0, 90, color, color, 16, 1, postGUI)
    dxDrawCircle((x + width) - radius, y + radius, radius, 270, 360, color, color, 16, 1, postGUI)
    dxDrawRectangle(x, y + radius, radius, height - (radius * 2), color, postGUI, subPixelPositioning)
    dxDrawRectangle(x + radius, y + height - radius, width - (radius * 2), radius, color, postGUI, subPixelPositioning)
    dxDrawRectangle(x + width - radius, y + radius, radius, height - (radius * 2), color, postGUI, subPixelPositioning)
    dxDrawRectangle(x + radius, y, width - (radius * 2), radius, color, postGUI, subPixelPositioning)
end

addEventHandler("onClientResourceStart", resourceRoot, function()
    for i, v in pairs(components) do
        setPlayerHudComponentVisible(v, false)
    end
end)

addEventHandler("onClientResourceStop", resourceRoot, function()
    for i, v in pairs(components) do
        setPlayerHudComponentVisible(v, true)
    end
end)

function formatMoney(amount)
    local formatted = amount
    while true do
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if (k == 0) then
            break
        end
    end
    return formatted
end

addEventHandler("onClientRender", root, function()
    local health = getElementHealth(localPlayer) / 100
    local armour = getPlayerArmor(localPlayer) / 100
    local hunger = getElementData(localPlayer, "digite_aqui_a_fome") or 20 / 100
    local thirst = getElementData(localPlayer, "digite_aqui_a_sede") or 20 / 100
    local money = formatMoney(getElementData(localPlayer, "money") or 0)
    local bank_money = formatMoney(getElementData(localPlayer, "bankmoney") or 0)
    local id = getElementData(localPlayer, "playerid") or 40
    local ping = getPlayerPing(localPlayer)
    local faction_id = getElementData(localPlayer, "faction") or 0

    local factionNames = {
        [1] = "Carabineros De Chile",
        [2] = "SAMU",
        [3] = "PDI",
        [4] = "Mecanicos",
    }

    local name_faction = factionNames[faction_id] or "Desempleado"

    dxDrawRoundedRectangle(sw * 1560, sh * 115, sw * 350, sh * 50, 10, colors.black) -- Box1
    dxDrawRoundedRectangle(sw * 1560, sh * 170, sw * 220, sh * 50, 10, colors.black) -- Box2
    dxDrawRoundedRectangle(sw * 1560, sh * 225, sw * 220, sh * 50, 10, colors.black) -- Box3
    dxDrawRoundedRectangle(sw * 1680, sh * 60, sw * 40, sh * 50, 10, colors.black) -- Box4
    dxDrawRoundedRectangle(sw * 1560, sh * 60, sw * 100, sh * 50, 10, colors.black) -- Box3


    dxDrawText(string.gsub(name_faction, "^%s*(.-)%s*$", "%1"), 1570 * sw, 75 * sh, 2000 * sw + 160 * sw, 180 * sh + 30 * sh, colors.white, 0.8, "pricedown", "left", "center")
    dxDrawText(money, 1600 * sw, 180 * sh, 1685 * sw + 160 * sw, 180 * sh + 30 * sh, colors.white, 0.8, "pricedown", "left", "center")
    dxDrawText(bank_money, 1600 * sw, 235 * sh, 1685 * sw + 160 * sw, 235 * sh + 30 * sh, colors.white, 0.8, "pricedown", "left", "center")
    dxDrawText(id, 1690 * sw, 75 * sh, 65 * sw + 160 * sw, 70 * sh + 25 * sh, colors.white, 0.8, "pricedown", "left", "center")
    dxDrawText(ping, 1570 * sw, 75 * sh, 65 * sw + 160 * sw, 70 * sh + 25 * sh, colors.white, 0.8, "pricedown", "left", "center")


    dxDrawImage(sw * 1565, sh * 180, sw * 32, sh * 32, images.money) -- Money
    dxDrawImage(sw * 1560, sh * 180, sw * 32, sh * 32, images.ping) -- Ping
    dxDrawImage(sw * 1680, sh * 180, sw * 32, sh * 32, images.carnet) -- Carnet
    dxDrawImage(sw * 1565, sh * 235, sw * 32, sh * 32, images.card) -- Card
    dxDrawImage(sw * 1800, sh * 165, sw * 110, sh * 110, images.logo) -- logo
end)
local screen = {guiGetScreenSize()} local x, y = (screen[1]/1366), (screen[2]/768)

function a ()
    local pos1 = interpolateBetween(0, 0, 0, 100, 0, 0, ((getTickCount() - tick) / 3000), 'SineCurve')
    dxDrawImage(x * 0, y * 0, screen[1], screen[2], 'files/fundo.png', 0, 0, 0, tocolor(255, 255, 255, 255), true)
    dxDrawRectangle(x * 0, y * 0, x * screen[1] / 100 * pos1, y * 6.38, tocolor(43, 171, 226, 255), true)
    dxDrawRectangle(x * screen[1], y * 762, - x * screen[1] / 100 * pos1, y * 6.38, tocolor(43, 171, 226, 255), true)
    dxDrawImage(x * 544, y * 243, x * 230, y * 230, 'files/logo.png', 0, 0, 0, tocolor(255, 255, 255, 255), true)
    dxDrawImage(x * 0, y * 0, screen[1], screen[2], 'files/'..(isSoundPaused(sound) and 'despausar' or 'pausar')..'.png', 0, 0, 0, tocolor(255, 255, 255, 255), true)
end

bindKey('space', 'down',
    function()
        if (p) then
            if isElement(sound) then
                if isSoundPaused(sound) then
                    setSoundPaused(sound, false)
                else
                    setSoundPaused(sound, true)
                end
            end
        end
    end
)

local panel = {
		sounds = {
			{ 'http://radio.dubbase.fm/listen192.m3u', 0.3 },
			{ 'http://radio.dubbase.fm/listen192.m3u', 0.3 },
			{ 'http://radio.dubbase.fm/listen192.m3u', 0.3 },
		}
	}

function iLoadScreen ()
    if not p or (p == false) then
        tick = getTickCount()
        p = true
        local soundss = math.random( 1, 3 )
        sound = playSound ( panel.sounds[ soundss ][ 1 ], true )
        triggerServerEvent('Caio.onSetVoice', localPlayer, localPlayer, true)
        addEventHandler('onClientRender', root, a)
    end
end
addEventHandler('onClientResourceStart', getResourceRootElement(getThisResource()), iLoadScreen)

function fLoandScreen ()    
    if (isTransferBoxActive() == true) then
        setTimer(fLoandScreen, 2000, 1)
    else 
        p = false
        if isElement(sound) then
            stopSound(sound)
        end
        triggerServerEvent('Caio.onSetVoice', localPlayer, localPlayer, false)
        removeEventHandler('onClientRender', root, a)
    end
end
setTimer(fLoandScreen, 2000, 1)
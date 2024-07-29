local sx , sy = guiGetScreenSize()

local cbrowser = guiCreateBrowser(5,sy-32.5 , 185 , 75 , true , true , false)
local browser  = guiGetBrowser(cbrowser)

if cbrowser then   
    addEventHandler('onClientBrowserCreated', cbrowser,function()
        loadBrowserURL(source , "http://mta/local/index.html")
    end)
end

function drawBrowser()                             
    local tempo = {}

    tempo['health'] = localPlayer.health
    tempo['armor']  = localPlayer.armor
    tempo['hunger'] = localPlayer:getData("hunger") or 100
    tempo['thirst'] = localPlayer:getData("thirst") or 100

    table.foreach(tempo , function(k,v)

        executeBrowserJavascript(browser , "document.getElementById('"..k.."').style.width = '"..v.."%';")

    end)     

end
setTimer(drawBrowser , 0 , 0)
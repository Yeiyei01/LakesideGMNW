--Credits to MAXIME And Alii
local ss, ww = guiGetScreenSize()
local x, y = (ss/1366), (ww/768)

  
local user = {} 
local pass = {} 
  

addEventHandler ("onClientResourceStart", getRootElement(), 
    function () 
	if getElementData(localPlayer,"loggedin") == 1 then
return
end
	if page == 1 then
        showCursor (true) 
    end 
    end 
) 

useredit = false
passedit = false

reguseredit = false
regpassedit = false
regrepassedit = false
regemailedit = false
  
function isClickingOnRectangle (button, state) 
-- outputChatBox('dasds')
if not (state == "down") then
return
end
if page == 1 then
    local position = isMouseInPosition (x*545,y*370	, x*300,y*40) 
    if position and (state == "down") and button == 'left' then 
	     passedit = false
         useredit = true
end 
    if not position and (state == "down") and button == 'left' then 
         useredit = false
end 

   local position2 = isMouseInPosition (x*545,y*425	, x*300,y*40) 
    if position2 and (state == "down") and button == 'left' then 
	    useredit = false
         passedit = true
end 
    if not position2 and (state == "down") and button == 'left' then 
         passedit = false
end
elseif page == 2 then
passedit = false
useredit = false
if isMouseInPosition (x*545,y*280	, x*300,y*40) and button == 'left' then
reguseredit = true
regpassedit = false
regrepassedit = false
regemailedit = false
elseif isMouseInPosition (x*545,y*330	, x*300,y*40) and button == 'left' then
reguseredit = false
regpassedit = true
regrepassedit = false
regemailedit = false
elseif isMouseInPosition (x*545,y*380	, x*300,y*40) and button == 'left' then
reguseredit = false
regpassedit = false
regrepassedit = true
regemailedit = false
elseif isMouseInPosition (x*545,y*430	, x*300,y*40) and button == 'left' then
reguseredit = false
regpassedit = false
regrepassedit = false
regemailedit = true
else
reguseredit = false
regpassedit = false
regrepassedit = false
regemailedit = false	
end 
end 
end 
addEventHandler ("onClientClick", getRootElement(), isClickingOnRectangle) 
  
  local reguser = {} 
local regpass = {} 
local regrepass = {} 
local regemail = {} 
  
function insertCharsInTable (charac) 
if #user ~= 25 and useredit then
    table.insert (user, charac)
elseif #pass ~= 25 and passedit then
    table.insert (pass, charac)
elseif #reguser ~= 25 and reguseredit then
    table.insert (reguser, charac)	
elseif #regpass ~= 25 and regpassedit then
    table.insert (regpass, charac)	
elseif #regrepass ~= 25 and regrepassedit then
    table.insert (regrepass, charac)
elseif #regemail ~= 25 and regemailedit then
    table.insert (regemail, charac)	
end 
end 
addEventHandler ("onClientCharacter", getRootElement(), insertCharsInTable)


function playerPressedKey(button, press)
    if (press) and button == 'backspace' and useredit then 
	    local lastNum = table.maxn (user) 
    table.remove (user, lastNum) 
	elseif (press) and button == 'backspace' and passedit then 
		    local lastNum = table.maxn (pass) 
    table.remove (pass, lastNum) 
	elseif (press) and button == 'backspace' and reguseredit then 
		    local lastNum = table.maxn (reguser) 
    table.remove (reguser, lastNum) 
	elseif (press) and button == 'backspace' and regpassedit then 
		    local lastNum = table.maxn (regpass) 
    table.remove (regpass, lastNum)
 	elseif (press) and button == 'backspace' and regrepassedit then 
		    local lastNum = table.maxn (regrepass) 
    table.remove (regrepass, lastNum)
	elseif (press) and button == 'backspace' and regemailedit then 
		    local lastNum = table.maxn (regemail) 
    table.remove (regemail, lastNum) 
 
end
end
addEventHandler("onClientKey", root, playerPressedKey)
  

  
local font = dxCreateFont('login-panel/font.ttf', y*15)
local font2 = dxCreateFont('login-panel/font.ttf', y*18)
page = 1

setTimer(function()
	if getElementData(localPlayer,"loggedin") == 1 then
	page = 0
return
end
local usern,passn = loadLoginFromXML()
table.insert (user, usern)	
table.insert (pass, passn)	
fadeCamera(true)
end,1000,1)

local randoms = math.random(1,6)

local rr ,rg, rb = math.random(0,255),math.random(0,255),math.random(0,255)
-- page = 2


rectinput = 0
shadowanim = 0
borobala = true
linetext = " "
setTimer(function()
if linetext == " " then
linetext = " |"
else
linetext = " "
end
end,200,0)
local bgMusic  = nil

alphauser = 0
alphapass = 0
alphareguser = 0
alpharegpass = 0
alpharegrepass = 0
alpharegemail = 0

addEventHandler('onClientRender',root,function()
if getElementData(localPlayer,"loggedin") == 1 and page == 0 then
return
end
if page == 1 then



	AliRect(0,0	, ss,ww, 0, tocolor(26, 25, 25,245	))
		local xs , ys , xx, yy = getCursorPosition()
	dxDrawImage(xs*10-10,ys*10-10,ss+30,ww+30, 'login-panel/'..randoms..'.jpg', 0, 0, 0, tocolor(255,255,255,100) )

    if shadowanim >= 255 then
     borobala = false
    elseif shadowanim <= 0 then
     borobala = true
    end	
	
    if borobala then
	 shadowanim = shadowanim + 1
	else
	 shadowanim = shadowanim - 1
	end
	
	
	dxDrawImage(0,0,ss,ww, 'login-panel/shadow.png', 0, 0, 0, tocolor(255,255,255,shadowanim) )	
	
	    dxDrawImage ( x*575, y*152, x*240, y*270, 'login-panel/logophonix.png', 0, 0, 0, tocolor(255,255,255,alpha) )
	
	    -- if ( bgMusic ) then
	
	if useredit then
	 if alphauser < 255 then
	   alphauser = alphauser + 5
	 end
	else
	  if alphauser > 0 then
	   alphauser = alphauser - 5
	 end
	end
	dxDrawImage(x*545,y*310	, x*300,y*90, 'login-panel/nor.png', 0, 0, 0, tocolor(255,255,255,alphauser) )	
	
	if useredit then
	AliRect(x*545,y*400	, x*300,y*2, 0, tocolor(255, 0, 0,alphauser	))  -- user
	else
	AliRect(x*545,y*400	, x*300,y*2, 0, tocolor(255, 255, 255,100	))  -- user
	end
	
	if passedit then
	 if alphapass < 255 then
	   alphapass = alphapass + 5
	 end
	else
	  if alphapass > 0 then
	   alphapass = alphapass - 5
	 end
	end
	dxDrawImage(x*545,y*373	, x*300,y*90, 'login-panel/nor.png', 0, 0, 0, tocolor(255,255,255,alphapass) )
	

	if passedit then
	AliRect(x*545,y*463	, x*300,y*2, 0, tocolor(255, 0, 0,alphauser	))  -- pass
	else
	AliRect(x*545,y*463	, x*300,y*2, 0, tocolor(255, 255, 255,100	))  -- pass
	end
	
			-- AliRect(x*545,y*425	, x*300,y*40, 10, tocolor(25, 25, 25,255	))  -- pass

	
	if useredit == false and table.concat (user, "") == '' then
    dxDrawText ( 'Username' , x*560, y*376, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
	elseif useredit == true then
	
    dxDrawText ( table.concat (user, "")..""..linetext , x*560, y*376, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
	else
	dxDrawText ( table.concat (user, "") , x*560, y*376, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
	end
	
	if passedit == false and table.concat (pass, "") == '' then
    dxDrawText ( 'Password' , x*560, y*431, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
	elseif passedit == true then
    dxDrawText ( table.concat (pass, ""):gsub(".", "•")..""..linetext , x*560, y*431, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
    else
	dxDrawText ( table.concat (pass, ""):gsub(".", "•") , x*560, y*431, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
	end	
	
	
	dxDrawImage(x*540,y*480	, x*160,y*60, 'login-panel/dokme.png', 0, 0, 0, tocolor(255,255,255,255) )
	dxDrawImage(x*690,y*480	, x*160,y*60, 'login-panel/dokme.png', 0, 0, 0, tocolor(255,255,255,255) )
    dxDrawText ( 'Login' , x*591, y*493, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font2, "left", "top", false, false, false, true )
    dxDrawText ( 'Register' , x*725, y*493, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font2, "left", "top", false, false, false, true )
elseif page == 2 then
	AliRect(0,0	, ss,ww, 0, tocolor(26, 25, 25,245	))
		local xs , ys , xx, yy = getCursorPosition()
	dxDrawImage(xs*10-10,ys*10-10,ss+30,ww+30, 'login-panel/'..randoms..'.jpg', 0, 0, 0, tocolor(255,255,255,100) )
	    if shadowanim >= 255 then
     borobala = false
    elseif shadowanim <= 0 then
     borobala = true
    end	
	
    if borobala then
	 shadowanim = shadowanim + 1
	else
	 shadowanim = shadowanim - 1
	end
	
	
	dxDrawImage(0,0,ss,ww, 'login-panel/shadow.png', 0, 0, 0, tocolor(255,255,255,shadowanim) )	
	    dxDrawImage ( x*575, y*60, x*240, y*270, 'login-panel/logophonix.png', 0, 0, 0, tocolor(255,255,255,alpha) )
	
		if reguseredit then
	 if alphareguser < 255 then
	   alphareguser = alphareguser + 5
	 end
	else
	  if alphareguser > 0 then
	   alphareguser = alphareguser - 5
	 end
	end
	dxDrawImage(x*545,y*230	, x*300,y*90, 'login-panel/nor.png', 0, 0, 0, tocolor(255,255,255,alphareguser) )
	
	if reguseredit then
	AliRect(x*545,y*320	, x*300,y*2, 0, tocolor(255, 0, 0,alphareguser	))  -- user
	else
	AliRect(x*545,y*320	, x*300,y*2, 0, tocolor(255, 255, 255,100	))  -- user
	end
	
	--===================================================
	if regpassedit then
	 if alpharegpass < 255 then
	   alpharegpass = alpharegpass + 5
	 end
	else
	  if alpharegpass > 0 then
	   alpharegpass = alpharegpass - 5
	 end
	end
	dxDrawImage(x*545,y*280	, x*300,y*90, 'login-panel/nor.png', 0, 0, 0, tocolor(255,255,255,alpharegpass) )
	
	if regpassedit then
	AliRect(x*545,y*370	, x*300,y*2, 0, tocolor(255, 0, 0,alpharegpass	))  -- pass
	else
	AliRect(x*545,y*370	, x*300,y*2, 0, tocolor(255, 255, 255,100	))  -- pass
	end
	
	--===================================================
	if regrepassedit then
	 if alpharegrepass < 255 then
	   alpharegrepass = alpharegrepass + 5
	 end
	else
	  if alpharegrepass > 0 then
	   alpharegrepass = alpharegrepass - 5
	 end
	end
	dxDrawImage(x*545,y*330	, x*300,y*90, 'login-panel/nor.png', 0, 0, 0, tocolor(255,255,255,alpharegrepass) )
		
	if regrepassedit then
	AliRect(x*545,y*420	, x*300,y*2, 0, tocolor(255, 0, 0,alpharegrepass	))  -- pass
	else
	AliRect(x*545,y*420	, x*300,y*2, 0, tocolor(255, 255, 255,100	))  -- pass
	end

	--===================================================
	if regemailedit then
	 if alpharegemail < 255 then
	   alpharegemail = alpharegemail + 5
	 end
	else
	  if alpharegemail > 0 then
	   alpharegemail = alpharegemail - 5
	 end
	end
	dxDrawImage(x*545,y*380	, x*300,y*90, 'login-panel/nor.png', 0, 0, 0, tocolor(255,255,255,alpharegemail) )
		
    if regemailedit then
	AliRect(x*545,y*470	, x*300,y*2, 0, tocolor(255, 0, 0,alpharegemail	))  -- pass
	else
	AliRect(x*545,y*470	, x*300,y*2, 0, tocolor(255, 255, 255,100	))  -- pass
	end



		
    -- AliRect(x*545,y*280	, x*300,y*40, 10, tocolor(26, 26, 26,255	))  -- user
    -- AliRect(x*545,y*330	, x*300,y*40, 10, tocolor(26, 26, 26,255	))  -- pass
    -- AliRect(x*545,y*380	, x*300,y*40, 10, tocolor(26, 26, 26,255	))  -- repass
    -- AliRect(x*545,y*430	, x*300,y*40, 10, tocolor(26, 26, 26,255	))  -- email



	

	
	if reguseredit == false and table.concat (reguser, "") == '' then
    dxDrawText ( 'Username' , x*560, y*286, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
	elseif reguseredit == true  then
    dxDrawText ( table.concat (reguser, "")..""..linetext , x*560, y*286, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
    else
	dxDrawText ( table.concat (reguser, "") , x*560, y*286, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )

    end
	
	if regpassedit == false and table.concat (regpass, "") == '' then
    dxDrawText ( 'Password' , x*560, y*336, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
	elseif regpassedit == true then
    dxDrawText ( table.concat (regpass, ""):gsub(".", "•")..""..linetext , x*560, y*336, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
    else
	dxDrawText ( table.concat (regpass, ""):gsub(".", "•") , x*560, y*336, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
    end	

	if regrepassedit == false and table.concat (regrepass, "") == '' then
    dxDrawText ( 'Re-Password' , x*560, y*386, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
	elseif regrepassedit == true then
    dxDrawText ( table.concat (regrepass, ""):gsub(".", "•")..""..linetext , x*560, y*386, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
    else
	dxDrawText ( table.concat (regrepass, ""):gsub(".", "•") , x*560, y*386, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
    end
	
	if regemailedit == false and table.concat (regemail, "") == '' then
    dxDrawText ( 'Email' , x*560, y*436, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
	elseif regemailedit == true then
    dxDrawText ( table.concat (regemail, "")..""..linetext , x*560, y*436, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
    else
	dxDrawText ( table.concat (regemail, "") , x*560, y*436, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font, "left", "top", false, false, false, true )
    end	
	
	dxDrawImage(x*540,y*480	, x*160,y*60, 'login-panel/dokme.png', 0, 0, 0, tocolor(255,255,255,255) )
	dxDrawImage(x*690,y*480	, x*160,y*60, 'login-panel/dokme.png', 0, 0, 0, tocolor(255,255,255,255) )
    dxDrawText ( 'Register' , x*574, y*493, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font2, "left", "top", false, false, false, true )
    dxDrawText ( 'Back' , x*742, y*494, x*100, y*100, tocolor ( 255, 255, 255, alpha ), 1, 1, font2, "left", "top", false, false, false, true )



end
end)


function button (button, state) 
if page == 1 then
    local login = isMouseInPosition (x*540,y*480	, x*160,y*60 )
    local gotoregister = isMouseInPosition (x*540,y*690	, x*160,y*60) 
if login and (state == "down") and button == 'left' then
startLoggingIn()
elseif isMouseInPosition (x*690,y*480	, x*160,y*60) and (state == "down") and button == 'left' then
page = 2
end
elseif page == 2 then

if isMouseInPosition (x*690,y*480	, x*160,y*60) and (state == "down") and button == 'left'  then 
page = 1
elseif isMouseInPosition (x*540,y*480	, x*160,y*60) and (state == "down") and button == 'left'  then 
registerValidation(table.concat (reguser, ""),table.concat (regpass, ""),table.concat (regrepass, ""),table.concat (regemail, ""))
end

end	
end 
addEventHandler ("onClientClick", getRootElement(), button) 





function AliRect(x, y, width, height, radius, color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+radius, y+radius, width-(radius*2), height-(radius*2), color, postGUI, subPixelPositioning)
    dxDrawCircle(x+radius, y+radius, radius, 180, 270, color, color, 16, 1, postGUI)
    dxDrawCircle(x+radius, (y+height)-radius, radius, 90, 180, color, color, 16, 1, postGUI)
    dxDrawCircle((x+width)-radius, (y+height)-radius, radius, 0, 90, color, color, 16, 1, postGUI)
    dxDrawCircle((x+width)-radius, y+radius, radius, 270, 360, color, color, 16, 1, postGUI)
    dxDrawRectangle(x, y+radius, radius, height-(radius*2), color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+radius, y+height-radius, width-(radius*2), radius, color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+width-radius, y+radius, radius, height-(radius*2), color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+radius, y, width-(radius*2), radius, color, postGUI, subPixelPositioning)
end

wdwLogin_Pannel = {}
tabPannel_Main = {}
tab_Login = {}
tab_Register = {}
local sWidth,sHeight = guiGetScreenSize()
local offsetY = 70

function open_log_reg_pannel()
		fadeCamera(false)
		local sound = 1
		local bgMusic = playSound ( "login-panel/"..randoms..".mp3", true )
		if sound == 1 then
			setSoundVolume(bgMusic, 1)
		else
			setSoundVolume(bgMusic, 0.7)
		end
		setElementData(localPlayer, "bgMusic", bgMusic )
		local welc = playSound("login-panel/welcome.mp3")
		--setSoundVolume(welc, 3)
		
if 1 == 1 then
return
end
	if not(isElement(wdwLogin_Pannel)) then

		local sounds = {".mp3 format", ".mp3 format"}
		local sound = 1
		local bgMusic = playSound ( ".mp3 format", true )
		if sound == 1 then
			setSoundVolume(bgMusic, 1)
		else
			setSoundVolume(bgMusic, 0.7)
		end
		setElementData(localPlayer, "bgMusic", bgMusic )
		showChat(false)
		-- showCursor(true)
		guiSetInputEnabled(true)
		local Width,Height = 350,350
		local X = (sWidth/2) - (Width/2)
		local Y = (sHeight/2) - (Height/2)


		Image = guiCreateStaticImage( 0, 0, 1920, 1200, "/login-panel/login_bg.jpeg", false )
		guiSetEnabled (Image, false)

		Login_img = guiCreateStaticImage( X, Y + 120, 350, 350, "/login-panel/login_window.png", false )
		guiSetEnabled (Login_img, false)

		--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		bLogin = guiCreateStaticImage( X + 23, Y + 349, 301, 44, "/login-panel/login.png", false )
		addEventHandler("onClientGUIClick",bLogin,onClickBtnLogin)
		addEventHandler( "onClientMouseEnter",bLogin,LoginSH)
		addEventHandler("onClientMouseLeave",bLogin,SErem)

		tUsername = guiCreateEdit(X + 20,Y + 220,310,35,"",false)
		tPassword = guiCreateEdit(X + 20,Y + 295,310,35,"",false)
		guiEditSetMaxLength ( tUsername,25)
		guiEditSetMaxLength ( tPassword,25)
		guiEditSetMasked ( tPassword, true )
		guiSetProperty( tPassword, 'MaskCodepoint', '8226' )

		addEventHandler("onClientGUIChanged", tUsername, resetLogButtons)
		addEventHandler("onClientGUIChanged", tPassword, resetLogButtons)
		addEventHandler( "onClientGUIAccepted", tUsername, startLoggingIn)
		addEventHandler( "onClientGUIAccepted", tPassword, startLoggingIn)

		lbl_about_legth = guiCreateLabel(142,42,184,18,"",false)
		guiLabelSetColor(lbl_about_legth,253,255,68)
		guiLabelSetVerticalAlign(lbl_about_legth,"center")
		guiLabelSetHorizontalAlign(lbl_about_legth,"center",false)

		checkbox_save = guiCreateCheckBox(X + 230,Y + 275,100,20,"(Remember me!)",false,false)
		guiSetFont(checkbox_save,"default-small")

		login_tab_error_msg = guiCreateLabel(X,Y + 325,364,31,"Error_login_tab",false)
		guiLabelSetColor(login_tab_error_msg,255,0,0)
		guiLabelSetVerticalAlign(login_tab_error_msg,"center")
		guiLabelSetHorizontalAlign(login_tab_error_msg,"center",false)
		guiSetFont(login_tab_error_msg,"default-bold-small")

		login_tab_authen_msg = guiCreateLabel(X,Y + 325,364,31,"Authen_login_tab",false)
		guiLabelSetColor(login_tab_authen_msg,0,255,0)
		guiLabelSetVerticalAlign(login_tab_authen_msg,"center")
		guiLabelSetHorizontalAlign(login_tab_authen_msg,"center",false)
		guiSetFont(login_tab_authen_msg,"default-bold-small")


		--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		shSignup = guiCreateStaticImage( X + 23, Y + 401, 301, 44, "/login-panel/signup.png", false ) -- A gomb
		addEventHandler("onClientGUIClick",shSignup,OnBtnRegister)
		addEventHandler( "onClientMouseEnter",shSignup,SignupSH)
		addEventHandler("onClientMouseLeave",shSignup,SErem)

		lbl_reg_top_info = guiCreateLabel(X - 70,Y + 388+offsetY,500,30,"",false)
		guiLabelSetColor(lbl_reg_top_info,255,234,55)
		guiLabelSetVerticalAlign(lbl_reg_top_info,"center")
		guiLabelSetHorizontalAlign(lbl_reg_top_info,"center",false)
		guiSetFont(lbl_reg_top_info,"default-bold-small")
		guiSetVisible(lbl_reg_top_info,false)

		edit_account_name = guiCreateEdit(X + 20,Y + 215,310,35,"",false)
		guiEditSetMaxLength ( edit_account_name,25)
		guiSetVisible(edit_account_name,false)
		addEventHandler("onClientGUIChanged", edit_account_name, resetRegButtons)

		edit__reg_tab_password = guiCreateEdit(X + 20,Y + 290,310,35,"",false)
		guiEditSetMaxLength ( edit__reg_tab_password,25)
		guiEditSetMasked ( edit__reg_tab_password, true )
		guiSetProperty(edit__reg_tab_password, 'MaskCodepoint', '8226')
		guiSetVisible(edit__reg_tab_password,false)
		addEventHandler("onClientGUIChanged", edit__reg_tab_password, resetRegButtons)

		edit__reg_tab_Repassword = guiCreateEdit(X + 20,Y + 365,310,35,"",false)
		guiEditSetMaxLength ( edit__reg_tab_Repassword,25)
		guiEditSetMasked ( edit__reg_tab_Repassword, true )
		guiSetProperty(edit__reg_tab_Repassword, 'MaskCodepoint', '8226')
		guiSetVisible(edit__reg_tab_Repassword,false)
		guiSetEnabled (edit__reg_tab_Repassword, true)
		addEventHandler("onClientGUIChanged", edit__reg_tab_Repassword, resetRegButtons)

		edit__reg_tab_email = guiCreateEdit(X + 20,Y + 435,310,35,"",false)
		guiEditSetMaxLength ( edit__reg_tab_email,100)
		--guiEditSetMasked ( edit__reg_tab_email, true )
		guiSetVisible(edit__reg_tab_email,false)
		guiSetEnabled (edit__reg_tab_email, true)
		addEventHandler("onClientGUIChanged", edit__reg_tab_email, resetRegButtons)

		--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		shRegister2 = guiCreateStaticImage( X + 182, Y + 401+6+offsetY, 143, 45, "/login-panel/register.png", false )--guiCreateStaticImage( X + 23, Y + 409, 301, 44, "/login-panel/register2.png", false )
		addEventHandler("onClientGUIClick",shRegister2,onClickBtnRegister)
		addEventHandler( "onClientMouseEnter",shRegister2,Register2SH)
		addEventHandler("onClientMouseLeave",shRegister2,SErem)
		guiSetVisible(shRegister2,false)

		shCancel = guiCreateStaticImage( X + 23, Y + 401+6+offsetY, 143, 45, "/login-panel/cancel.png", false ) -- A gomb
		addEventHandler("onClientGUIClick",shCancel,onClickCancel)
		addEventHandler( "onClientMouseEnter",shCancel,CancelSH)
		addEventHandler("onClientMouseLeave",shCancel,SErem)
		guiSetVisible(shCancel,false)

		showCursor(true)

		guiSetText(login_tab_error_msg, "")
		guiSetText(login_tab_authen_msg, "")


		local username, password = loadLoginFromXML()
		if username ~= "" then
			guiCheckBoxSetSelected ( checkbox_save, true )
			guiSetText ( tUsername, tostring(username))
			guiSetText ( tPassword, tostring(password))
		else
			guiCheckBoxSetSelected ( checkbox_save, false )
			guiSetText ( tUsername, tostring(username))
			guiSetText ( tPassword, tostring(password))
		end
	end
end

function LoginSH ()
	guiStaticImageLoadImage(bLogin, "/login-panel/sh.png" )
end

function SignupSH ()
	guiStaticImageLoadImage(shSignup, "/login-panel/signup2.png" )
end

function Register2SH ()
	guiStaticImageLoadImage(shRegister2, "/login-panel/shr.png" )
end

function CancelSH ()
	guiStaticImageLoadImage(shCancel, "/login-panel/cancel2.png" )
end

function SErem ()
guiStaticImageLoadImage(bLogin, "/login-panel/login.png" )
guiStaticImageLoadImage(shSignup, "/login-panel/signup.png" )
guiStaticImageLoadImage(shRegister2, "/login-panel/register.png" )
guiStaticImageLoadImage(shCancel, "/login-panel/cancel.png" )
end

--[[
function start_cl_resource()
	open_log_reg_pannel()
end
addEventHandler("onClientResourceStart",getResourceRootElement(getThisResource()),start_cl_resource)
]]

function loadLoginFromXML()
	local xml_save_log_File = xmlLoadFile ("/login-panel/rememberme.xml")
    if not xml_save_log_File then
        xml_save_log_File = xmlCreateFile("/login-panel/rememberme.xml", "login")
    end
    local usernameNode = xmlFindChild (xml_save_log_File, "username", 0)
    local passwordNode = xmlFindChild (xml_save_log_File, "password", 0)
    local username, password = usernameNode and exports.global:decryptString(xmlNodeGetValue(usernameNode), localPlayer) or "", passwordNode and exports.global:decryptString(xmlNodeGetValue(passwordNode), localPlayer) or ""
    xmlUnloadFile ( xml_save_log_File )
    return username, password
end

function saveLoginToXML(username, password)
    local xml_save_log_File = xmlLoadFile ("/login-panel/rememberme.xml")
    if not xml_save_log_File then
        xml_save_log_File = xmlCreateFile("/login-panel/rememberme.xml", "login")
    end
	if (username ~= "") then
		local usernameNode = xmlFindChild (xml_save_log_File, "username", 0)
		local passwordNode = xmlFindChild (xml_save_log_File, "password", 0)
		if not usernameNode then
			usernameNode = xmlCreateChild(xml_save_log_File, "username")
		end
		if not passwordNode then
			passwordNode = xmlCreateChild(xml_save_log_File, "password")
		end
		xmlNodeSetValue (usernameNode, exports.global:encryptString(username, localPlayer))
		xmlNodeSetValue (passwordNode, exports.global:encryptString(password, localPlayer))
	end
    xmlSaveFile(xml_save_log_File)
    xmlUnloadFile (xml_save_log_File)
end
addEvent("saveLoginToXML", true)
addEventHandler("saveLoginToXML", getRootElement(), saveLoginToXML)



function resetSaveXML()
	local xml_save_log_File = xmlLoadFile ("/login-panel/rememberme.xml")
    if xml_save_log_File then
		fileDelete ("/login-panel/rememberme.xml")
		xmlUnloadFile ( xml_save_log_File )
	end
end
addEvent("resetSaveXML", true)
addEventHandler("resetSaveXML", getRootElement(), resetSaveXML)

function onClickBtnLogin(button,state)
	if(button == "left" and state == "up") then
		if (source == bLogin) then
			-- startLoggingIn()
		end
	end
end


local loginClickTimer = nil
function startLoggingIn()
	if not getElementData(localPlayer, "clickedLogin") then
		setElementData(localPlayer, "clickedLogin", true)
		if isTimer(loginClickTimer) then
			killTimer(loginClickTimer)
		end
		loginClickTimer = setTimer(setElementData, 1000, 1, localPlayer, "clickedLogin", nil)

		username = table.concat (user, "")
		password = table.concat (pass, "")
		playSoundFrontEnd ( 6 )
		--guiSetEnabled(bLogin, false)
		--guiSetAlpha(bLogin, 0.3)
		triggerServerEvent("accounts:login:attempt", getLocalPlayer(), username, password, false)
		-- authen_msg("Login", "Sending request to server..")
		exports["[Ph]Infobox"]:addNotification( "Dar Hal Gereftan Ettelaat Az DataBase...", "info")
		stopSmoothMoveCamera()
		-- triggerEvent("addBox",localPlayer,"info","Dar Hal Gereftan Ettelaat Az DataBase...")
	else
		-- exports.['abinfo']:addBox('info','Dar Hal Gereftan Ettelaat Az DataBase...')
	end
end

function hideLoginPanel(keepBG)
	guiSetVisible(shSignup, false)
	guiSetVisible(bLogin, false)
	guiSetVisible(tPassword, false)
	guiSetVisible(tUsername, false)
	guiSetVisible(checkbox_save, false)
	guiSetVisible(Login_img, false)
	guiSetVisible(login_tab_authen_msg, false)
	showCursor(true)
	if not keepBG then
		guiSetVisible(Image, false)
		showChat(true)
	end

	removeEventHandler("onClientGUIClick",bLogin,onClickBtnLogin)
end
addEvent("hideLoginPanel", true)
addEventHandler("hideLoginPanel", getRootElement(), hideLoginPanel)


function OnBtnRegister ()
	switchToRegisterPanel() -- Disabled registration
	playSoundFrontEnd ( 2 )
	--guiSetText(login_tab_error_msg, "Please register on Owlgaming.net/register.php")
end

function onClickCancel()
	switchToLoginPanel()
	playSoundFrontEnd ( 2 )
end

function switchToLoginPanel()
	guiSetText(login_tab_error_msg, "")
	guiSetText(login_tab_authen_msg, "")
	guiSetText(lbl_reg_top_info, "")

	guiSetSize(Login_img, 350,350, false)
	guiStaticImageLoadImage(Login_img, "login-panel/Login_window.png" )
	guiSetVisible(shRegister2, false)
	guiSetVisible(shCancel,false)
	guiSetVisible(lbl_reg_top_info,false)
	guiSetVisible(edit__reg_tab_Repassword,false)
	guiSetEnabled (edit__reg_tab_Repassword, false)
	guiSetVisible(edit__reg_tab_email,false)
	guiSetEnabled (edit__reg_tab_email, false)
	guiSetVisible(edit__reg_tab_password,false)
	guiSetVisible(edit_account_name,false)
	guiSetVisible(shSignup, true)
	guiSetVisible(bLogin, true)
	guiSetVisible(tPassword, true)
	guiSetVisible(tUsername, true)
	guiSetVisible(checkbox_save, true)
	showCursor(true)
end

function switchToLoginPanel()
	guiSetText(login_tab_error_msg, "")
	guiSetText(login_tab_authen_msg, "")
	guiSetText(lbl_reg_top_info, "")

	guiSetSize(Login_img, 350,350, false)
	guiStaticImageLoadImage(Login_img, "login-panel/Login_window.png" )
	guiSetVisible(shRegister2, false)
	guiSetVisible(shCancel,false)
	guiSetVisible(lbl_reg_top_info,false)
	guiSetVisible(edit__reg_tab_Repassword,false)
	guiSetEnabled (edit__reg_tab_Repassword, false)
	guiSetVisible(edit__reg_tab_email,false)
	guiSetEnabled (edit__reg_tab_email, false)
	guiSetVisible(edit__reg_tab_password,false)
	guiSetVisible(edit_account_name,false)
	guiSetVisible(shSignup, true)
	guiSetVisible(bLogin, true)
	guiSetVisible(tPassword, true)
	guiSetVisible(tUsername, true)
	guiSetVisible(checkbox_save, true)
	showCursor(true)
	if sHeight <= 600 and getElementData(localPlayer, "switched") then
		local x, y = guiGetPosition(Login_img, false)
		guiSetPosition(Login_img, x, y+120, false)
	end
end

function switchToRegisterPanel()
	guiSetText(login_tab_error_msg, "")
	guiSetText(login_tab_authen_msg, "")
	guiSetText(lbl_reg_top_info, "")

	guiSetSize(Login_img, 350,421, false)
	guiStaticImageLoadImage(Login_img, "login-panel/register_window.png" )
	guiSetVisible(shRegister2, true)
	guiSetVisible(shCancel,true)
	guiSetVisible(lbl_reg_top_info,true)
	guiSetVisible(edit__reg_tab_Repassword,true)
	guiSetEnabled (edit__reg_tab_Repassword, true)
	guiSetVisible(edit__reg_tab_password,true)
	guiSetVisible(edit_account_name,true)
	guiSetVisible(edit__reg_tab_email,true)
	guiSetEnabled (edit__reg_tab_email, true)
	guiSetVisible(shSignup, false)
	guiSetVisible(bLogin, false)
	guiSetVisible(tPassword, false)
	guiSetVisible(tUsername, false)
	guiSetVisible(checkbox_save, false)
	showCursor(true)
	if sHeight <= 600 then
		local x, y = guiGetPosition(Login_img, false)
		guiSetPosition(Login_img, x, y-120, false)
		if not getElementData(localPlayer, "switched") then
			x, y = guiGetPosition(shRegister2, false)
			guiSetPosition(shRegister2, x, y-120, false)
			x, y = guiGetPosition(shCancel, false)
			guiSetPosition(shCancel, x, y-120, false)
			x, y = guiGetPosition(lbl_reg_top_info, false)
			guiSetPosition(lbl_reg_top_info, x, y-120, false)
			x, y = guiGetPosition(edit__reg_tab_Repassword, false)
			guiSetPosition(edit__reg_tab_Repassword, x, y-120, false)
			x, y = guiGetPosition(edit__reg_tab_password, false)
			guiSetPosition(edit__reg_tab_password, x, y-120, false)
			x, y = guiGetPosition(edit_account_name, false)
			guiSetPosition(edit_account_name, x, y-120, false)
			x, y = guiGetPosition(edit__reg_tab_email, false)
			guiSetPosition(edit__reg_tab_email, x, y-120, false)
		end
	end
	setElementData(localPlayer, "switched", true)
end

function onClickBtnRegister(button,state)


	--playSoundFrontEnd ( 6 )
	guiSetEnabled(shRegister2, false)
	guiSetAlpha(shRegister2, 0.3)
end

function registerValidation(username, password, passwordConfirm, email)
	if not username or username == "" or not password or password == "" or not passwordConfirm or passwordConfirm == "" or not email or email == ""  then
		exports["[Ph]Infobox"]:addNotification( "Lotfan Hame Ghesmat Hara Por Konid", "error")
		-- guiLabelSetColor ( lbl_reg_top_info, 255, 0, 0 )
		-- playSoundFrontEnd ( 4 )
	elseif string.len(username) < 3 then
		exports["[Ph]Infobox"]:addNotification( "Username Nemitavand Kamtar 3 Harf Basad", "error")
		-- guiLabelSetColor ( lbl_reg_top_info, 255, 0, 0 )
		-- playSoundFrontEnd ( 4 )
	elseif string.len(username) > 20 then
		exports["[Ph]Infobox"]:addNotification(  "Username Nemitavand Bishtar 20 Harf Bashad ", "error")
		-- guiLabelSetColor ( lbl_reg_top_info, 255, 0, 0 )
		-- playSoundFrontEnd ( 4 )
	elseif string.find(password, "'") or string.find(password, '"') then
		exports["[Ph]Infobox"]:addNotification(  "Password must not contain ' or "..'"', "error")
		-- guiLabelSetColor ( lbl_reg_top_info, 255, 0, 0 )
		-- playSoundFrontEnd ( 4 )
	elseif string.len(password) < 8 then
		exports["[Ph]Infobox"]:addNotification(  "Password must be 8 characters or longer.", "error")
		-- guiLabelSetColor ( lbl_reg_top_info, 255, 0, 0 )
		-- playSoundFrontEnd ( 4 )
	elseif password ~= passwordConfirm then
		exports["[Ph]Infobox"]:addNotification(  "Passwords mismatched!", "error")
		-- guiLabelSetColor ( lbl_reg_top_info, 255, 0, 0 )
		-- playSoundFrontEnd ( 4 )
	elseif string.match(username,"%W") then
		exports["[Ph]Infobox"]:addNotification(  "\"!@#$\"%'^&*()\" are not allowed in username.", "error")
		-- guiLabelSetColor ( lbl_reg_top_info, 255, 0, 0 )
		-- playSoundFrontEnd ( 4 )
	else
		local validEmail, reason = exports.global:isEmail(email)
		if not validEmail then
		exports["[Ph]Infobox"]:addNotification(  reason, "error")
			-- guiSetText(lbl_reg_top_info, reason)
			-- guiLabelSetColor ( lbl_reg_top_info, 255, 0, 0 )
			-- playSoundFrontEnd ( 4 )
		else
			triggerServerEvent("accounts:register:attempt",getLocalPlayer(),username,password,passwordConfirm, email)
			exports["[Ph]Infobox"]:addNotification(  "Sending request to server.", "info")
		end
	end
end

function registerComplete(username, pw, email)
page = 1
exports["[Ph]Infobox"]:addNotification( "Account Sakhte Shod Ba User "..username.." ! Vared Shavid", "success")
end
addEvent("accounts:register:complete",true)
addEventHandler("accounts:register:complete",getRootElement(),registerComplete)

function displayRegisterConpleteText(username)
	local GUIEditor = {
	    button = {},
	    window = {},
	    label = {}
	}

	local extend = 50
	local yoffset = 200
	GUIEditor.window[1] = guiCreateWindow(667, 381, 357, 189+extend, "Congratulations! Account has been successfully created!", false)
	exports.global:centerWindow(GUIEditor.window[1])
	local x, y = guiGetPosition(GUIEditor.window[1], false)
	guiSetPosition(GUIEditor.window[1], x, y+yoffset, false)
	guiSetAlpha(GUIEditor.window[1], 1)
    guiWindowSetMovable(GUIEditor.window[1], false)
    guiWindowSetSizable(GUIEditor.window[1], false)
    guiSetProperty(GUIEditor.window[1], "AlwaysOnTop", "True")

    GUIEditor.label[1] = guiCreateLabel(8, 25, 339, 121+extend, "Your Trinity MTA account for '"..username.."' is almost ready for action!\n\nPlease visit our website for any problems:\nhttp://trinitygaming.netne.net"..username.."\n\nSincerely, Trinity  Community TrinityGaming Development Team\"", false, GUIEditor.window[1])
    guiLabelSetHorizontalAlign(GUIEditor.label[1], "left", true)
    GUIEditor.button[1] = guiCreateButton(10, 153+extend, 337, 26, "Click here to finish and copy the website to clipboard", false, GUIEditor.window[1])
    addEventHandler("onClientGUIClick", GUIEditor.button[1], function()
    	if source == GUIEditor.button[1] then
    		if isElement(GUIEditor.window[1]) then
    			destroyElement(GUIEditor.window[1])
    			GUIEditor = nil
    			switchToLoginPanel()
    			setClipboard("http://trinitygaming.netne.net"..username)
    		end
    	else
    		-- cancelEvent()
    	end
    end)
end

function Error_msg(Tab, Text)
showCursor(true)
	if Tab == "Login" then
		playSoundFrontEnd ( 4)
		guiSetVisible(shSignup, true)
		guiSetVisible(bLogin, true)
		guiSetVisible(tPassword, true)
		guiSetVisible(tUsername, true)
		guiSetVisible(checkbox_save, true)
		guiSetVisible(Login_img, true)

		guiSetText(login_tab_authen_msg, "")
		guiSetText(login_tab_error_msg, tostring(Text))
		--setTimer(function() guiSetText(login_tab_error_msg, "") end,3000,1)
	else
		playSoundFrontEnd ( 4)
		guiSetText(lbl_reg_top_info, tostring(Text))
		guiLabelSetColor ( lbl_reg_top_info, 255, 0, 0 )
	end
end
addEvent("set_warning_text",true)
addEventHandler("set_warning_text",getRootElement(),Error_msg)

function authen_msg(Tab, Text)
showCursor(true)
	if Tab == "Login" then
		--playSoundFrontEnd ( 12)
		guiSetVisible(shSignup, true)
		guiSetVisible(bLogin, true)
		guiSetVisible(tPassword, true)
		guiSetVisible(tUsername, true)
		guiSetVisible(checkbox_save, true)
		guiSetVisible(Login_img, true)

		guiSetText(login_tab_error_msg, "")
		guiSetText(login_tab_authen_msg, tostring(Text))
		--setTimer(function() guiSetText(login_tab_authen_msg, "") end,3000,1)
	else
		--playSoundFrontEnd ( 12 )
		guiSetText(lbl_reg_top_info, tostring(Text))
		guiLabelSetColor ( lbl_reg_top_info, 255, 255, 255 )
	end
end
addEvent("set_authen_text",true)
addEventHandler("set_authen_text",getRootElement(),authen_msg)


function hideLoginWindow()
	showCursor(false)
	showChat(true)
	page = 0
	-- hideLoginPanel()
	-- removeEventHandler("onClientGUIClick",bLogin,onClickBtnLogin)
end
addEvent("hideLoginWindow", true)
addEventHandler("hideLoginWindow", getRootElement(), hideLoginWindow)

addCommandHandler("cur",function()
	showCursor(false)

end)


function resetRegButtons ()
	guiSetEnabled(shRegister2, true)
	guiSetAlpha(shRegister2, 1)
end

function resetLogButtons()
	guiSetEnabled(bLogin, true)
	guiSetAlpha(bLogin, 1)
end

function isMouseInPosition ( x, y, width, height ) 
    if ( not isCursorShowing ( ) ) then 
        return false 
    end 
  
    local sx, sy = guiGetScreenSize ( ) 
    local cx, cy = getCursorPosition ( ) 
    local cx, cy = ( cx * sx ), ( cy * sy ) 
    if ( cx >= x and cx <= x + width ) and ( cy >= y and cy <= y + height ) then 
        return true 
    else 
        return false 
    end 
end 




local sm = {}
sm.moov = 0

local function removeCamHandler()
	if(sm.moov == 1)then
		sm.moov = 0
	end
end

local start
local animTime
local tempPos = {{},{}}
local tempPos2 = {{},{}}

local sm = {}
sm.moov = 0
sm.object1,sm.object2 = nil,nil
sm.timer1,sm.timer2,sm.timer3 = nil,nil,nil
 
local function removeCamHandler()
	if(sm.moov == 1)then
		sm.moov = 0
	end
end
 
local function camRender()
	if (sm.moov == 1) then
		local x1,y1,z1 = getElementPosition(sm.object1)
		local x2,y2,z2 = getElementPosition(sm.object2)
		setCameraMatrix(x1,y1,z1,x2,y2,z2)
	end
end
addEventHandler("onClientPreRender",root,camRender)
 
function smoothMoveCamera(x1,y1,z1,x1t,y1t,z1t,x2,y2,z2,x2t,y2t,z2t,time)
	if(sm.moov == 1)then return false end
	sm.object1 = createObject(1337,x1,y1,z1)
	sm.object2 = createObject(1337,x1t,y1t,z1t)
	setElementAlpha(sm.object1,0)
	setElementAlpha(sm.object2,0)
	setObjectScale(sm.object1,0.01)
	setObjectScale(sm.object2,0.01)
	moveObject(sm.object1,time,x2,y2,z2,0,0,0,"InOutQuad")
	moveObject(sm.object2,time,x2t,y2t,z2t,0,0,0,"InOutQuad")
	sm.moov = 1
	sm.timer1 = setTimer(removeCamHandler,time,1)
	sm.timer2 = setTimer(destroyElement,time,1,sm.object1)
	sm.timer3 = setTimer(destroyElement,time,1,sm.object2)
	return true
end

function stopSmoothMoveCamera()
	if isTimer( sm.timer1 ) then killTimer( sm.timer1 ) end
	if isTimer( sm.timer2 ) then killTimer( sm.timer2 ) end
	if isTimer( sm.timer3 ) then killTimer( sm.timer3 ) end
	if isElement( sm.object1 ) then destroyElement( sm.object1 ) end
	if isElement( sm.object2 ) then destroyElement( sm.object2 ) end
	removeCamHandler()
end
  

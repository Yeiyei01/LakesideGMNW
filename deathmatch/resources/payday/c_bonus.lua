----- client ----
local characters = "1,2,3,4,5,6,7,8,9,0,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,R,S,Q,T,U,V,X,W,Z"
local komuts = split (characters, ",")
local bonusRenkler = {
	{0, 255, 0},
	{204, 255, 0},
	{255, 0, 0}
}

local saat,dakika = 0,0
local dakikaTick = getTickCount()
local odulAl = false -- saat dolduğunda bunu true yapıyom, renderda eğer trueysa süreyi arttırmıyom, ödülü aldığında false yapıyom süre devam ediyo
local komut = nil

addEventHandler("onClientRender", root, function()
	local suan = getTickCount()
	if suan - dakikaTick >= 1000*60 and not odulAl then -- eğer ödül alınmicaksa 
		dakika = dakika + 1
		dakikaTick = suan
		if dakika >= 60 then
			dakika = 0 
			saat = saat +1
			odulAl = true -- ödülün alınması gerekiyo, yani true
			oduluVer() -- ödülleri alabilecek
		end	
	end	
end)


function oduluVer() -- ödülün alınıp alınamaycağını ayarlar
	komut = komuts[math.random(#komuts)]..komuts[math.random(#komuts)]..komuts[math.random(#komuts)]..komuts[math.random(#komuts)]..komuts[math.random(#komuts)]
	local r,g,b = unpack(bonusRenkler[math.random(#bonusRenkler)])
	outputChatBox("#28e000[BONUS]#ffffffPayday Lake#FF8000sideRP#ffffff: El codigo es #408E03[#408E03"..komut.."#408E03]#ffffff - usa /bonuspayday <Codigo> para reclamar tu premio.", r, g, b, true)
	setTimer(odulGeriSayim, 1000*60,1) -- 60 saniye sonra iptal
end

function odulGeriSayim()
	komut = nil
	odulAl = false -- geri sayimi aktif ettik
	outputChatBox("#28e000[BONUS]#8E0303 Desafortunadamente, te perdiste el bono.", 255, 0, 0, true)	
end

addCommandHandler("bonuspayday", function(_,yazilan)
	if komut then
		if yazilan and yazilan == komut then
			triggerServerEvent("BonusPara:ÖdülVer",localPlayer) -- server trigger
			komut = nil
			odulAl = false -- geri sayimi aktif ettik
		else
			outputChatBox ("#28e000[BONUS]#8E0303Ingresaste un código incorrecto.", 255, 0, 0, true)
		end
	end	
end)

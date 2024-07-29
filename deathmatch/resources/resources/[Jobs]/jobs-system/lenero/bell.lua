bellssslmissie1stations = {{-1059, -1023, 129},{-1058, -1013, 129},{-1057, -1002, 129},{-1056, -991, 129},{-1056, -981, 129},{-1055, -971, 129},{-1036, -973, 129},{-1037, -983, 129},{-1038, -994, 129},{-1038, -1004, 129},{-1039, -1015, 129},{-1040, -1025, 129}}
nsttax = table.maxn(bellssslmissie1stations)

addEvent("havebellssslmissie1Job",true)
function havebellssslmissie1Job()
setElementData(source,"bellssslmissie1",true)
end
addEventHandler("havebellssslmissie1Job",root,havebellssslmissie1Job)

addEvent("bellssslmissie1Route",true)
function bellssslmissie1Route(source)
neraxxwr = math.random(1,nsttax)
for itaxxc,pos in ipairs(bellssslmissie1stations) do
if itaxxc == neraxxwr then
triggerClientEvent(source,"bellssslmissie1Route",root,pos)

end
end
end
addEventHandler("bellssslmissie1Route",root,bellssslmissie1Route)

--function want(source)
--local want = math.random( 1,2 )
--if want == 1 then 
--local wlevel = getPlayerwanteddLevel( source )
--if wlevel < 6 then
--setPlayerwanteddLevel(source,wlevel+1 )
--elseif want == 2 then
--end
--end
--end
--addEvent("wantedd",true)
--addEventHandler("wantedd",root,want)

--function wasted()
--if getElementData(source, "bellssslmissie1") then
--setElementData(source,"bellssslmissie1",false)
--triggerClientEvent(source,"fffcheck",source)
--else
--end
--end
--addEventHandler ( "onPlayerWasted", getRootElement(), wasted )



addEvent( "givebellssslmissie1PlayerSomeMoney", true )
addEventHandler( "givebellssslmissie1PlayerSomeMoney", getRootElement(),
function ( amount )
    givePlayerMoney(source, tonumber(amount))
	x,y,z = getElementPosition( source )

end
)







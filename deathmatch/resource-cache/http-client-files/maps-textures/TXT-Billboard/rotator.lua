-- SparroW MTA : https://sparrow-mta.blogspot.com
-- Facebook :https://www.facebook.com/sparrowgta/
-- OBJE ID : 2289

--Etha's rotating billboard v1.0
--skype: nordbow

--default model ID
local modelID=2289
--textures format 16x9
local et1=dxCreateTexture("TXT-Billboard/bilbo1.png")
local et2=dxCreateTexture("TXT-Billboard/bilbo2.png")
local et3=dxCreateTexture("TXT-Billboard/bilbo3.png")
--edit these values as u wish
local timeWait=5
local timeRotate=0.6
local timeNext=0.05

function startBillboard()
	engineImportTXD(engineLoadTXD("TXT-Billboard/bilbo.txd"), modelID)
	engineReplaceModel(engineLoadDFF("TXT-Billboard/bilbo.dff"), modelID)
	engineReplaceCOL(engineLoadCOL("TXT-Billboard/bilbo.col"), modelID)
	
	shader=dxCreateShader("TXT-Billboard/rotator.fx")
	shader:setValue("tex1",et1)
	shader:setValue("tex2",et2)
	shader:setValue("tex3",et3)
	
	shader:setValue("timeNext",timeNext)
	shader:setValue("p", timeWait+timeRotate)
	shader:setValue("pw",timeWait/(timeWait+timeRotate))
	shader:setValue("pt",timeRotate/(timeWait+timeRotate))

	shader:applyToWorldTexture("bilbo_a")
end
addEventHandler ( "onClientResourceStart",  getResourceRootElement(getThisResource()), startBillboard )

local timeLag=0
local ticker = getTickCount()

addEventHandler ( "onClientPreRender", getRootElement(), 
function()
	timeLag = timeLag + (getGameSpeed()-1)*(getTickCount()-ticker)
	ticker = getTickCount()
	shader:setValue("timeLag",timeLag/1000)
end)




--c2h5oh
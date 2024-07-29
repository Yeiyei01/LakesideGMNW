local localPlayer = getLocalPlayer()

guiIntroLabel1 = nil
guiIntroProceedButton = nil
guiIntroWindow = nil
guiQuestionLabel = nil
guiQuestionAnswer1Radio = nil
guiQuestionAnswer2Radio = nil
guiQuestionAnswer3Radio = nil
guiQuestionWindow = nil
guiFinalPassTextLabel = nil
guiFinalFailTextLabel = nil
guiFinalRegisterButton = nil
guiFinalCloseButton = nil
guiFinishWindow = nil

-- variable for the max number of possible questions
local NoQuestions = 10
local NoQuestionToAnswer = 7
local correctAnswers = 0
local passPercent = 80
		
selection = {}

-- functon makes the intro window for the quiz
function createlicenseTestIntroWindow()
	
	showCursor(true)
	
	local screenwidth, screenheight = guiGetScreenSize ()
	
	local Width = 450
	local Height = 200
	local X = (screenwidth - Width)/2
	local Y = (screenheight - Height)/2
	
	guiIntroWindow = guiCreateWindow ( X , Y , Width , Height , "Driving Theory Test" , false )
	
	guiCreateStaticImage (0.35, 0.1, 0.3, 0.2, "banner.png", true, guiIntroWindow)
	
	guiIntroLabel1 = guiCreateLabel(0, 0.3,1, 0.5, [[You will now proceed with the driving theory test. You will
be given seven questions based on basic driving theory. You must score
a minimum of 80 percent to pass.

Good luck.]], true, guiIntroWindow)
	
	guiLabelSetHorizontalAlign ( guiIntroLabel1, "center", true )
	guiSetFont ( guiIntroLabel1,"default-bold-small")
	
	guiIntroProceedButton = guiCreateButton ( 0.4 , 0.75 , 0.2, 0.1 , "Start Test" , true ,guiIntroWindow)
	
	addEventHandler ( "onClientGUIClick", guiIntroProceedButton,  function(button, state)
		if(button == "left" and state == "up") then
		
			-- start the quiz and hide the intro window
			startLicenceTest()
			guiSetVisible(guiIntroWindow, false)
		
		end
	end, false)
	
end


-- function create the question window
function createLicenseQuestionWindow(number)

	local screenwidth, screenheight = guiGetScreenSize ()
	
	local Width = 450
	local Height = 200
	local X = (screenwidth - Width)/2
	local Y = (screenheight - Height)/2
	
	-- create the window
	guiQuestionWindow = guiCreateWindow ( X , Y , Width , Height , "Question "..number.." of "..NoQuestionToAnswer , false )
	
	guiQuestionLabel = guiCreateLabel(0.1, 0.2, 0.9, 0.2, selection[number][1], true, guiQuestionWindow)
	guiSetFont ( guiQuestionLabel,"default-bold-small")
	guiLabelSetHorizontalAlign ( guiQuestionLabel, "left", true)
	
	
	if not(selection[number][2]== "nil") then
		guiQuestionAnswer1Radio = guiCreateRadioButton(0.1, 0.4, 0.9,0.1, selection[number][2], true,guiQuestionWindow)
	end
	
	if not(selection[number][3] == "nil") then
		guiQuestionAnswer2Radio = guiCreateRadioButton(0.1, 0.5, 0.9,0.1, selection[number][3], true,guiQuestionWindow)
	end
	
	if not(selection[number][4]== "nil") then
		guiQuestionAnswer3Radio = guiCreateRadioButton(0.1, 0.6, 0.9,0.1, selection[number][4], true,guiQuestionWindow)
	end
	
	-- if there are more questions to go, then create a "next question" button
	if(number < NoQuestionToAnswer) then
		guiQuestionNextButton = guiCreateButton ( 0.4 , 0.75 , 0.2, 0.1 , "Next Question" , true ,guiQuestionWindow)
		
		addEventHandler ( "onClientGUIClick", guiQuestionNextButton,  function(button, state)
			if(button == "left" and state == "up") then
				
				local selectedAnswer = 0
			
				-- check all the radio buttons and seleted the selectedAnswer variabe to the answer that has been selected
				if(guiRadioButtonGetSelected(guiQuestionAnswer1Radio)) then
					selectedAnswer = 1
				elseif(guiRadioButtonGetSelected(guiQuestionAnswer2Radio)) then
					selectedAnswer = 2
				elseif(guiRadioButtonGetSelected(guiQuestionAnswer3Radio)) then
					selectedAnswer = 3
				else
					selectedAnswer = 0
				end
				
				-- don't let the player continue if they havn't selected an answer
				if(selectedAnswer ~= 0) then
					
					-- if the selection is the same as the correct answer, increase correct answers by 1
					if(selectedAnswer == selection[number][5]) then
						correctAnswers = correctAnswers + 1
					end
				
					-- hide the current window, then create a new window for the next question
					guiSetVisible(guiQuestionWindow, false)
					createLicenseQuestionWindow(number+1)
				end
			end
		end, false)
		
	else
		guiQuestionSumbitButton = guiCreateButton ( 0.4 , 0.75 , 0.3, 0.1 , "Submit Answers" , true ,guiQuestionWindow)
		
		-- handler for when the player clicks submit
		addEventHandler ( "onClientGUIClick", guiQuestionSumbitButton,  function(button, state)
			if(button == "left" and state == "up") then
				
				local selectedAnswer = 0
			
				-- check all the radio buttons and seleted the selectedAnswer variabe to the answer that has been selected
				if(guiRadioButtonGetSelected(guiQuestionAnswer1Radio)) then
					selectedAnswer = 1
				elseif(guiRadioButtonGetSelected(guiQuestionAnswer2Radio)) then
					selectedAnswer = 2
				elseif(guiRadioButtonGetSelected(guiQuestionAnswer3Radio)) then
					selectedAnswer = 3
				elseif(guiRadioButtonGetSelected(guiQuestionAnswer4Radio)) then
					selectedAnswer = 4
				else
					selectedAnswer = 0
				end
				
				-- don't let the player continue if they havn't selected an answer
				if(selectedAnswer ~= 0) then
					
					-- if the selection is the same as the correct answer, increase correct answers by 1
					if(selectedAnswer == selection[number][5]) then
						correctAnswers = correctAnswers + 1
					end
				
					-- hide the current window, then create the finish window
					guiSetVisible(guiQuestionWindow, false)
					createTestFinishWindow()


				end
			end
		end, false)
	end
end


-- funciton create the window that tells the
function createTestFinishWindow()

	local score = math.floor((correctAnswers/NoQuestionToAnswer)*100)

	local screenwidth, screenheight = guiGetScreenSize ()
		
	local Width = 450
	local Height = 200
	local X = (screenwidth - Width)/2
	local Y = (screenheight - Height)/2
		
	-- create the window
	guiFinishWindow = guiCreateWindow ( X , Y , Width , Height , "End of test.", false )
	
	if(score >= passPercent) then
	
		guiCreateStaticImage (0.35, 0.1, 0.3, 0.2, "pass.png", true, guiFinishWindow)
	
		guiFinalPassLabel = guiCreateLabel(0, 0.3, 1, 0.1, "Congratulations! You have passed this section of the test.", true, guiFinishWindow)
		guiSetFont ( guiFinalPassLabel,"default-bold-small")
		guiLabelSetHorizontalAlign ( guiFinalPassLabel, "center")
		guiLabelSetColor ( guiFinalPassLabel ,0, 255, 0 )
		
		guiFinalPassTextLabel = guiCreateLabel(0, 0.4, 1, 0.4, "You scored "..score.."%, and the pass mark is "..passPercent.."%. Well done!" ,true, guiFinishWindow)
		guiLabelSetHorizontalAlign ( guiFinalPassTextLabel, "center", true)
		
		guiFinalRegisterButton = guiCreateButton ( 0.35 , 0.8 , 0.3, 0.1 , "Continue" , true ,guiFinishWindow)
		
		-- if the player has passed the quiz and clicks on register
		addEventHandler ( "onClientGUIClick", guiFinalRegisterButton,  function(button, state)
			if(button == "left" and state == "up") then
				-- set player date to say they have passed the theory.
				

				initiateDrivingTest()
				-- reset their correct answers
				correctAnswers = 0
				toggleAllControls ( true )
				--cleanup
				destroyElement(guiIntroLabel1)
				destroyElement(guiIntroProceedButton)
				destroyElement(guiIntroWindow)
				destroyElement(guiQuestionLabel)
				destroyElement(guiQuestionAnswer1Radio)
				destroyElement(guiQuestionAnswer2Radio)
				destroyElement(guiQuestionAnswer3Radio)
				destroyElement(guiQuestionWindow)
				destroyElement(guiFinalPassTextLabel)
				destroyElement(guiFinalRegisterButton)
				destroyElement(guiFinishWindow)
				guiIntroLabel1 = nil
				guiIntroProceedButton = nil
				guiIntroWindow = nil
				guiQuestionLabel = nil
				guiQuestionAnswer1Radio = nil
				guiQuestionAnswer2Radio = nil
				guiQuestionAnswer3Radio = nil
				guiQuestionWindow = nil
				guiFinalPassTextLabel = nil
				guiFinalRegisterButton = nil
				guiFinishWindow = nil
				
				correctAnswers = 0
				selection = {}
				
				showCursor(false)
			end
		end, false)
		
	else -- player has failed, 
	
		guiCreateStaticImage (0.35, 0.1, 0.3, 0.2, "fail.png", true, guiFinishWindow)
	
		guiFinalFailLabel = guiCreateLabel(0, 0.3, 1, 0.1, "Sorry, you have not passed this time.", true, guiFinishWindow)
		guiSetFont ( guiFinalFailLabel,"default-bold-small")
		guiLabelSetHorizontalAlign ( guiFinalFailLabel, "center")
		guiLabelSetColor ( guiFinalFailLabel ,255, 0, 0 )
		
		guiFinalFailTextLabel = guiCreateLabel(0, 0.4, 1, 0.4, "You scored "..math.ceil(score).."%, and the pass mark is "..passPercent.."%." ,true, guiFinishWindow)
		guiLabelSetHorizontalAlign ( guiFinalFailTextLabel, "center", true)
		
		guiFinalCloseButton = guiCreateButton ( 0.2 , 0.8 , 0.25, 0.1 , "Close" , true ,guiFinishWindow)
		
		-- if player click the close button
		addEventHandler ( "onClientGUIClick", guiFinalCloseButton,  function(button, state)
			if(button == "left" and state == "up") then
				destroyElement(guiIntroLabel1)
				destroyElement(guiIntroProceedButton)
				destroyElement(guiIntroWindow)
				destroyElement(guiQuestionLabel)
				destroyElement(guiQuestionAnswer1Radio)
				destroyElement(guiQuestionAnswer2Radio)
				destroyElement(guiQuestionAnswer3Radio)
				destroyElement(guiQuestionWindow)
				destroyElement(guiFinalFailTextLabel)
				destroyElement(guiFinalCloseButton)
				destroyElement(guiFinishWindow)
				guiIntroLabel1 = nil
				guiIntroProceedButton = nil
				guiIntroWindow = nil
				guiQuestionLabel = nil
				guiQuestionAnswer1Radio = nil
				guiQuestionAnswer2Radio = nil
				guiQuestionAnswer3Radio = nil
				guiQuestionWindow = nil
				guiFinalFailTextLabel = nil
				guiFinalCloseButton = nil
				guiFinishWindow = nil
				
				selection = {}
				correctAnswers = 0
				
				showCursor(false)
			end
		end, false)
	end
	
end
 
 -- function starts the quiz
 function startLicenceTest()
 
	-- choose a random set of questions
	chooseTestQuestions()
	-- create the question window with question number 1
	createLicenseQuestionWindow(1)
 
 end
 
 
 -- functions chooses the questions to be used for the quiz
 function chooseTestQuestions()
 
	-- loop through selections and make each one a random question
	for i=1, 10 do
		-- pick a random number between 1 and the max number of questions
		local number = math.random(1, NoQuestions)
		
		-- check to see if the question has already been selected
		if(testQuestionAlreadyUsed(number)) then
			repeat -- if it has, keep changing the number until it hasn't
				number = math.random(1, NoQuestions)
			until (testQuestionAlreadyUsed(number) == false)
		end
		
		-- set the question to the random one
		selection[i] = questions[number]
	end
 end
 
 
 -- function returns true if the queston is already used
 function testQuestionAlreadyUsed(number)
 
	local same = 0
 
	-- loop through all the current selected questions
	for i, j in pairs(selection) do
		-- if a selected question is the same as the new question
		if(j[1] == questions[number][1]) then
			same = 1 -- set same to 1
		end
		
	end
	
	-- if same is 1, question already selected to return true
	if(same == 1) then
		return true
	else
		return false
	end
 end

---------------------------------------
------ Practical Driving Test ---------
---------------------------------------
 
testRoute = {
	{ -188.1572265625, 1001.8046875, 19.751008987427 },	-- Start, DoL Parking 
	{ -187.6513671875, 1049.4052734375, 19.764289855957 },	-- San Andreas Boulevard DoL near Exit
	{ -187.302734375, 1084.720703125, 19.760423660278 }, -- San Andreas Boulevard DoL Exiting turning left
	{ -147.0322265625, 1095.6884765625, 19.768424987793 }, 	-- Constituion Ave
	{ -79.111328125, 1095.8671875, 19.769815444946, }, -- Constituion Ave, turn to St. Lawrence Blvd
	{ -67.8291015625, 1046.5947265625, 19.768424987793 }, -- St. Lawrence Blvd
	{ 30.6240234375, 1020.3154296875, 19.768138885498 }, 	-- St. Lawrence Blvd, going to Panopticon Ave
	{ -13.4033203125, 1084.6611328125, 19.762506484985 }, 	-- St. Lawrence Blvd, going to Panopticon Ave
	{ 28.330078125, 1145.8251953125, 19.768327713013 }, 	-- St. Lawrence Blvd, going to Panopticon Ave
	{ -53.01953125, 1150.8134765625, 19.76368522644 },	-- St. Lawrence Blvd, turning on to Panopticon Ave
	{ -63.16015625, 1185.0185546875, 19.721019744873 },	-- Panopticon Ave
	{ -5.275390625, 1195.4150390625, 19.384851455688 },	-- Panopticon Ave back on to the opposite side of St. Lawrence Blvd
	{ 109.35546875, 1196.08984375, 18.345762252808 },		-- St. Lawrence Blvd
	{ 173.91015625, 1145.24609375, 14.423748016357 },	-- Turning on to City Hall Road
	{ 194.4345703125, 1050.1796875, 21.749834060669 },	-- City Hall Road
	{ 219.1494140625, 979.263671875, 28.432661056519 },	-- City Hall Road
	{ 261.3095703125, 884.74609375, 22.156631469727 },	-- City Hall Road
	{ 318.5810546875, 757.3583984375, 11.712814331055 },	-- City Hall Road
	{ 358.484375, 686.013671875, 9.7469425201416 },	-- City Hall Road
	{ 427.638671875, 599.1142578125, 19.097799301147 },	-- City Hall Road
	{ 492.884765625, 504.9169921875, 19.095235824585 }, 	-- City Hall Road turning towards IGS
	{ 607.2373046875, 342.810546875, 19.106117248535 }, 	-- 
	{ 557.3837890625, 275.4189453125, 16.980207443237 }, 	-- 
	{ 510.673828125, 218.2724609375, 13.664651870728 }, 	-- IGS
	{ 519.7529296875, 132.7763671875, 24.095289230347 }, 	-- IGS
	{ 525.5283203125, 31.728515625, 22.069849014282 }, -- IGS
	{ 524.380859375, -123.447265625, 37.837379455566 }, 			-- Mulholland parking, Turn to East Vinewood Blvd
	{ 494.693359375, -296.6416015625, 41.063507080078 }, 	-- East Vinewood Blvd, turn to Sunset Blvd
	{ 469.044921875, -395.951171875, 27.720195770264 }, 	-- Sunset Blvd
	{ 557.07421875, -417.724609375, 28.95178604126 }, 	-- Sunset Blvd
	{ 627.1259765625, -417.6875, 16.861726760864 }, 	-- Sunset Blvd
	{ 639.3154296875, -471.333984375, 16.356327056885 }, 	-- Sunset Blvd, Turn to St. Lawrence Blvd
	{ 603.3671875, -486.966796875, 16.360876083374 }, 	-- St. Lawrence Blvd
	{ 602.158203125, -527.1513671875, 16.364086151123 }, 	-- St. Lawrence Blvd, turn to West Broadway
	{ 638.765625, -565.5087890625, 16.361150741577 }, 	-- West Broadway
	{ 664.5732421875, -602.6318359375, 16.362092971802 }, -- West Broadway
	{ 721.60546875, -597.18359375, 16.362382888794 }, 	-- Interstate 25
	{ 724.2509765625, -543.921875, 16.362615585327 }, 	-- Interstate 25
	{ 778.703125, -532.2998046875, 16.362440109253 }, 	-- Interstate 125
	{ 791.1396484375, -592.5673828125, 16.362350463867 }, 	-- Interstate 125
	{ 834.38671875, -579.61328125, 16.361949920654 }, -- Interstate 125
	{ 895.201171875, -554.6689453125, 23.017269134521 }, -- Interstate 125
	{ 963, -503.0771484375, 44.838230133057 }, 	-- Interstate 125
	{ 1099.2236328125, -439.4033203125, 44.083141326904 }, 		-- Interstate 125, turn to Saints Blvd
	{ 1170.1865234375, -428.40625, 20.968360900879 }, 	-- Saints Blvd, turn to St Anthony St.
	{ 1249.1904296875, -322.923828125, 8.7348155975342 }, 		-- St Anthony St, turn to Saints Blvd
	{ 1188.2998046875, -176.4736328125, 40.49361038208 }, 	-- Saints Blvd
	{ 1097.0595703125, -184.9013671875, 40.956737518311 }, 	-- Saints Blvd
	{ 952.84765625, -176.419921875, 11.618132591248 }, -- Saints Blvd, turn to Caesar Rd
	{ 824.9306640625, -166.857421875, 18.978559494019 }, 		-- mid turn
	{ 539.9931640625, -139.16796875, 37.736217498779 }, 	-- Caesar Rd
	{ 532.76171875, 25.376953125, 22.19075012207 }, 	-- Caesar Rd
	{ 524.1826171875, 149.40625, 23.878099441528 }, 	-- Caesar Rd, turn to Freedom St
	{ 517.23828125, 220.2080078125, 14.355463027954 }, -- Freedom St
	{ 572.515625, 279.12890625, 17.712646484375 }, 	-- Freedom St, turn to Carson St
	{ 554.9306640625, 427.224609375, 19.104312896729 }, 	-- Carson St
	{ 506.8173828125, 499.673828125, 19.09766960144 }, 		-- Carson St, turn to Atlantica Ave
	{ 435.455078125, 600.423828125, 19.095169067383 }, -- Atlantica Ave
	{ 355.21875, 698.689453125, 8.9772911071777 }, 	-- Atlantica Ave, turn to Pilon St
	{ 305.28515625, 797.677734375, 14.740748405457 }, 	-- Pilon St
	{ 234.2421875, 960.1923828125, 28.186977386475 }, -- Pilon St
	{ 170.9345703125, 927.1181640625, 24.195709228516 },	-- St. Joseph St
	{ 89.25390625, 890.3857421875, 23.164079666138 },	-- St. Joseph St
	{ 7.5859375, 888.021484375, 23.605016708374 },	-- St. Joseph St
	{ -56.35546875 , 859.353515625, 17.959053039551 },	-- St. Joseph St, turn to Fremont St
	{ -129.0810546875, 823.849609375, 21.066822052002 },	-- Fremont St, turn to Fame St
	{ -284.1689453125, 803.294921875, 15.068513870239 },	-- Fame St
	{ -244.873046875, 834.31640625, 13.303720474243, },	-- ROUTE FIX
	{ -207.6875, 879.6826171875, 10.435210227966 },	-- ROUTE FIX
	{ -191.0673828125, 930.1845703125, 14.035296440125 },	-- ROUTE FIX
	{ -187.4482421875, 999.38671875, 19.750898361206 },	-- Belview Rd
	{ -187.78515625, 1051.783203125, 19.768142700195 },	-- Howard Blvd
	{ -219.447265625, 1101.0625, 19.768667221069 },		-- Howard Blvd, turn to Carson St
	{ -261.763671875, 1101.50390625, 19.765573501587 },	-- Carson St
	{ -296.5966796875, 1101.908203125, 19.768581390381 },	-- Carson St
	{ -316.5908203125, 1066.6083984375, 19.76863861084 },	-- Majestic St
	{ -290.62109375, 1060.1083984375, 19.769798278809 },	-- Majestic St, turn to Park ave
	{ -279.1015625, 1038.8515625, 19.768354415894 },		-- Park ave
	{ -249.2607421875, 1015.63671875, 19.769456863403 },	-- Park ave
	{ -218.935546875, 1005.5146484375, 19.891223907471 },	-- DoL End road
}

testVehicle = { [410]=true } -- Mananas need to be spawned at the start point.
local vehicleIdUsedToStartTest = nil

local blip = nil
local marker = nil

function initiateDrivingTest()
	triggerServerEvent("theoryComplete", getLocalPlayer())
	local x, y, z = testRoute[1][1], testRoute[1][2], testRoute[1][3]
	blip = createBlip(x, y, z, 0, 2, 0, 255, 0, 255)
	marker = createMarker(x, y, z, "checkpoint", 4, 0, 255, 0, 150) -- start marker.
	addEventHandler("onClientMarkerHit", marker, startDrivingTest)
	
	outputChatBox("#FF9933You are now ready to take your practical driving examination. Collect a DoL test car and begin the route.", 255, 194, 14, true)
	
end

function startDrivingTest(element)
	if element == getLocalPlayer() then
		local vehicle = getPedOccupiedVehicle(getLocalPlayer())
		if not vehicle or not testVehicle[getElementModel(vehicle)] then
			outputChatBox("#FF9933You must be in a DoL test car when passing through the checkpoints.", 255, 0, 0, true ) -- Wrong car type.
		else
			destroyElement(blip)
			destroyElement(marker)
			
			setElementData(getLocalPlayer(), "drivingTest.marker", 2, false)
			vehicleIdUsedToStartTest = getElementData(vehicle, "dbid")

			local x1,y1,z1 = nil -- Setup the first checkpoint
			x1 = testRoute[2][1]
			y1 = testRoute[2][2]
			z1 = testRoute[2][3]
			setElementData(getLocalPlayer(), "drivingTest.checkmarkers", #testRoute, false)

			blip = createBlip(x1, y1 , z1, 0, 2, 255, 0, 255, 255)
			marker = createMarker( x1, y1,z1 , "checkpoint", 4, 255, 0, 255, 150)
				
			addEventHandler("onClientMarkerHit", marker, UpdateCheckpoints)
				
			outputChatBox("#FF9933You will need to complete the route without damaging the test car. Good luck and drive safe.", 255, 194, 14, true)
		end
	end
end

function UpdateCheckpoints(element)
	if (element == localPlayer) then
		local vehicle = getPedOccupiedVehicle(getLocalPlayer())
		if not vehicle or not testVehicle[getElementModel(vehicle)] then
			outputChatBox("You must be in a DoL test car when passing through the check points.", 255, 0, 0) -- Wrong car type.
		elseif getElementData(vehicle, "dbid") ~= vehicleIdUsedToStartTest then
			outputChatBox("You are not using the vehicle you started this test with.", 255, 194, 14)
			outputChatBox("You have failed the practical driving test.", 255, 0, 0)

			destroyElement(blip)
			destroyElement(marker)
			blip = nil
			marker = nil
		else
			destroyElement(blip)
			destroyElement(marker)
			blip = nil
			marker = nil
				
			local m_number = getElementData(getLocalPlayer(), "drivingTest.marker")
			local max_number = getElementData(getLocalPlayer(), "drivingTest.checkmarkers")
			
			if (tonumber(max_number-1) == tonumber(m_number)) then -- if the next checkpoint is the final checkpoint.
				outputChatBox("#FF9933Park your car at the #FF66CCin the parking lot #FF9933to complete the test.", 255, 194, 14, true)
				
				local newnumber = m_number+1
				setElementData(getLocalPlayer(), "drivingTest.marker", newnumber, false)
					
				local x2, y2, z2 = nil
				x2 = testRoute[newnumber][1]
				y2 = testRoute[newnumber][2]
				z2 = testRoute[newnumber][3]
				
				marker = createMarker( x2, y2, z2, "checkpoint", 4, 255, 0, 255, 150)
				blip = createBlip( x2, y2, z2, 0, 2, 255, 0, 255, 255)
				
				
				addEventHandler("onClientMarkerHit", marker, EndTest)
			else
				local newnumber = m_number+1
				setElementData(getLocalPlayer(), "drivingTest.marker", newnumber, false)
						
				local x2, y2, z2 = nil
				x2 = testRoute[newnumber][1]
				y2 = testRoute[newnumber][2]
				z2 = testRoute[newnumber][3]
						
				marker = createMarker( x2, y2, z2, "checkpoint", 4, 255, 0, 255, 150)
				blip = createBlip( x2, y2, z2, 0, 2, 255, 0, 255, 255)
				
				addEventHandler("onClientMarkerHit", marker, UpdateCheckpoints)
			end
		end
	end
end

function EndTest(element)
	if (element == localPlayer) then
		local vehicle = getPedOccupiedVehicle(getLocalPlayer())
		if not vehicle or not testVehicle[getElementModel(vehicle)] then
			outputChatBox("You must be in a DoL test car when passing through the check points.", 255, 0, 0)
		else
			local vehicleHealth = getElementHealth ( vehicle )
			if getElementData(vehicle, "dbid") ~= vehicleIdUsedToStartTest then
				outputChatBox("You are not using the vehicle you started this test with.", 255, 194, 14)
				outputChatBox("You have failed the practical driving test.", 255, 0, 0)
			elseif (vehicleHealth >= 800) then
				----------
				-- PASS --
				----------
				outputChatBox("After inspecting the vehicle we can see no damage.", 255, 194, 14)
				triggerServerEvent("acceptCarLicense", getLocalPlayer())
			else
				----------
				-- Fail --
				----------
				outputChatBox("After inspecting the vehicle we can see that it's damage.", 255, 194, 14)
				outputChatBox("You have failed the practical driving test.", 255, 0, 0)
			end
			
			destroyElement(blip)
			destroyElement(marker)
			blip = nil
			marker = nil
		end
	end
end

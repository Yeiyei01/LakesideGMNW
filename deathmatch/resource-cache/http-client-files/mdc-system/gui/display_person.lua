--[[
--	Copyright (C) Root Gaming - All Rights Reserved
--	Unauthorized copying of this file, via any medium is strictly prohibited
--	Proprietary and confidential
--	Written by Daniel Lett <me@lettuceboi.org>, December 2012
]]--

local SCREEN_X, SCREEN_Y = guiGetScreenSize()
local resourceName = getResourceName( getThisResource( ) )

------------------------------------------
function getTime( day, month, timestamp )
	local months = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" }
	local days = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" }
	local time = nil
	local ts = nil
	
	if timestamp then
		time = getRealTime( timestamp )
	else
		time = getRealTime( )
	end
	
	ts = ( tonumber( time.hour ) >= 12 and tostring( tonumber( time.hour ) - 12 ) or time.hour ) .. ":"..("%02d"):format(time.minute)..( tonumber( time.hour ) >= 12 and " PM" or " AM" )
	
	if month then
		ts =  months[ time.month + 1 ] .. " ".. time.monthday .. ", " .. ts
	end
	
	if day then
		ts = days[ time.weekday + 1 ].. ", " .. ts
	end
	
	return ts
end

function getShortTime( timestamp )
	local months = { "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC" }
	local time = nil
	local ts = nil
	
	if timestamp then
		time = getRealTime( timestamp )
	else
		time = getRealTime( )
	end
	
	ts = time.hour .. ":"..("%02d"):format(time.minute)
	ts =  months[ time.month + 1 ] .. " ".. time.monthday .. ", " .. tostring( tonumber( time.year ) + 1900 ) .. " " .. ts
	
	return ts
end

function DEC_HEX(IN)
    local B,K,OUT,I,D=16,"0123456789ABCDEF","",0
    while IN>0 do
        I=I+1
        IN,D=math.floor(IN/B),math.mod(IN,B)+1
        OUT=string.sub(K,D,D)..OUT
    end
    return OUT
end

------------------------------------------
function display_person ( charactername, age, char_weight, char_height, gender, car_license, gun_license, pdjail, dob, ethnicity, phone, occupation, address, photo, details, created_by, wanted, wanted_by, wanted_details, charid, vehicles, properties, crimes )
	local window = { }
	local width = 700
	local height = 600
	local x = SCREEN_X / 2 - width / 2
	local y = SCREEN_Y / 2 - height / 2
	window.window = guiCreateWindow( x, y, width, height, "MDC Search - Person: ".. charactername:gsub( "_", " " ), false )
	
	window.nameLabel	= guiCreateLabel( 10, 30, 180, 20, "Name: " .. charactername:gsub( "_", " " ), false, window.window )
	window.ageLabel 	= guiCreateLabel( 10, 50, 180, 20, "Age: " .. age, false, window.window )
	window.genderLabel	= guiCreateLabel( 10, 70, 180, 20, "Gender: " .. ( tonumber( gender ) == 0 and "Male" or "Female" ), false, window.window )
	window.carLicLabel	= guiCreateLabel( 10, 90, 180, 20, "Car License: " .. ( tonumber( car_license ) == 1 and "Yes" or "No" ), false, window.window )
	window.gunLicLabel	= guiCreateLabel( 10, 110, 180, 20, "Gun License: " .. ( tonumber( gun_license ) == 1 and "Yes" or "No" ), false, window.window )
	window.incarcLabel	= guiCreateLabel( 10, 130, 180, 20, "Incarcerated: " .. ( tonumber( pdjail ) == 1 and "Yes" or "No" ), false, window.window )
	window.dobLabel		= guiCreateLabel( 10, 150, 180, 20, "Date of Birth: " .. dob, false, window.window )
	
	window.ethnicLabel	= guiCreateLabel( 200, 30, 240, 20, "Ethnicity: " .. ethnicity, false, window.window )
	window.phoneLabel	= guiCreateLabel( 200, 50, 240, 20, "Phone: " .. phone, false, window.window )
	window.occupLabel	= guiCreateLabel( 200, 70, 240, 20, "Occupation: " .. occupation, false, window.window )
	window.addressLabel	= guiCreateLabel( 200, 90, 240, 20, "Address: " .. address, false, window.window )
	window.weightLabel	= guiCreateLabel( 200, 110, 240, 20, "Weight: " .. char_weight .. "kg" , false, window.window )
	window.heightLabel	= guiCreateLabel( 200, 130, 240, 20, "Height: " .. char_height .. "cm" , false, window.window )
	
	window.updateButton	= guiCreateButton( width - 200, 30, 190, 30, "Update Details", false, window.window )
	addEventHandler( "onClientGUIClick", window.updateButton, 
		function ()
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			update_person( charactername, charid, dob, ethnicity, phone, occupation, address, photo, details )
		end
	, false )
	window.wantedButton	= guiCreateButton( width - 200, 70, 190, 30, ( tonumber( wanted ) == 1 and "Update Warrant" or "Post Warrant" )  , false, window.window )
	addEventHandler( "onClientGUIClick", window.wantedButton, 
		function ()
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			update_warrant( charactername, charid, wanted, wanted_details )
		end
	, false )
	window.addButton	= guiCreateButton( width - 200, 110, 190, 30, "Add Crime", false, window.window )
	addEventHandler( "onClientGUIClick", window.addButton, 
		function ()
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			add_crime( charid, charactername )
		end
	, false )
	window.removeButton	= guiCreateButton( width - 200, 150, 190, 30, "Remove Crime", false, window.window )
	addEventHandler( "onClientGUIClick", window.removeButton, 
		function ()
			local selectedRow, selectedCol = guiGridListGetSelectedItem( window.crimesTable )
			local crime_id = guiGridListGetItemData( window.crimesTable, selectedRow, window.crimeCol )
			if tonumber( crime_id ) then
				if tonumber( getElementData( getLocalPlayer(), "mdc_admin" ) ) > 1 or officer == getElementData( getLocalPlayer(), "mdc_account" ) then
					triggerServerEvent( resourceName .. ":remove_crime", getLocalPlayer(), charactername, crime_id )
				else
					remove_crime_noperm( charactername )
				end
			else
				remove_crime_noid( charactername )
			end
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
		end
	, false )
	window.panel		= guiCreateTabPanel ( width - 200, 190, 190, 200, false, window.window )
	window.vehicleTab	= guiCreateTab( "Vehicles", window.panel )
	window.propertyTab	= guiCreateTab( "Properties", window.panel )
	
	--Vehicles
	window.vehicleTable	= guiCreateGridList ( 10, 10, 170, 155, false, window.vehicleTab )
	window.vehicleCol	= guiGridListAddColumn( window.vehicleTable, "Vehicles", 0.9 )
	
	if ( #vehicles > 0 ) then
		for i = 1, #vehicles, 1 do
			local row = guiGridListAddRow ( window.vehicleTable )
			guiGridListSetItemText( window.vehicleTable, row, window.vehicleCol, getVehicleNameFromModel( tonumber( vehicles[ i ][ 2 ] ) ) .. " - "..tostring( vehicles[ i ][ 3 ] ), false, false )
			guiGridListSetItemData( window.vehicleTable, row, window.vehicleCol, vehicles[ i ][ 3 ] )
		end
		addEventHandler( "onClientGUIDoubleClick", window.vehicleTable,
			function ( )
				local selectedRow, selectedCol = guiGridListGetSelectedItem( window.vehicleTable )
				local vehiclePlate = guiGridListGetItemData( window.vehicleTable, selectedRow, selectedCol )
				setElementData( getLocalPlayer(), "mdc_close_to", charactername )
				setElementData( getLocalPlayer(), "mdc_close_type", 0 )
				triggerServerEvent( resourceName .. ":search", getLocalPlayer(), vehiclePlate, 1 )
				
				guiSetVisible( window.window, false )
				destroyElement( window.window )
				window = { }
			end
		, false )
	else
		local row = guiGridListAddRow ( window.vehicleTable )
		guiGridListSetItemText ( window.vehicleTable, row, window.vehicleCol, "No Vehicles", false, false )
	end
	
	--Properties
	window.propTable	= guiCreateGridList ( 10, 10, 170, 155, false, window.propertyTab )
	window.propCol		= guiGridListAddColumn( window.propTable, "Properties", 0.9 )
	
	if ( #properties > 0 ) then
		for i = 1, #properties, 1 do
			local row = guiGridListAddRow ( window.propTable )
			guiGridListSetItemText( window.propTable, row, window.propCol, properties[ i ][ 2 ], false, false )
			guiGridListSetItemData( window.propTable, row, window.propCol, properties[ i ][ 1 ] )
		end
		
		addEventHandler( "onClientGUIDoubleClick", window.propTable,
			function ( )
				local selectedRow, selectedCol = guiGridListGetSelectedItem( window.propTable )
				local propertyID = guiGridListGetItemData( window.propTable, selectedRow, selectedCol )
				setElementData( getLocalPlayer(), "mdc_close_to", charactername )
				setElementData( getLocalPlayer(), "mdc_close_type", 0 )
				triggerServerEvent( resourceName .. ":search", getLocalPlayer(), propertyID, 2 )
				
				guiSetVisible( window.window, false )
				destroyElement( window.window )
				window = { }
			end
		, false )
	else
		local row = guiGridListAddRow ( window.propTable )
		guiGridListSetItemText ( window.propTable, row, window.propCol, "No Properties", false, false )
	end
	
	--Crimes & Details
	window.mainPanel	= guiCreateTabPanel ( 10, 190, 480, 270, false, window.window )
	
	window.crimesTab	= guiCreateTab( "Crimes", window.mainPanel )
	window.crimesTable	= guiCreateGridList ( 10, 10, 460, 230, false, window.crimesTab )
	window.dateCol		= guiGridListAddColumn( window.crimesTable, "Date", 0.3 )
	window.crimeCol		= guiGridListAddColumn( window.crimesTable, "Crime", 0.35 )
	window.punishCol	= guiGridListAddColumn( window.crimesTable, "Punishment", 0.3 )
	
	window.detailsTab	= guiCreateTab( "Details", window.mainPanel )
	addEventHandler( "onClientGUIClick", window.detailsTab,
		function()
			guiSetInputEnabled ( true )
		end
	, false )
	window.detailsMemo	= guiCreateMemo( 10, 10, 460, 190, details, false, window.detailsTab )
	addEventHandler( "onClientGUIClick", window.detailsMemo,
		function()
			guiSetInputEnabled ( true )
		end
	, false )
	window.detailsButton= guiCreateButton( 10, 210, 460, 30, "Update", false, window.detailsTab )
	addEventHandler( "onClientGUIClick", window.detailsButton,
		function ( )
			local details = guiGetText( window.detailsMemo )
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			triggerServerEvent( resourceName..":update_details", getLocalPlayer(), charid, charactername, details )
			guiSetInputEnabled ( false )
		end
	, false )
	guiMemoSetReadOnly( window.detailsMemo, false )
	
	if ( #crimes > 0 ) then
		for i = 1, #crimes, 1 do
			local row = guiGridListAddRow ( window.crimesTable )
			guiGridListSetItemText( window.crimesTable, row, window.dateCol, getShortTime( crimes[ i ][ 5 ] ), false, false )
			guiGridListSetItemText( window.crimesTable, row, window.crimeCol, crimes[ i ][ 2 ], false, false )
			guiGridListSetItemText( window.crimesTable, row, window.punishCol, crimes[ i ][ 3 ], false, false )
			guiGridListSetItemData( window.crimesTable, row, window.dateCol, crimes[ i ][ 5 ] )
			guiGridListSetItemData( window.crimesTable, row, window.crimeCol, crimes[ i ][ 1 ] )
			guiGridListSetItemData( window.crimesTable, row, window.punishCol, crimes[ i ][ 4 ] )
		end
		
		addEventHandler( "onClientGUIDoubleClick", window.crimesTable,
			function ( )
				local selectedRow, selectedCol = guiGridListGetSelectedItem( window.crimesTable )
				local crime_id = guiGridListGetItemData( window.crimesTable, selectedRow, window.crimeCol )
				local occured = guiGridListGetItemData( window.crimesTable, selectedRow, window.dateCol )
				local crime = guiGridListGetItemText( window.crimesTable, selectedRow, window.crimeCol )
				local punishment = guiGridListGetItemText( window.crimesTable, selectedRow, window.punishCol )
				local officer = guiGridListGetItemData( window.crimesTable, selectedRow, window.punishCol )
				view_crime( charid, charactername, crime_id, occured, crime, punishment, officer )
				
				guiSetVisible( window.window, false )
				destroyElement( window.window )
				window = { }
			end
		, false )
	else
		local row = guiGridListAddRow ( window.crimesTable )
		guiGridListSetItemText ( window.crimesTable, row, window.dateCol, "No Crimes", false, false )
	end
	
	--Warrant
	window.warrantTable	= guiCreateGridList ( 10, 470, 480, 70, false, window.window )
	window.warrantCol	= guiGridListAddColumn( window.warrantTable, ( tonumber( wanted ) == 1 and ( "Issued By " .. wanted_by ) or "No Active Warrants." ), 0.9 )
	local row = guiGridListAddRow ( window.warrantTable )
	guiGridListSetItemText( window.warrantTable, row, window.warrantCol, ( tonumber( wanted ) == 1 and (  string.sub( wanted_details, 0, 75 ) ) or "" ), false, false )
	if not wanted_details then wanted_details = "" end
	
	if string.len( wanted_details ) >= 75 then
		local count = 1
		while true do
			local row = guiGridListAddRow ( window.warrantTable )
			guiGridListSetItemText( window.warrantTable, row, window.warrantCol, string.sub( wanted_details, 75 * count + 1, count * 75 + 75 ), false, false )
			count = count + 1
			if string.len( wanted_details ) < count * 75 then
				break
			end
		end
	end
	--Photo
	window.photo		= guiCreateStaticImage ( width - 168, 400, 128, 128, ":account-system/img/" .. ("%03d"):format(photo) .. ".png", false, window.window )
	
	window.closeButton = guiCreateButton( 10, height - 50, width - 20, 40, "Close", false, window.window )
	addEventHandler( "onClientGUIClick", window.closeButton, 
		function ()
			guiSetInputEnabled ( false )
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			triggerServerEvent( resourceName .. ":main", getLocalPlayer() )
		end
	, false )
end

function update_person( charactername, charid, dob, ethnicity, phone, occupation, address, photo, details )
	guiSetInputEnabled ( true )
	local window = { }
	local width = 400
	local height = 370
	local x = SCREEN_X / 2 - width / 2
	local y = SCREEN_Y / 2 - height / 2
	window.window = guiCreateWindow( x, y, width, height, "MDC Update Details", false )
	local y = 37
	window.dobLabel		= guiCreateLabel( 10, y, 70, 20, "Birthdate: ", false, window.window )
	y = y + 40
	window.ethnicLabel	= guiCreateLabel( 10, y, 100, 20, "Ethnicity: ", false, window.window )
	y = y + 40
	window.phoneLabel	= guiCreateLabel( 10, y, 100, 20, "Phone: ", false, window.window )
	y = y + 40
	window.occupLabel	= guiCreateLabel( 10, y, 100, 20, "Occupation: ", false, window.window )
	y = y + 40
	window.addressLabel	= guiCreateLabel( 10, y, 100, 20, "Address: ", false, window.window )
	y = y + 40
	window.photoLabel	= guiCreateLabel( 10, y, 100, 20, "Photo: ", false, window.window )
	
	y = 30
	window.dobEdit		= guiCreateEdit( 80, y, width - 90, 30, dob, false, window.window )
	y = y + 40
	window.ethnicEdit	= guiCreateEdit( 80, y, width - 90, 30, ethnicity, false, window.window )
	y = y + 40
	window.phoneEdit	= guiCreateEdit( 80, y, width - 90, 30, phone, false, window.window )
	y = y + 40
	window.occupEdit	= guiCreateEdit( 80, y, width - 90, 30, occupation, false, window.window )
	y = y + 40
	window.addressEdit	= guiCreateEdit( 80, y, width - 90, 30, address, false, window.window )
	y = y + 40
	window.photosCheck	= guiCreateCheckBox( 80, y, width - 90, 30, "Update Photo?", false, false, window.window )
	
	
	window.updateButton = guiCreateButton( 10, height - 100, width - 20, 40, "Update!", false, window.window )
	addEventHandler( "onClientGUIClick", window.updateButton, 
		function ()
			dob = guiGetText( window.dobEdit )
			ethnicity = guiGetText( window.ethnicEdit )
			phone = guiGetText( window.phoneEdit )
			occupation = guiGetText( window.occupEdit )
			address = guiGetText( window.addressEdit )
			if guiCheckBoxGetSelected ( window.photosCheck ) then
				photo = -1
			end
			guiSetInputEnabled ( false )
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			triggerServerEvent( resourceName .. ":update_person", getLocalPlayer(), charid, charactername, dob, ethnicity, phone, occupation, address, photo )
		end
	, false )
	
	window.closeButton = guiCreateButton( 10, height - 50, width - 20, 40, "Close", false, window.window )
	addEventHandler( "onClientGUIClick", window.closeButton, 
		function ()
			guiSetInputEnabled ( false )
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			triggerServerEvent( resourceName .. ":search", getLocalPlayer(), charactername, 0 )
		end
	, false )
end

function update_warrant( charactername, charid, wanted, wanted_details )
	guiSetInputEnabled ( true )
	local window = { }
	local width = 400
	local height = 240
	local x = SCREEN_X / 2 - width / 2
	local y = SCREEN_Y / 2 - height / 2
	window.window = guiCreateWindow( x, y, width, height, "MDC Update Details", false )
	local y = 37 + 40
	window.wantedLabel		= guiCreateLabel( 10, y, 70, 50, "Warrant \nDetails: ", false, window.window )
	
	
	y = 30
	window.wantedCheck	= guiCreateCheckBox( 80, y, width - 90, 30, "Warrant Active", false, false, window.window )
	if tonumber( wanted ) == 1 then
		guiCheckBoxSetSelected ( window.wantedCheck, true )
	end
	addEventHandler( "onClientGUIClick", window.wantedCheck,
		function()
			local new_wanted = guiCheckBoxGetSelected( window.wantedCheck )
			guiSetText( window.wantedCheck, ( new_wanted and "Warrant Active" or "Warrant Not Active" ) )
		end
	, false )
	
	y = y + 40
	window.wantedMemo	= guiCreateMemo( 80, y, width - 90, 60, wanted_details, false, window.window )
	
	window.updateButton = guiCreateButton( 10, height - 100, width - 20, 40, "Update Wanted", false, window.window )
	addEventHandler( "onClientGUIClick", window.updateButton, 
		function ()
			local new_wanted = guiCheckBoxGetSelected ( window.wantedCheck ) and 1 or 0
			local details = guiGetText( window.wantedMemo )
			
			guiSetInputEnabled ( false )
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			triggerServerEvent( resourceName .. ":update_warrant", getLocalPlayer(), charid, charactername, new_wanted, details )
		end
	, false )
	
	window.closeButton = guiCreateButton( 10, height - 50, width - 20, 40, "Close", false, window.window )
	addEventHandler( "onClientGUIClick", window.closeButton, 
		function ()
			guiSetInputEnabled ( false )
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			triggerServerEvent( resourceName .. ":search", getLocalPlayer(), charactername, 0 )
		end
	, false )
end

function add_crime( charid, charactername )
	guiSetInputEnabled ( true )
	local window = { }
	local width = 400
	local height = 300
	local x = SCREEN_X / 2 - width / 2
	local y = SCREEN_Y / 2 - height / 2
	window.window = guiCreateWindow( x, y, width, height, "MDC Add Crime: "..charactername:gsub( "_", " " ), false )
	
	local y = 30
	window.timeLabel 	= guiCreateLabel( 10, y, 70, 20, "Date: ", false, window.window )
	y = y + 30
	window.crimeLabel 	= guiCreateLabel( 10, y, 70, 20, "Crime: ", false, window.window )
	y = y + 70
	window.punishLabel 	= guiCreateLabel( 10, y, 70, 20, "Punishment: ", false, window.window )
	
	y = 30
	window.time2Label 	= guiCreateLabel( 80, y, width - 90, 20, getTime( true, true, false ), false, window.window )
	y = y + 30
	window.crimeMemo	= guiCreateMemo( 80, y, width - 90, 60, "Some details of what happened.", false, window.window )
	y = y + 70
	window.punishMemo	= guiCreateMemo( 80, y, width - 90, 60, "What punishment was given.", false, window.window )
	
	window.addButton = guiCreateButton( 10, height - 100, width - 20, 40, "Add Crime", false, window.window )
	addEventHandler( "onClientGUIClick", window.addButton, 
		function ()
			local crime = guiGetText( window.crimeMemo )
			local punishment = guiGetText( window.punishMemo )
			guiSetInputEnabled ( false )
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			triggerServerEvent( resourceName .. ":add_crime", getLocalPlayer(), charid, charactername, crime, punishment )
		end
	, false )
	
	window.closeButton = guiCreateButton( 10, height - 50, width - 20, 40, "Close", false, window.window )
	addEventHandler( "onClientGUIClick", window.closeButton, 
		function ()
			guiSetInputEnabled ( false )
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			triggerServerEvent( resourceName .. ":search", getLocalPlayer(), charactername, 0 )
		end
	, false )
end

function view_crime( charid, charactername, id, occured, crime, punishment, officer )
	local window = { }
	local width = 400
	local height = 300
	local x = SCREEN_X / 2 - width / 2
	local y = SCREEN_Y / 2 - height / 2
	window.window = guiCreateWindow( x, y, width, height, "MDC View Crime", false )
	
	local y = 30
	window.timeLabel 	= guiCreateLabel( 10, y, 70, 20, "Date: ", false, window.window )
	y = y + 30
	window.idLabel 	= guiCreateLabel( 10, y, 70, 20, "Crime ID: ", false, window.window )
	y = y + 30
	window.crimeLabel 	= guiCreateLabel( 10, y, 70, 20, "Crime: ", false, window.window )
	y = y + 70
	window.punishLabel 	= guiCreateLabel( 10, y, 70, 20, "Punishment: ", false, window.window )
	y = y + 70
	window.officerLabel 	= guiCreateLabel( 10, y, 70, 20, "Officer: ", false, window.window )
	window.officerLabel 	= guiCreateLabel( 80, y, width - 90, 20, officer, false, window.window )
	
	y = 30
	window.time2Label 	= guiCreateLabel( 80, y, width - 90, 20, getTime( true, true, occured ), false, window.window )
	y = y + 30
	window.id2Label 	= guiCreateLabel( 80, y, width - 90, 20, DEC_HEX( tonumber( id ) ), false, window.window )
	y = y + 30
	window.crimeMemo	= guiCreateMemo( 80, y, width - 90, 60, crime, false, window.window )
	guiMemoSetReadOnly ( window.crimeMemo, true )
	y = y + 70
	window.punishMemo	= guiCreateMemo( 80, y, width - 90, 60, punishment, false, window.window )
	guiMemoSetReadOnly ( window.punishMemo, true )
	
	window.closeButton = guiCreateButton( 10, height - 50, width - 20, 40, "Close", false, window.window )
	addEventHandler( "onClientGUIClick", window.closeButton, 
		function ()
			guiSetInputEnabled ( false )
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			triggerServerEvent( resourceName .. ":search", getLocalPlayer(), charactername, 0 )
		end
	, false )
end

function remove_crime_noid ( charactername )
	local window = { }
	local width = 250
	local height = 110
	local x = SCREEN_X / 2 - width / 2
	local y = SCREEN_Y / 2 - height / 2
	window.window = guiCreateWindow( x, y, width, height, "MDC Delete Error", false )
	
	window.errorLabel = guiCreateLabel( 10, 30, width - 20, 20, "You need to select a crime to delete!", false, window.window )
	
	
	window.closeButton = guiCreateButton( 10, 60, width - 20, 40, "Close", false, window.window )
	addEventHandler( "onClientGUIClick", window.closeButton, 
		function ()
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			triggerServerEvent( resourceName .. ":search", getLocalPlayer(), charactername, 0 )
		end
	, false )
end

function remove_crime_noperm ( charactername )
	local window = { }
	local width = 250
	local height = 110
	local x = SCREEN_X / 2 - width / 2
	local y = SCREEN_Y / 2 - height / 2
	window.window = guiCreateWindow( x, y, width, height, "MDC Delete Error", false )
	
	window.errorLabel = guiCreateLabel( 10, 30, width - 20, 20, "You don't have permission for that!", false, window.window )
	
	
	window.closeButton = guiCreateButton( 10, 60, width - 20, 40, "Close", false, window.window )
	addEventHandler( "onClientGUIClick", window.closeButton, 
		function ()
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			triggerServerEvent( resourceName .. ":search", getLocalPlayer(), charactername, 0 )
		end
	, false )
end

------------------------------------------
addEvent( resourceName .. ":display_person", true )
addEventHandler( resourceName .. ":display_person", getRootElement(), display_person )
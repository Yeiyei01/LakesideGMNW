--[[
--	Copyright (C) Root Gaming - All Rights Reserved
--	Unauthorized copying of this file, via any medium is strictly prohibited
--	Proprietary and confidential
--	Written by Daniel Lett <me@lettuceboi.org>, December 2012
]]--

local SCREEN_X, SCREEN_Y = guiGetScreenSize()
local resourceName = getResourceName( getThisResource( ) )

------------------------------------------
function search ( )
	guiSetInputEnabled ( true )
	local window = { }
	local width = 400
	local height = 200
	local x = SCREEN_X / 2 - width / 2
	local y = SCREEN_Y / 2 - height / 2
	window.window = guiCreateWindow( x, y, width, height, "MDC Search", false )
	
	window.searchEdit = guiCreateEdit( 10, 30, width - 20, 40, "Enter Search...", false, window.window )
	
	window.searchCombo = guiCreateComboBox ( 10, 80, width - 20, 95, "Select a search type", false, window.window )
	guiComboBoxAddItem( window.searchCombo, "Person" )
	guiComboBoxAddItem( window.searchCombo, "Vehicle by Plate" )
	guiComboBoxAddItem( window.searchCombo, "Property by ZIP Code (( ID ))" )
	guiComboBoxAddItem( window.searchCombo, "Vehicle by VIN" )
	
	window.goButton = guiCreateButton( 10, 110, width - 20, 40, "Search!", false, window.window )
	addEventHandler( "onClientGUIClick", window.goButton, 
		function ()
			local query = guiGetText( window.searchEdit )
			local queryType = guiComboBoxGetSelected ( window.searchCombo )
			
			guiSetInputEnabled ( false )
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			triggerServerEvent( resourceName ..":search", getLocalPlayer(), query, queryType )
		end
	, false )
	window.closeButton = guiCreateButton( 10, 160, width - 20, 40, "Close", false, window.window )
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

function search_noresult ( )
	local window = { }
	local width = 240
	local height = 110
	local x = SCREEN_X / 2 - width / 2
	local y = SCREEN_Y / 2 - height / 2
	window.window = guiCreateWindow( x, y, width, height, "MDC Search - No Results!", false )
	
	window.errorLabel = guiCreateLabel( 10, 30, width - 20, 20, "We couldn't find any matches for that!", false, window.window )
	
	
	window.closeButton = guiCreateButton( 10, 60, width - 20, 40, "Close", false, window.window )
	addEventHandler( "onClientGUIClick", window.closeButton, 
		function ()
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			search( )
		end
	, false )
end

function search_error ( )
	local window = { }
	local width = 210
	local height = 110
	local x = SCREEN_X / 2 - width / 2
	local y = SCREEN_Y / 2 - height / 2
	window.window = guiCreateWindow( x, y, width, height, "MDC Search Error", false )
	
	window.errorLabel = guiCreateLabel( 10, 30, width - 20, 20, "You need to select a search type!", false, window.window )
	
	
	window.closeButton = guiCreateButton( 10, 60, width - 20, 40, "Close", false, window.window )
	addEventHandler( "onClientGUIClick", window.closeButton, 
		function ()
			guiSetVisible( window.window, false )
			destroyElement( window.window )
			window = { }
			search( )
		end
	, false )
end

------------------------------------------
addEvent( resourceName .. ":search_error", true )
addEvent( resourceName .. ":search_noresult", true )
addEventHandler( resourceName .. ":search_error", getRootElement(), search_error )
addEventHandler( resourceName .. ":search_noresult", getRootElement(), search_noresult )
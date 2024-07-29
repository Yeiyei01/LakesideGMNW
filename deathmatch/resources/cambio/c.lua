bindKey("1", "down", function(key)
    if (key == "1") then 
        if (getKeyState("lctrl")) then 
            if isPedInVehicle(localPlayer) then
                local veh = getPedOccupiedVehicle(localPlayer)
        
                if not getVehicleOccupant(veh, 0) then
                    
                    triggerServerEvent ( "warpPed", resourceRoot, localPlayer, veh, 0)

                end
            end
        end  
    end  
end) 

bindKey("2", "down", function(key)
    if (key == "2") then 
        if (getKeyState("lctrl")) then 
            if isPedInVehicle(localPlayer) then
                local veh = getPedOccupiedVehicle(localPlayer)
        
                if not getVehicleOccupant(veh, 1) then
                    triggerServerEvent ( "warpPed", resourceRoot, localPlayer, veh, 1)
                end
            end
        end  
    end  
end) 

bindKey("3", "down", function(key)
    if (key == "3") then 
        if (getKeyState("lctrl")) then 
            if isPedInVehicle(localPlayer) then
                local veh = getPedOccupiedVehicle(localPlayer)
        
                if not getVehicleOccupant(veh, 2) then
                    triggerServerEvent ( "warpPed", resourceRoot, localPlayer, veh, 2)
                end
            end
        end  
    end  
end) 

bindKey("4", "down", function(key)
    if (key == "4") then 
        if (getKeyState("lctrl")) then 
            if isPedInVehicle(localPlayer) then
                local veh = getPedOccupiedVehicle(localPlayer)
        
                if not getVehicleOccupant(veh, 3) then
                    triggerServerEvent ( "warpPed", resourceRoot, localPlayer, veh, 3)
                end
            end
        end  
    end  
end) 
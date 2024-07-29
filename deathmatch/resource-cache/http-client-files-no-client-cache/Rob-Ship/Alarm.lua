
--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

function StartRobShipAlarm()
    Sound_Alarm = playSound3D("horn.mp3", 32.64, -1992.19, 2.38)
    setSoundVolume(Sound_Alarm, 0.3)
    setSoundMinDistance(Sound_Alarm, 0)
    setSoundMaxDistance(Sound_Alarm, 500)
end
addEvent("StartRobShipAlarm", true)
addEventHandler("StartRobShipAlarm", root, StartRobShipAlarm)

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

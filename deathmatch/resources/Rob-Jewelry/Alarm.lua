
--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

function StartRobJewelryAlarm()
    Sound_Alarm = playSound3D("Alarm.mp3", 454.99, -1525.68, 20.57)
    setSoundVolume(Sound_Alarm, 0.3)
    setSoundMinDistance(Sound_Alarm, 0)
    setSoundMaxDistance(Sound_Alarm, 100)
end
addEvent("StartRobJewelryAlarm", true)
addEventHandler("StartRobJewelryAlarm", root, StartRobJewelryAlarm)

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

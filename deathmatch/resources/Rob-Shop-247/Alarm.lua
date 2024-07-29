
--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

function StartRobAlarm()
    Sound_Alarm = playSound3D("Alarme.mp3", 1314.71, -889.16, 39.63)
    setSoundVolume(Sound_Alarm, 0.3)
    setSoundMinDistance(Sound_Alarm, 0)
    setSoundMaxDistance(Sound_Alarm, 100)
end
addEvent("StartRobAlarm", true)
addEventHandler("StartRobAlarm", root, StartRobAlarm)

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

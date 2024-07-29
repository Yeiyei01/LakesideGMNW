
--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

function StartRobBankAlarm()
    Sound_Alarm = playSound3D("Alarm.mp3", 1793.85, -1362.23, 14.39)
    setSoundVolume(Sound_Alarm, 0.3)
    setSoundMinDistance(Sound_Alarm, 0)
    setSoundMaxDistance(Sound_Alarm, 100)
end
addEvent("StartRobBankAlarm", true)
addEventHandler("StartRobBankAlarm", root, StartRobBankAlarm)

--------------------------------------------------------
-----------------------Game Light-----------------------
-------- Discord https://discord.gg/HFwHnGguun ---------
--------------------------------------------------------

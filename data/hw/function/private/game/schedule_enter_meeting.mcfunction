title @a times 5 30 5
title @a subtitle [{"text": "祝你今晚有个好梦……","color": "white"}]
title @a title [{"text": "夜幕降临","color": "red"}]

execute as @a at @s run playsound block.bell.use player @s ~ ~ ~

schedule function hw:private/game/schedule_enter_meeting_2 40t replace
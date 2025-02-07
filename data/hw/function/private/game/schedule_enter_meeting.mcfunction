title @a times 5 30 5
title @a subtitle [{"text": "即将召开集体会议","color": "white"}]
title @a title [{"text": "会议时间","color": "blue"}]

execute as @a at @s run playsound block.bell.use player @s ~ ~ ~

schedule function hw:private/game/schedule_enter_meeting_2 40t replace
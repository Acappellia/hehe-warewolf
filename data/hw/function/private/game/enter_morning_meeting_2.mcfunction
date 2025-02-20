#change status

scoreboard players set #morning_meeting_counter hw 60
bossbar set morning_meeting_counter max 60
bossbar set morning_meeting_counter value 60
bossbar set morning_meeting_counter name "- 晨会 - 剩余 1:00"

bossbar set morning_meeting_counter visible true
bossbar set day_counter visible false
bossbar set meeting_counter visible false
bossbar set night_indicator visible false
bossbar set vote_indicator visible false

title @a times 5 60 10
title @a subtitle [{"text": "新的一天","color": "white"}]
title @a title [{"text": "晨会时间","color": "yellow"}]

execute as @a at @s run playsound block.bell.use player @s ~ ~ ~

#refresh structure
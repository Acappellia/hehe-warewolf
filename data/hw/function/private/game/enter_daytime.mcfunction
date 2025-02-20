scoreboard players set #game_status hw 2

execute as @a run attribute @s block_interaction_range base reset

#execute as @a[gamemode=!spectator] at @s run execute as @e[type=marker,tag=loc_record] if score @s hw.player_id = @p[distance=..1] hw.player_id run tp @p[distance=..1] @s
#kill @e[type=marker,tag=loc_record]

spreadplayers 0 -10 10 60 under 82 false @a

#change status
scoreboard players set #game_status hw 2

scoreboard players set #day_counter hw 120
bossbar set day_counter max 120
bossbar set day_counter value 120
bossbar set day_counter name "- 白天 - 剩余 2:00"

bossbar set morning_meeting_counter visible false
bossbar set day_counter visible true
bossbar set meeting_counter visible false
bossbar set night_indicator visible false
bossbar set vote_indicator visible false

title @a times 5 60 10
title @a subtitle [{"text": "收集资源，交流信息","color": "white"}]
title @a title [{"text": "自由活动","color": "yellow"}]

execute as @a at @s run playsound block.bell.use player @s ~ ~ ~

#refresh structure
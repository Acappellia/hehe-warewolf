#change status
scoreboard players set #game_status hw 2

scoreboard players set #day_counter hw 300
bossbar set day_counter max 300
bossbar set day_counter value 300
bossbar set day_counter name "- 白天 - 剩余 5:00"

bossbar set day_counter visible true
bossbar set meeting_counter visible false
bossbar set night_indicator visible false
bossbar set vote_indicator visible false

title @a times 5 60 10
title @a subtitle [{"text": "收集材料，完成任务","color": "white"}]
title @a title [{"text": "新的一天","color": "yellow"}]

execute as @a at @s run playsound block.bell.use player @s ~ ~ ~

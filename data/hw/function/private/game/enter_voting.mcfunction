scoreboard players set #game_status hw 4

bossbar set day_counter visible false
bossbar set meeting_counter visible false
bossbar set night_indicator visible false
bossbar set vote_indicator visible true

title @a times 5 40 5
title @a subtitle [{"text": "选出你认为的狼人","color": "white"}]
title @a title [{"text": "投票时间","color": "blue"}]

execute as @a at @s run playsound block.bell.use player @s ~ ~ ~

scoreboard players reset #vote_skip_counts hw
execute as @a[gamemode=!spectator] at @s run function hw:private/menu/open_vote_menu
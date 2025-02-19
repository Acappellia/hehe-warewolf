tellraw @a [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "游戏结束","color": "white"}]

#reset all status
scoreboard players set #game_status hw 0
function hw:give_character/reset

bossbar set day_counter visible false
bossbar set meeting_counter visible false
bossbar set night_indicator visible false
bossbar set vote_indicator visible false

kill @e[type=marker,tag=loc_record]

effect clear @a weakness
effect clear @a darkness
execute as @a run attribute @s block_interaction_range base reset

scoreboard players reset @a hw.player_vote_get
tag @a remove voted_out

tag @a remove voted

scoreboard players reset #max_vote_player hw
scoreboard players set #max_vote hw 0

title @a times 0 60 20
title @a subtitle ""
title @a title [{"text": "人类阵营 胜利","color": "yellow"}]

#effect
effect give @a instant_health 1 9 true
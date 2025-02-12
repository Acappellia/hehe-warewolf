tellraw @a [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "游戏结束","color": "white"}]

scoreboard players set #game_status hw 0

#reset char data
tag @a remove assigned
tag @a remove witch
tag @a remove civilian
tag @a remove prophet
tag @a remove warewolf

scoreboard players reset #warewolf_counts hw
scoreboard players reset #god_counts hw
scoreboard players reset #civilian_counts hw

tag @a remove no_warewolf
tag @a remove no_god_please_no
tag @a remove no_civilian
tag @a remove have_bp

#reset status
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

#title @a times 0 60 0
#title @a title [{"text": "游戏中止","color": "gray"}]

execute as @e[type=mutantmonsters:mutant_zombie] at @s run tp @s ~ -100 ~

#effect
effect give @a instant_health 1 9 true
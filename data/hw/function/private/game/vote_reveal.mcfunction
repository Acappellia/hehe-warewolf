execute as @a if score @s hw.player_vote_get = #max_vote hw run tag @s add voted_out

scoreboard players reset #vote_out_players hw
execute store result score #vote_out_players hw if entity @a[tag=voted_out]

scoreboard players operation #vote_skip_counts hw += #vote_skip_counts hw
execute if score #vote_skip_counts hw >= #players_alive hw run scoreboard players set #vote_out_players hw 0

title @a times 0 60 5
execute if score #vote_out_players hw matches 1 run title @a subtitle [{"selector": "@a[tag=voted_out]"},{"text":" 出局","color": "white"}]
execute if score #vote_out_players hw matches 2.. run title @a subtitle [{"selector": "@a[tag=voted_out]","separator": " "},{"text":" 平票","color": "white"}]
execute if score #vote_out_players hw matches 0 run title @a subtitle [{"text":"无人出局","color": "white"}]
title @a title [{"text": "投票结果","color": "blue"}]

execute if score #vote_out_players hw matches 1 run schedule function hw:private/game/vote_kill 80t replace
execute unless score #vote_out_players hw matches 1 run schedule function hw:private/game/schedule_enter_night 80t replace
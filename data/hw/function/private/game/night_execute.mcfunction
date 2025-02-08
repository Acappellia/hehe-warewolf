scoreboard players set #game_status hw 7

tag @a remove night_executed

#find wolf target
scoreboard players reset #max_vote_player hw
scoreboard players set #max_vote hw 0
execute as @a[gamemode=!spectator] run function hw:private/game/vote_calc

execute as @a if score @s hw.player_vote_get = #max_vote hw run tag @s add voted_out
scoreboard players reset #vote_out_players hw
execute store result score #vote_out_players hw if entity @a[tag=voted_out]

title @a times 10 60 5
execute if score #vote_out_players hw matches 1 run title @a[tag=warewolf] subtitle [{"text": "目标","color": "white"},{"selector": "@a[tag=voted_out]"}]
execute if score #vote_out_players hw matches 1 run title @a[tag=warewolf] title [{"text": "猎物确定，准备行动...","color": "red"}]

execute if score #vote_out_players hw matches 2.. run title @a[tag=warewolf] title [{"text": "目标未定，暂不作行动","color": "gray"}]
execute if score #vote_out_players hw matches 2.. run tag @a remove voted_out

execute if score #vote_out_players hw matches 0 run title @a[tag=warewolf] title [{"text": "目标未定，暂不作行动","color": "gray"}]
execute if score #vote_out_players hw matches 0 run tag @a remove voted_out

schedule function hw:private/game/night_execute_2 80t replace
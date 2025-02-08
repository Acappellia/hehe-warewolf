tag @p[distance=..3,tag=clicker] add night_executed

scoreboard players reset #check_prophet hw

execute if score #prophet_quest hw matches 1 as @p[distance=..3,tag=clicker] run function hw:private/prophet_quest/check_1
execute if score #prophet_quest hw matches 2 as @p[distance=..3,tag=clicker] run function hw:private/prophet_quest/check_2
execute if score #prophet_quest hw matches 3 as @p[distance=..3,tag=clicker] run function hw:private/prophet_quest/check_3
execute if score #prophet_quest hw matches 4 as @p[distance=..3,tag=clicker] run function hw:private/prophet_quest/check_4
execute if score #prophet_quest hw matches 5 as @p[distance=..3,tag=clicker] run function hw:private/prophet_quest/check_5
execute if score #prophet_quest hw matches 6 as @p[distance=..3,tag=clicker] run function hw:private/prophet_quest/check_6
execute if score #prophet_quest hw matches 7 as @p[distance=..3,tag=clicker] run function hw:private/prophet_quest/check_7
execute if score #prophet_quest hw matches 8 as @p[distance=..3,tag=clicker] run function hw:private/prophet_quest/check_8

execute unless score #check_prophet hw matches 1 as @p[distance=..3,tag=clicker] run return run function hw:private/menu/click/prophet_fail

playsound block.bell.resonate player @p[distance=..3,tag=clicker] ~ ~ ~ 1 1
scoreboard players operation #vote_target_player hw = @s hw.player_id
execute as @a[gamemode=!spectator] if score @s hw.player_id = #vote_target_player hw run function hw:private/menu/click/prophet_show
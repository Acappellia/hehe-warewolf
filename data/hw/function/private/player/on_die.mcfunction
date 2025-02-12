scoreboard players reset @s hw.player_die

gamemode spectator @s

setblock ~ ~ ~ deepslate_brick_wall[east=low,west=low] destroy
setblock ~ ~1 ~ player_head destroy
execute if score @s hw.player_id matches 1 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[{Slot:1b}].components."minecraft:profile"
execute if score @s hw.player_id matches 2 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[{Slot:2b}].components."minecraft:profile"
execute if score @s hw.player_id matches 3 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[{Slot:3b}].components."minecraft:profile"
execute if score @s hw.player_id matches 4 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[{Slot:4b}].components."minecraft:profile"
execute if score @s hw.player_id matches 5 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[{Slot:5b}].components."minecraft:profile"
execute if score @s hw.player_id matches 6 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[{Slot:6b}].components."minecraft:profile"
execute if score @s hw.player_id matches 7 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[{Slot:7b}].components."minecraft:profile"
execute if score @s hw.player_id matches 8 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[{Slot:8b}].components."minecraft:profile"
execute if score @s hw.player_id matches 9 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[{Slot:9b}].components."minecraft:profile"
execute if score @s hw.player_id matches 10 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[{Slot:10b}].components."minecraft:profile"
execute if score @s hw.player_id matches 11 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[{Slot:11b}].components."minecraft:profile"
execute if score @s hw.player_id matches 12 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[{Slot:12b}].components."minecraft:profile"

execute unless entity @s[tag=redman] run return 1

execute store result score #redman_x hw run data get entity @s Pos[0]
execute store result score #redman_y hw run data get entity @s Pos[1]
execute store result score #redman_z hw run data get entity @s Pos[2]

title @a times 5 40 0
title @a subtitle [{"text": "X:","color": "gray"},{"score": {"name": "#redman_x","objective": "hw"},"color": "white"},{"text": " Y:","color": "gray"},{"score": {"name": "#redman_y","objective": "hw"},"color": "white"},{"text": " Z:","color": "gray"},{"score": {"name": "#redman_z","objective": "hw"},"color": "white"}]
title @a title [{"text": "生命体征消失信号","color": "red"}]

fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 emerald_block destroy
setblock ~ ~ ~ beacon
fill ~ ~2 ~ ~ 319 ~ air destroy
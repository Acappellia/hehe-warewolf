scoreboard players reset @s hw.player_die

gamemode spectator @s

setblock ~ ~ ~ deepslate_brick_wall
setblock ~ ~1 ~ player_head
execute if score @s hw.player_id matches 1 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[1].components."minecraft:profile"
execute if score @s hw.player_id matches 2 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[2].components."minecraft:profile"
execute if score @s hw.player_id matches 3 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[3].components."minecraft:profile"
execute if score @s hw.player_id matches 4 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[4].components."minecraft:profile"
execute if score @s hw.player_id matches 5 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[5].components."minecraft:profile"
execute if score @s hw.player_id matches 6 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[6].components."minecraft:profile"
execute if score @s hw.player_id matches 7 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[7].components."minecraft:profile"
execute if score @s hw.player_id matches 8 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[8].components."minecraft:profile"
execute if score @s hw.player_id matches 9 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[9].components."minecraft:profile"
execute if score @s hw.player_id matches 10 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[10].components."minecraft:profile"
execute if score @s hw.player_id matches 11 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[11].components."minecraft:profile"
execute if score @s hw.player_id matches 12 run data modify block ~ ~1 ~ profile set from block 0 -64 0 Items[12].components."minecraft:profile"

execute unless entity @s[tag=redman] run return 1

execute store result score #redman_x hw run data get entity @s Pos[0]
execute store result score #redman_y hw run data get entity @s Pos[1]
execute store result score #redman_z hw run data get entity @s Pos[2]

title @a times 5 40 0
title @a subtitle [{"text": "X:","color": "gray"},{"score": {"name": "#redman_x","objective": "hw"},"color": "white"},{"text": " ,Y:","color": "gray"},{"score": {"name": "#redman_y","objective": "hw"},"color": "white"},{"text": " ,Z:","color": "gray"},{"score": {"name": "#redman_z","objective": "hw"},"color": "white"}]
title @a title [{"text": "生命体征消失信号","color": "red"}]

fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 emerald_block
setblock ~ ~ ~ beacon
fill ~ ~2 ~ ~ 319 ~ air
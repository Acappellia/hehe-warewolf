advancement revoke @s only hw:give_material

execute if score #lighthouse_finished hw matches 1.. run tellraw @s [{"text": "> ","color": "dark_gray"},{"text": "灯塔已经完成修复！","color": "gray"}]

execute store result score #iron_ingot_count hw run clear @s iron_ingot
execute if score #iron_ingot_count hw matches ..0 run return run tellraw @s [{"text": "> ","color": "dark_gray"},{"text": "收集","color": "gray"},{"text": " 铁锭 ","color": "white"},{"text": "并提交，修复灯塔！","color": "gray"}]

clear @s iron_ingot
scoreboard players operation #lighthouse_progress hw += #iron_ingot_count hw
execute store result bossbar lighthouse value run scoreboard players get #lighthouse_progress hw

execute if score #lighthouse_progress hw matches ..31 run return -1

scoreboard players set #lighthouse_finished hw 1
bossbar set lighthouse name "灯塔已修复"

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 0.3 1.6

title @a times 5 60 10
title @a subtitle [{"text": "黑夜不再为祂们庇护","color": "white"}]
title @a title [{"text": "灯塔已修复","color": "yellow"}]
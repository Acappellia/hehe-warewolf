
#remove exsisting char
clear @a
tag @a remove assigned
tag @a remove hunter
tag @a remove civilian
tag @a remove prophet
tag @a remove warewolf

scoreboard players reset #warewolf_counts hw
scoreboard players reset #god_counts hw
scoreboard players reset #civilian_counts hw

#effect
title @a times 5 80 10
execute as @a run playsound minecraft:block.bell.resonate player @s ~ ~ ~ 1 1

#give basic tools
item replace entity @a[gamemode=!spectator] hotbar.0 with stone_sword
item replace entity @a[gamemode=!spectator] hotbar.1 with stone_axe
item replace entity @a[gamemode=!spectator] hotbar.2 with stone_pickaxe
item replace entity @a[gamemode=!spectator] hotbar.3 with stone_shovel
item replace entity @a[gamemode=!spectator] hotbar.4 with bread[item_name='"船员口粮"'] 6

#assign char
execute as @a[tag=have_bp,sort=random,gamemode=!adventure] run function hw:private/ch_assign/assign_bp
execute as @a[tag=!assigned,sort=random,gamemode=!adventure] run function hw:private/ch_assign/assign_nobp

#give player number
scoreboard players set #current_player_id hw 1
execute as @a[sort=random] run function hw:private/ch_assign/give_number

#tell warewolves
tellraw @a[tag=warewolf] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "你的队友是： ","color": "white"},{"selector": "@a[tag=warewolf]","bold": true,"color": "red","separator": " "}]

#change game status
scoreboard players set #game_status hw 1

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
title @a times 5 40 10
execute as @a run playsound minecraft:block.bell.resonate player @s ~ ~ ~ 1 1

#give basic tools
give @a[gamemode=!spectator] stone_sword
give @a[gamemode=!spectator] stone_axe
give @a[gamemode=!spectator] stone_pickaxe
give @a[gamemode=!spectator] stone_shovel
give @a[gamemode=!spectator] bread[item_name='"船员口粮"'] 3

#assign char
execute as @a[tag=have_bp,sort=random,gamemode=!adventure] run function hw:private/ch_assign/assign_bp
execute as @a[tag=!assigned,sort=random,gamemode=!adventure] run function hw:private/ch_assign/assign_nobp

#remove tags
tag @a remove no_warewolf
tag @a remove no_god_please_no
tag @a remove no_civilian
tag @a remove have_bp

scoreboard players set #game_status hw 1
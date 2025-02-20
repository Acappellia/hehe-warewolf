
#remove exsisting char
clear @a
tag @a remove assigned
tag @a remove witch
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
item replace entity @a[gamemode=!spectator] hotbar.0 with stone_pickaxe[can_break={blocks:["iron_ore","coal_ore"]},unbreakable={}]

#random god list
execute store result score #god_list hw run random value 1..2

execute if score #god_list hw matches 1 run data modify storage hw:tmp god_list set value [2,1]
execute if score #god_list hw matches 2 run data modify storage hw:tmp god_list set value [1,2]

#assign char
execute as @a[tag=have_bp,sort=random,gamemode=!spectator] run function hw:private/ch_assign/assign_bp
execute as @a[tag=!assigned,sort=random,gamemode=!spectator] run function hw:private/ch_assign/assign_nobp

#give player number
scoreboard players set #current_player_id hw 1
scoreboard players set #current_wolf_id hw 1
execute as @a[sort=random,gamemode=!spectator] run function hw:private/ch_assign/give_number
execute as @a[sort=random,gamemode=!spectator,tag=warewolf] run function hw:private/ch_assign/give_wolf_number

#give warewolf item
item replace entity @a[tag=warewolf,scores={hw.wolf_id=1}] hotbar.6 with amethyst_shard[custom_data={hw_darkness:1b},enchantments={vanishing_curse:1},item_model="ender_eye",consumable={animation:"none",consume_seconds:0.1,sound:"ui.toast.in",has_consume_particles:false},item_name='"darkness"',custom_name='[{"text": "月舞的序幕 ","color": "white","bold": true},{"text": "(右键)(消耗)","color": "gold","bold": true}]',lore=['[{"text": "致盲所有敌人30秒","color": "gray"}]','[{"text": "仅可以在白天使用","color": "dark_gray"}]']]
item replace entity @a[tag=warewolf,scores={hw.wolf_id=2}] hotbar.6 with amethyst_shard[custom_data={hw_vanish:1b},enchantments={vanishing_curse:1},item_model="glass_bottle",consumable={animation:"none",consume_seconds:0.1,sound:"ui.toast.in",has_consume_particles:false},item_name='"vanish"',custom_name='[{"text": "夜晚的轻纱 ","color": "white","bold": true},{"text": "(右键)(消耗)","color": "gold","bold": true}]',lore=['[{"text": "自身隐形60秒","color": "gray"}]','[{"text": "仅可以在白天使用","color": "dark_gray"}]']]
item replace entity @a[tag=warewolf] hotbar.7 with amethyst_shard[custom_data={hw_zibao:1b},enchantments={vanishing_curse:1},item_model="fire_charge",consumable={animation:"none",consume_seconds:0.1,sound:"ui.toast.in",has_consume_particles:false},item_name='"vanish"',custom_name='[{"text": "【自爆】","color": "red","bold": true},{"text": "赤月的终曲 ","color": "white","bold": true},{"text": "(右键)(消耗)","color": "gold","bold": true}]',lore=['[{"text": "结束会议，直接进入夜晚，随后自己死亡","color": "gray"}]','[{"text": "仅可在会议中使用（晨会或晚会）","color": "dark_gray"}]']]

#give career loopup item
item replace entity @a[gamemode=!spectator] hotbar.8 with book[custom_data={hw_lookup:1b},enchantments={vanishing_curse:1},item_name='"character"',custom_name='[{"text": "查看角色","color": "white","bold": true}]',lore=['[{"text": "手持时提示自己的角色，以防你忘记了","color": "gray"}]']]

#tell warewolves
tellraw @a[tag=warewolf] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "你的队友是： ","color": "white"},{"selector": "@a[tag=warewolf]","bold": true,"color": "red","separator": " "}]

#change game status
scoreboard players set #game_status hw 1
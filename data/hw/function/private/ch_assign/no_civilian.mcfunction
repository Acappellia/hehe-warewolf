execute unless score #god_counts hw >= #max_gods hw if predicate hw:50_chance run return run function hw:private/ch_assign/god
execute unless score #warewolf_counts hw >= #max_warewolves hw run return run function hw:private/ch_assign/warewolf

#tellraw @s [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "空余职位不足，无法满足你的需求:禁选平民","color": "white"}]
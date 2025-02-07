execute if score #warewolf_counts hw < #max_warewolves hw if predicate hw:50_chance run return run function hw:private/ch_assign/warewolf
execute if score #civilian_counts hw < #max_civilians hw run return run function hw:private/ch_assign/civilian

tellraw @s [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "空余职位不足，无法满足你的需求:禁选神职","color": "white"}]
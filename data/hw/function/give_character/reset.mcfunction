#reset char data
tag @a remove assigned
tag @a remove hunter
tag @a remove civilian
tag @a remove prophet
tag @a remove warewolf

scoreboard players reset #warewolf_counts hw
scoreboard players reset #god_counts hw
scoreboard players reset #civilian_counts hw

tag @a remove no_warewolf
tag @a remove no_god_please_no
tag @a remove no_civilian
tag @a remove have_bp

tellraw @a [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "职业已重置！","color": "white"}]

scoreboard players set #game_status hw 0
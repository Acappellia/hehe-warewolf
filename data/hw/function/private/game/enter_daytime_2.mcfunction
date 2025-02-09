#change status
scoreboard players set #game_status hw 2

scoreboard players set #day_counter hw 180
bossbar set day_counter max 180
bossbar set day_counter value 180
bossbar set day_counter name "- 白天 - 剩余 3:00"

bossbar set day_counter visible true
bossbar set meeting_counter visible false
bossbar set night_indicator visible false
bossbar set vote_indicator visible false

title @a times 5 60 10
title @a subtitle [{"text": "所有资源点已刷新","color": "white"}]
title @a title [{"text": "新的一天","color": "yellow"}]

execute as @a at @s run playsound block.bell.use player @s ~ ~ ~

#random prophet quest
execute store result score #prophet_quest hw run random value 1..8
execute if score #prophet_quest hw matches 1 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 5 个铁锭","color": "yellow","bold": true}]
execute if score #prophet_quest hw matches 2 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 16 个云杉原木","color": "yellow","bold": true}]
execute if score #prophet_quest hw matches 3 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 1 个绿宝石","color": "yellow","bold": true}]
execute if score #prophet_quest hw matches 4 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 3 个熟鲑鱼","color": "yellow","bold": true}]
execute if score #prophet_quest hw matches 5 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 32 个圆石","color": "yellow","bold": true}]
execute if score #prophet_quest hw matches 6 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 8 个煤炭","color": "yellow","bold": true}]
execute if score #prophet_quest hw matches 7 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 10 个青金石","color": "yellow","bold": true}]
execute if score #prophet_quest hw matches 8 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 3 个面包","color": "yellow","bold": true}]

#refresh structure
place template hw:mine_01 2991 69 3195
place template hw:mine_02 2907 137 3307
place template hw:mine_03 3146 81 3011
place template hw:mine_05 2855 77 2875
place template hw:tree_1 2956 73 2942
place template hw:tree_2 2848 103 3177
execute as @a at @s run playsound item.goat_horn.sound.3 player @s ~ ~ ~ 1 1

#remove tags
tag @a remove no_warewolf
tag @a remove no_god_please_no
tag @a remove no_civilian
tag @a remove have_bp

tellraw @a [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "游戏开始！","color": "white"}]

#set status
scoreboard players set #game_status hw 2

scoreboard players set #coal_required hw 16

scoreboard players set #day_counter hw 300
bossbar set day_counter max 300
bossbar set day_counter value 300
bossbar set day_counter name "- 白天 - 剩余 5:00"

bossbar set day_counter visible true
bossbar set meeting_counter visible false
bossbar set night_indicator visible false
bossbar set vote_indicator visible false

#effect
effect give @a instant_health 1 9 true
effect clear @a resistance

#set player heads

setblock 0 -64 0 bedrock
setblock 0 -64 0 white_shulker_box{Items:[\
{Slot:1b,id:"player_head",count:1},\
{Slot:2b,id:"player_head",count:1},\
{Slot:3b,id:"player_head",count:1},\
{Slot:4b,id:"player_head",count:1},\
{Slot:5b,id:"player_head",count:1},\
{Slot:6b,id:"player_head",count:1},\
{Slot:7b,id:"player_head",count:1},\
{Slot:8b,id:"player_head",count:1},\
{Slot:9b,id:"player_head",count:1},\
{Slot:10b,id:"player_head",count:1},\
{Slot:11b,id:"player_head",count:1},\
{Slot:12b,id:"player_head",count:1}]}

execute as @a[scores={hw.player_id=1}] run item modify block 0 -64 0 container.1 hw:set_skull
execute as @a[scores={hw.player_id=2}] run item modify block 0 -64 0 container.2 hw:set_skull
execute as @a[scores={hw.player_id=3}] run item modify block 0 -64 0 container.3 hw:set_skull
execute as @a[scores={hw.player_id=4}] run item modify block 0 -64 0 container.4 hw:set_skull
execute as @a[scores={hw.player_id=5}] run item modify block 0 -64 0 container.5 hw:set_skull
execute as @a[scores={hw.player_id=6}] run item modify block 0 -64 0 container.6 hw:set_skull
execute as @a[scores={hw.player_id=7}] run item modify block 0 -64 0 container.7 hw:set_skull
execute as @a[scores={hw.player_id=8}] run item modify block 0 -64 0 container.8 hw:set_skull
execute as @a[scores={hw.player_id=9}] run item modify block 0 -64 0 container.9 hw:set_skull
execute as @a[scores={hw.player_id=10}] run item modify block 0 -64 0 container.10 hw:set_skull
execute as @a[scores={hw.player_id=11}] run item modify block 0 -64 0 container.11 hw:set_skull
execute as @a[scores={hw.player_id=12}] run item modify block 0 -64 0 container.12 hw:set_skull

data remove storage hw:players names
data modify storage hw:players names.1 set from block 0 -64 0 Items[{Slot:1b}].components."minecraft:profile".name
data modify storage hw:players names.2 set from block 0 -64 0 Items[{Slot:2b}].components."minecraft:profile".name
data modify storage hw:players names.3 set from block 0 -64 0 Items[{Slot:3b}].components."minecraft:profile".name
data modify storage hw:players names.4 set from block 0 -64 0 Items[{Slot:4b}].components."minecraft:profile".name
data modify storage hw:players names.5 set from block 0 -64 0 Items[{Slot:5b}].components."minecraft:profile".name
data modify storage hw:players names.6 set from block 0 -64 0 Items[{Slot:6b}].components."minecraft:profile".name
data modify storage hw:players names.7 set from block 0 -64 0 Items[{Slot:7b}].components."minecraft:profile".name
data modify storage hw:players names.8 set from block 0 -64 0 Items[{Slot:8b}].components."minecraft:profile".name
data modify storage hw:players names.9 set from block 0 -64 0 Items[{Slot:9b}].components."minecraft:profile".name
data modify storage hw:players names.10 set from block 0 -64 0 Items[{Slot:10b}].components."minecraft:profile".name
data modify storage hw:players names.11 set from block 0 -64 0 Items[{Slot:11b}].components."minecraft:profile".name
data modify storage hw:players names.12 set from block 0 -64 0 Items[{Slot:12b}].components."minecraft:profile".name


#random prophet quest

#execute store result score #prophet_quest hw run random value 1..8
#execute if score #prophet_quest hw matches 1 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 5 个铁锭","color": "yellow","bold": true}]
#execute if score #prophet_quest hw matches 2 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 16 个云杉原木","color": "yellow","bold": true}]
#execute if score #prophet_quest hw matches 3 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 1 个绿宝石","color": "yellow","bold": true}]
#execute if score #prophet_quest hw matches 4 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 3 个熟鲑鱼","color": "yellow","bold": true}]
#execute if score #prophet_quest hw matches 5 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 32 个圆石","color": "yellow","bold": true}]
#execute if score #prophet_quest hw matches 6 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 8 个煤炭","color": "yellow","bold": true}]
#execute if score #prophet_quest hw matches 7 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 10 个青金石","color": "yellow","bold": true}]
#execute if score #prophet_quest hw matches 8 run tellraw @a[tag=prophet,gamemode=!spectator] [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "水晶球为你指引了方向： ","color": "white"},{"text": "收集 3 个面包","color": "yellow","bold": true}]


tellraw @a[tag=prophet] [{"text": "> 悄悄告诉你：","color": "gray"},{"selector": "@r[tag=!warewolf,tag=!prophet]","color": "white"},{"text": " 是好人","color": "gray"}]
tellraw @a[tag=prophet] [{"text": "> 请使用 F3 + D 阅后即焚","color": "gray"}]

tag @a[tag=prophet] add can_lookup

#structure & monster
place template hw:s_1 -100 -2 197
place template hw:s_2 -101 13 179
place template hw:s_3 -9 19 -105
place template hw:s_4 5 19 -100
place template hw:s_5 188 22 75
place template hw:s_6 -193 98 28

difficulty easy

setblock 56 26 -120 air
setblock 56 26 -120 trial_spawner{normal_config:{total_mobs:2,simultaneous_mobs:1,total_mobs_added_per_player:2,simultaneous_mobs_added_per_player:1,spawn_potentials:[{data:{entity:{id:"minecraft:vindicator",HandItems:[{id:"minecraft:wooden_sword",count:1},{}]}},weight:1}]}} replace
setblock 73 26 -113 air
setblock 73 26 -113 trial_spawner{normal_config:{total_mobs:1,simultaneous_mobs:1,total_mobs_added_per_player:1,simultaneous_mobs_added_per_player:1,spawn_potentials:[{data:{entity:{id:"minecraft:evoker"}},weight:1}]}} replace
setblock 76 26 -96 air
setblock 76 26 -96 trial_spawner{normal_config:{total_mobs:4,simultaneous_mobs:2,total_mobs_added_per_player:4,simultaneous_mobs_added_per_player:2,spawn_potentials:[{data:{entity:{id:"minecraft:bogged",HandItems:[{id:"minecraft:bow",count:1},{}]}},weight:1}]}} replace

#execute as @e[type=mutantmonsters:mutant_zombie] at @s run tp @s ~ -100 ~
summon mutantmonsters:mutant_zombie 61 27 -109 {PersistenceRequired:1b}
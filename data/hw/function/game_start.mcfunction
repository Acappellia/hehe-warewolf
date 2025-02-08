#TODO "start" title
#TODO start sound

#remove tags
tag @a remove no_warewolf
tag @a remove no_god_please_no
tag @a remove no_civilian
tag @a remove have_bp

tellraw @a [{"text": "[","color": "dark_gray"},{"text": "方块狼人杀","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "游戏开始！","color": "white"}]

#set status
scoreboard players set #game_status hw 2

scoreboard players set #day_counter hw 500
bossbar set day_counter max 500
bossbar set day_counter value 500
bossbar set day_counter name "- 白天 - 剩余 5:00"

bossbar set day_counter visible true
bossbar set meeting_counter visible false
bossbar set night_indicator visible false
bossbar set vote_indicator visible false

#effect
effect give @a instant_health 1 9 true

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
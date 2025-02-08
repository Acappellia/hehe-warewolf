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

scoreboard players set #day_counter hw 180
bossbar set day_counter max 180
bossbar set day_counter value 180
bossbar set day_counter name "- 白天 - 剩余 3:00"

bossbar set day_counter visible true
bossbar set meeting_counter visible false
bossbar set night_indicator visible false
bossbar set vote_indicator visible false

#effect
effect give @a instant_health 1 9 true
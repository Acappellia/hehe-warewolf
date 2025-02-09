title @a times 5 30 5
title @a subtitle [{"text": "秘密会议结束","color": "white"}]
title @a title [{"text": "日出将至","color": "blue"}]

execute as @a[tag=warewolf,gamemode=!spectator] at @s run playsound block.bell.resonate player @s ~ ~ ~

schedule function hw:private/game/enter_dawn_2 40t replace
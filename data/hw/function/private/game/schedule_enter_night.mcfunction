execute unless score #game_status hw matches 5 run return -1

title @a times 5 20 5
title @a subtitle [{"text": "祝你今晚有个好梦……","color": "white"}]
title @a title [{"text": "夜幕降临","color": "red"}]

execute as @a at @s run playsound item.armor.equip_generic player @s

schedule function hw:private/game/enter_night 30t replace
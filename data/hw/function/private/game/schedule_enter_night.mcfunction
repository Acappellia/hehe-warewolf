#change status
scoreboard players set #game_status hw 99

execute if score #warewolves_alive hw matches ..0 run return run function hw:private/victory/civilian

title @a times 5 20 5
title @a subtitle [{"text": "祝你今晚有个好梦……","color": "white"}]
title @a title [{"text": "夜幕降临","color": "red"}]

schedule function hw:private/game/enter_night 30t replace
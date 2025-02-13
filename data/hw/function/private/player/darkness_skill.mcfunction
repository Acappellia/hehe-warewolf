advancement revoke @s only hw:darkness_skill

effect give @a[tag=!warewolf,gamemode=!spectator] darkness 60 0 true
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 0.8 1

title @a times 5 40 5
title @a subtitle "你感受到了黑暗"
title @a title [{"text":"祂的意志降临了","color": "red"}]
advancement revoke @s only hw:darkness_skill

execute unless score #game_status hw matches 2 run return run item replace entity @s weapon.mainhand with amethyst_shard[custom_data={hw_darkness:1b},enchantments={vanishing_curse:1},item_model="ender_eye",consumable={animation:"none",consume_seconds:0.1,sound:"ui.toast.in",has_consume_particles:false},item_name='"darkness"',custom_name='[{"text": "月舞的序幕 ","color": "white","bold": true},{"text": "(右键)(消耗)","color": "gold","bold": true}]',lore=['[{"text": "致盲所有敌人30秒","color": "gray"}]','[{"text": "仅可以在白天使用","color": "dark_gray"}]']]

effect give @a[tag=!warewolf,gamemode=!spectator] darkness 30 0 true
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 0.8 1

title @a times 5 40 5
title @a subtitle "你感受到了黑暗"
title @a title [{"text":"祂的意志降临了","color": "red"}]
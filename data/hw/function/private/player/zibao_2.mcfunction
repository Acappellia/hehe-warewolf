advancement revoke @s only hw:zibao_skill

execute unless score #game_status hw matches 9 run return run item replace entity @s weapon.mainhand with amethyst_shard[custom_data={hw_zibao:1b},enchantments={vanishing_curse:1},item_model="fire_charge",consumable={animation:"none",consume_seconds:0.1,sound:"ui.toast.in",has_consume_particles:false},item_name='"vanish"',custom_name='[{"text": "【自爆】","color": "red","bold": true},{"text": "赤月的终曲 ","color": "white","bold": true},{"text": "(右键)(消耗)","color": "gold","bold": true}]',lore=['[{"text": "结束会议，直接进入夜晚，随后自己死亡","color": "gray"}]','[{"text": "仅可在会议中使用（晨会或晚会）","color": "dark_gray"}]']]
execute unless score #game_status hw matches 3 run return run item replace entity @s weapon.mainhand with amethyst_shard[custom_data={hw_zibao:1b},enchantments={vanishing_curse:1},item_model="fire_charge",consumable={animation:"none",consume_seconds:0.1,sound:"ui.toast.in",has_consume_particles:false},item_name='"vanish"',custom_name='[{"text": "【自爆】","color": "red","bold": true},{"text": "赤月的终曲 ","color": "white","bold": true},{"text": "(右键)(消耗)","color": "gold","bold": true}]',lore=['[{"text": "结束会议，直接进入夜晚，随后自己死亡","color": "gray"}]','[{"text": "仅可在会议中使用（晨会或晚会）","color": "dark_gray"}]']]

scoreboard players set #game_status hw 99

playsound entity.lightning_bolt.impact player @a ~ ~ ~ 1 1
title @a times 5 40 5
title @a subtitle "黑夜即将到来……"
title @a title [{"selector":"@s","color": "red"},{"text":" 自爆了","color": "dark_red"}]


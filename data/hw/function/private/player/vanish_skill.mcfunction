advancement revoke @s only hw:vanish_skill

execute unless score #game_status hw matches 2 run return run item replace entity @s weapon.mainhand with amethyst_shard[custom_data={hw_vanish:1b},enchantments={vanishing_curse:1},item_model="glass_bottle",consumable={animation:"none",consume_seconds:0.1,sound:"ui.toast.in",has_consume_particles:false},item_name='"vanish"',custom_name='[{"text": "夜晚的轻纱 ","color": "white","bold": true},{"text": "(右键)(消耗)","color": "gold","bold": true}]',lore=['[{"text": "自身隐形60秒","color": "gray"}]','[{"text": "仅可以在白天使用","color": "dark_gray"}]']]

effect give @s invisibility 60 0 true
tag @s add prophet

title @s subtitle [{"text": "完成任务能够获得查验玩家的机会","color": "white"}]
title @s title [{"text": "[ ","color": "dark_blue"},{"text": "预言家","color": "blue"},{"text": " ]","color": "dark_blue"}]

tag @s add assigned
scoreboard players add #god_counts hw 1

#item replace entity @s hotbar.7 with wooden_hoe[enchantments={vanishing_curse:1},enchantment_glint_override=false,item_name='"【绝密】？？？"',lore=['[{"text": "手持时显示为你的职业道具","color": "gray","italic": true}]','[{"text": "无特殊道具则显示为普通的面包","color": "gray","italic": true}]'],attribute_modifiers={modifiers:[{id:"atk_speed",amount:0,operation:"add_value",type:"attack_speed"}],show_in_tooltip:false},item_model="minecraft:normal"]
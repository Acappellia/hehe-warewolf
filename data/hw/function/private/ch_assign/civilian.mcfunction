tag @s add civilian

title @s subtitle [{"text": "修复船只，找出内鬼，离开冰山！","color": "white"}]
title @s title [{"text": "[ ","color": "dark_gray"},{"text": "船员","color": "gray"},{"text": " ]","color": "dark_gray"}]

tag @s add assigned
scoreboard players add #civilian_counts hw 1

item replace entity @s hotbar.8 with wooden_hoe[enchantments={vanishing_curse:1},item_name='"【绝密】？？？"',lore=['[{"text": "手持时显示为你的职业道具","color": "gray","italic": true}]','[{"text": "无特殊道具则显示为普通的面包","color": "gray","italic": true}]'],attribute_modifiers={modifiers:[{id:"atk_speed",amount:0,operation:"add_value",type:"attack_speed"}]},item_model="minecraft:normal"]
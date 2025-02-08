execute store result score #check_item_counts hw run clear @s iron_ingot 0
execute if score #check_item_counts hw matches ..4 run return -1
scoreboard players set #check_prophet hw 1
clear @s iron_ingot 5
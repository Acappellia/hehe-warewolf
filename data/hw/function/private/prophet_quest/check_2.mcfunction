execute store result score #check_item_counts hw run clear @s spruce_log 0
execute if score #check_item_counts hw matches ..15 run return -1
scoreboard players set #check_prophet hw 1
clear @s spruce_log 16
advancement revoke @s only hw:click_skip

execute if entity @s[tag=voted] run return -1
execute if entity @s[tag=night_executed] run return -1

execute as @n[type=interaction,distance=..1.5,tag=hw_menu_skip] at @s as @n[type=text_display,distance=..0.2] run data modify entity @s background set value -10461088

execute if score #game_status hw matches 4 run tag @s add voted
execute if score #game_status hw matches 6 run tag @s add night_executed
execute if score #game_status hw matches 20 if score #witch_night_status hw matches 0 run function hw:private/menu/witch_click/s1_skip
execute if score #game_status hw matches 20 if score #witch_night_status hw matches 1 run function hw:private/menu/witch_click/s2_skip

playsound block.copper_bulb.turn_on player @s ~ ~ ~ 1

scoreboard players add #vote_skip_counts hw 1
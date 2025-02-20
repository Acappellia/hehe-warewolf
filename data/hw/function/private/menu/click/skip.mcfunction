advancement revoke @s only hw:click_skip

execute if entity @s[tag=voted] run return -1
execute if entity @s[tag=night_executed] run return -1

execute at @n[type=interaction,distance=..1] as @n[type=text_display,distance=..0.2] run data modify entity @s default_background set value 1b

execute if score #game_status hw matches 4 run tag @s add voted
execute if score #game_status hw matches 6 run tag @s add night_executed

playsound block.copper_bulb.turn_on player @s ~ ~ ~ 1

scoreboard players add #vote_skip_counts hw 1
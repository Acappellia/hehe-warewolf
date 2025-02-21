playsound minecraft:entity.witch.celebrate player @p[distance=..3,tag=clicker] ~ ~ ~ 1 0.8
scoreboard players operation #vote_target_player hw = @s hw.player_id
execute as @a[gamemode=!spectator] if score @s hw.player_id = #vote_target_player hw run tag @s add poisoned

scoreboard players set #witch_has_poison hw 0

title @p[distance=..3,tag=clicker] times 5 40 5
title @p[distance=..3,tag=clicker] subtitle [{"selector": "@a[tag=poisoned]"},{"text": " 将永眠……","color": "white"}]
title @p[distance=..3,tag=clicker] title [{"text": "毒药已投下","color": "dark_purple"}]

function hw:private/game/night_final_execute
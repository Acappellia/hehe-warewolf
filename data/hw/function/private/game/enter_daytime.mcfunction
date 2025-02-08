scoreboard players set #game_status hw 8

#give effect
effect clear @a weakness
effect clear @a darkness
execute as @a run attribute @s block_interaction_range base reset

execute as @a[gamemode=!spectator] at @s run execute as @e[type=marker,tag=loc_record] if score @s hw.player_id = @p[distance=..1] hw.player_id run tp @p[distance=..1] @s
kill @e[type=marker,tag=loc_record]

#title
schedule function hw:private/game/enter_daytime_2 20t replace
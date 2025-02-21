scoreboard players set #game_status hw 8

#give effect
#effect clear @a weakness
effect clear @a darkness

#tp to seat
execute as @a[gamemode=!spectator] at @s run execute as @e[type=item_display,tag=meeting_seat] if score @s hw.seat_no = @p[distance=..1] hw.player_id run tp @p[distance=..1] @s
execute as @a[gamemode=!spectator] at @s anchored eyes facing entity @n[type=item_display,tag=meeting_table] eyes run tp @s ~ ~ ~ ~ ~

#execute as @a[gamemode=!spectator] at @s run execute as @e[type=marker,tag=loc_record] if score @s hw.player_id = @p[distance=..1] hw.player_id run tp @p[distance=..1] @s
#kill @e[type=marker,tag=loc_record]

#title
schedule function hw:private/game/enter_morning_meeting_2 20t replace
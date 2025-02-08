scoreboard players set #game_status hw 6

execute as @a run ride @s dismount

execute as @a[gamemode=!spectator,tag=!warewolf,tag=!prophet] at @s run execute as @e[type=item_display,tag=night_seat] if score @s hw.seat_no = @p[distance=..1] hw.player_id run tp @p[distance=..1] @s
execute as @a[gamemode=!spectator,tag=warewolf] at @s run execute as @e[type=item_display,tag=meeting_seat] if score @s hw.seat_no = @p[distance=..1] hw.player_id run tp @p[distance=..1] @s
execute as @a[gamemode=!spectator,tag=prophet] at @s run execute as @e[type=item_display,tag=prophet_seat] run tp @p[distance=..1] @s

scoreboard players reset #vote_skip_counts hw
execute as @a[gamemode=!spectator,tag=warewolf] at @s run function hw:private/menu/open_vote_menu
execute as @a[gamemode=!spectator,tag=prophet] at @s run function hw:private/menu/open_vote_menu_prophet

effect give @a[tag=warewolf,gamemode=!spectator] darkness infinite 0 true
scoreboard players set #game_status hw 6

execute as @a run ride @s dismount

execute as @a[gamemode=!spectator,tag=!warewolf,tag=!prophet] at @s run execute as @e[type=item_display,tag=night_seat] if score @s hw.seat_no = @p[distance=..1] hw.player_id run tp @p[distance=..1] @s
execute as @a[gamemode=!spectator,tag=warewolf] at @s run execute as @e[type=item_display,tag=meeting_seat] if score @s hw.seat_no = @p[distance=..1] hw.player_id run tp @p[distance=..1] @s
execute as @a[gamemode=!spectator,tag=prophet] at @s run execute as @e[type=item_display,tag=prophet_seat] run tp @p[distance=..1] @s

effect give @a[tag=warewolf,gamemode=!spectator] darkness infinite 0 true

execute as @a at @s run playsound entity.lightning_bolt.thunder player @s ~ ~ ~ 0.5 0.8

schedule function hw:private/victory/warewolves_2 40t replace
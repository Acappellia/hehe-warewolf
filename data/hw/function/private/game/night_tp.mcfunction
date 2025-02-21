scoreboard players set #game_status hw 6

execute as @a run ride @s dismount

execute as @a[gamemode=!spectator,tag=!warewolf,tag=!prophet] at @s run execute as @e[type=item_display,tag=night_seat] if score @s hw.seat_no = @p[distance=..1] hw.player_id run tp @p[distance=..1] @s
execute as @a[gamemode=!spectator,tag=warewolf] at @s run execute as @e[type=item_display,tag=meeting_seat] if score @s hw.seat_no = @p[distance=..1] hw.player_id run tp @p[distance=..1] @s
execute as @a[gamemode=!spectator,tag=prophet] at @s run execute as @e[type=item_display,tag=prophet_seat] run tp @p[distance=..1] @s

scoreboard players reset #vote_skip_counts hw
execute unless score #lighthouse_finished hw matches 1 as @a[gamemode=!spectator,tag=warewolf] at @s run function hw:private/menu/open_vote_menu
execute as @a[gamemode=!spectator,tag=prophet] at @s run function hw:private/menu/open_vote_menu_prophet

effect give @a[tag=warewolf,gamemode=!spectator] darkness infinite 0 true

execute unless score #lighthouse_finished hw matches 1 run return 1
tag @a[gamemode=!spectator,tag=warewolf] add night_executed
title @a[gamemode=!spectator,tag=warewolf] times 5 40 5
title @a[gamemode=!spectator,tag=warewolf] subtitle [{"text": "你无法再于夜间行动","color": "white"}]
title @a[gamemode=!spectator,tag=warewolf] title [{"text": "灯塔驱散了夜幕","color": "gold"}]
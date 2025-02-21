scoreboard players set #game_status hw 20

execute as @a[gamemode=!spectator,tag=!witch] at @s run execute as @e[type=item_display,tag=night_seat] if score @s hw.seat_no = @p[distance=..1] hw.player_id run tp @p[distance=..1] @s
execute as @a[gamemode=!spectator,tag=witch] at @s run execute as @e[type=item_display,tag=witch] run tp @p[distance=..1] @s

function hw:private/game/witch_night_s1
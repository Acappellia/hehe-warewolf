execute if score #game_status hw matches 3..4 as @a at @s run function hw:private/game/seat_tick_meeting
execute if score #game_status hw matches 6..7 as @a[tag=civilian] at @s run function hw:private/game/seat_tick_night_civilian
execute if score #game_status hw matches 6..7 as @a[tag=warewolf] at @s run function hw:private/game/seat_tick_night_warewolf
execute if score #game_status hw matches 6..7 as @a[tag=prophet] at @s run function hw:private/game/seat_tick_night_prophet
execute as @a[scores={hw.player_die=1..}] run function hw:private/player/on_die

execute if score #game_status hw matches 8..10 as @a[gamemode=!spectator] at @s run function hw:private/game/seat_tick_meeting
execute if score #game_status hw matches 3..4 as @a[gamemode=!spectator] at @s run function hw:private/game/seat_tick_meeting
execute if score #game_status hw matches 6..7 as @a[gamemode=!spectator,tag=!warewolf,tag=!prophet] at @s run function hw:private/game/seat_tick_night_civilian
execute if score #game_status hw matches 6..7 as @a[gamemode=!spectator,tag=warewolf] at @s run function hw:private/game/seat_tick_night_warewolf
execute if score #game_status hw matches 6..7 as @a[gamemode=!spectator,tag=prophet] at @s run function hw:private/game/seat_tick_night_prophet

execute if score #game_status hw matches 20..21 as @a[gamemode=!spectator,tag=!witch] at @s run function hw:private/game/seat_tick_night_civilian
execute if score #game_status hw matches 20..21 as @a[gamemode=!spectator,tag=witch] at @s run function hw:private/game/seat_tick_night_witch

execute store result score #players_alive hw if entity @a[gamemode=!spectator]
execute store result score #warewolves_alive hw if entity @a[gamemode=!spectator,tag=warewolf]


#show char
execute as @a run function hw:private/player/show_char
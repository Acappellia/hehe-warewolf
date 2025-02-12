execute as @a[scores={hw.player_die=1..}] at @s run function hw:private/player/on_die

execute if score #game_status hw matches 3..4 as @a[gamemode=!spectator,tag=warewolf] at @s run function hw:private/game/seat_tick_meeting
#execute if score #game_status hw matches 6..7 as @a[gamemode=!spectator,tag=!warewolf,tag=!prophet] at @s run function hw:private/game/seat_tick_night_civilian
#execute if score #game_status hw matches 6..7 as @a[gamemode=!spectator,tag=warewolf] at @s run function hw:private/game/seat_tick_night_warewolf
#execute if score #game_status hw matches 6..7 as @a[gamemode=!spectator,tag=prophet] at @s run function hw:private/game/seat_tick_night_prophet

execute store result score #players_alive hw if entity @a[gamemode=!spectator]
execute store result score #warewolves_alive hw if entity @a[gamemode=!spectator,tag=warewolf]

#execute unless score #game_status hw matches 0..1 if score #warewolves_alive hw matches ..0 run function hw:private/victory/civilian
#execute unless score #game_status hw matches 0..1 if score #warewolves_alive hw = #players_alive hw run function hw:private/victory/warewolves_kill

#prophet

execute as @a[tag=lookup] run function hw:private/player/tell_prophet
tag @a remove lookup

execute as @a run function hw:private/player/show_char

execute if score #game_status hw matches 2 positioned -9 26 54 run function hw:private/coal/coal_tick
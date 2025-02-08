schedule function hw:private/slow_tick 20t replace

bossbar set day_counter players @a
bossbar set meeting_counter players @a
bossbar set night_indicator players @a
bossbar set vote_indicator players @a

execute if score #game_pause hw matches 1 run return run function hw:private/game/pause_tick

effect give @a night_vision infinite 0 true
execute if score #game_status hw matches 0..1 run effect give @a saturation 1 1 true

execute if score #game_status hw matches 2 run function hw:private/game/daytime_tick
execute if score #game_status hw matches 3 run function hw:private/game/meeting_tick

execute if score #game_status hw matches 4 unless entity @a[gamemode=!spectator,tag=!voted] run function hw:private/game/enter_vote_execute

execute if score #game_status hw matches 6..7 run function hw:private/game/night_tick
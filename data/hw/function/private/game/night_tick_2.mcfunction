execute as @a[tag=!warewolf,tag=!prophet,gamemode=!spectator] run function hw:private/game/show_blackscreen_loop

execute if score #game_status hw matches 21 run return -1
execute unless entity @a[gamemode=!spectator,tag=warewolf,tag=!night_executed] unless entity @a[gamemode=!spectator,tag=prophet,tag=!night_executed] run function hw:private/game/night_final_execute
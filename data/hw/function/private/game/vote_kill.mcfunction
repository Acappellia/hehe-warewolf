execute as @a[gamemode=!spectator] run function hw:private/game/show_blackscreen_short
tp @a[tag=voted_out] -3 46 -21

schedule function hw:private/game/vote_kill_2 40t replace
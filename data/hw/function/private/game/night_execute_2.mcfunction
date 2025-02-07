kill @a[tag=voted_out]

scoreboard players reset @a hw.player_vote_get
tag @a remove voted_out

execute as @a[tag=warewolf] run function hw:private/game/show_blackscreen_init
execute as @a[tag=prophet] run function hw:private/game/show_blackscreen_init

schedule function hw:private/game/enter_daytime 15t replace
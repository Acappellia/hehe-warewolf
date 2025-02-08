function hw:private/menu/close_all_menu

kill @a[tag=voted_out]

scoreboard players reset @a hw.player_vote_get
tag @a remove voted_out

execute as @a[tag=warewolf,gamemode=!spectator] run function hw:private/game/show_blackscreen_init
execute as @a[tag=prophet,gamemode=!spectator] run function hw:private/game/show_blackscreen_init

schedule function hw:private/game/enter_daytime 12t replace
function hw:private/menu/close_all_menu

kill @a[tag=voted_out]

scoreboard players reset @a hw.player_vote_get
tag @a remove voted_out

execute as @a[tag=warewolf,gamemode=!spectator] run function hw:private/game/show_blackscreen_init
execute as @a[tag=prophet,gamemode=!spectator] run function hw:private/game/show_blackscreen_init

scoreboard players operation #warewolves_alive hw += #warewolves_alive hw
#execute if score #warewolves_alive hw >= #players_alive hw run return run function hw:private/victory/warewolves_alt

schedule function hw:private/game/enter_morning_meeting 12t replace
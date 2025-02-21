kill @a[tag=voted_out]
kill @a[tag=poisoned]

scoreboard players reset @a hw.player_vote_get
tag @a remove voted_out
tag @a remove poisoned

execute as @a[tag=witch,gamemode=!spectator] run function hw:private/game/show_blackscreen_init

tellraw @a "check_victory_after_night"

execute store result score #players_alive hw if entity @a[gamemode=!spectator]
execute store result score #warewolves_alive hw if entity @a[gamemode=!spectator,tag=warewolf]
scoreboard players operation #warewolves_alive hw += #warewolves_alive hw
execute if score #warewolves_alive hw >= #players_alive hw run return run function hw:private/victory/warewolves_alt
execute if score #warewolves_alive hw matches ..0 run return run function hw:private/victory/civilian

schedule function hw:private/game/enter_morning_meeting 12t replace
kill @a[tag=boom]
gamemode spectator @a[tag=boom]
tag @a remove boom

bossbar set morning_meeting_counter visible false
bossbar set day_counter visible false
bossbar set meeting_counter visible false
bossbar set night_indicator visible true
bossbar set vote_indicator visible false

scoreboard players reset @a hw.player_vote_get
tag @a remove voted_out

execute as @a at @s run playsound item.armor.equip_generic player @s

execute as @a[gamemode=!spectator] run function hw:private/game/show_blackscreen_init

execute store result score #players_alive hw if entity @a[gamemode=!spectator]
execute store result score #warewolves_alive hw if entity @a[gamemode=!spectator,tag=warewolf]

tellraw @a ["check_victory_enter_night, wolf-",{"score": {"name": "#warewolves_alive","objective": "hw"}},", all-",{"score": {"name": "#players_alive","objective": "hw"}}]

scoreboard players operation #warewolves_alive hw += #warewolves_alive hw
execute if score #warewolves_alive hw >= #players_alive hw run return run schedule function hw:private/victory/warewolves 12t replace

schedule function hw:private/game/night_tp 12t replace
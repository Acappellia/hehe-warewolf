bossbar set day_counter visible false
bossbar set meeting_counter visible false
bossbar set night_indicator visible true
bossbar set vote_indicator visible false

scoreboard players reset @a hw.player_vote_get
tag @a remove voted_out

execute as @a at @s run playsound item.armor.equip_generic player @s

execute as @a[gamemode=!spectator] run function hw:private/game/show_blackscreen_init

schedule function hw:private/game/night_tp 12t replace
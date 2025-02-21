data remove entity @s interaction

execute if entity @p[distance=..3,tag=clicker,tag=voted] run return -1
execute if entity @p[distance=..3,tag=clicker,tag=night_executed] run return -1

execute at @s run data modify entity @n[type=item_display,distance=..1,tag=hw_menu_icon] Glowing set value 1b

execute if score #game_status hw matches 4 run function hw:private/menu/click/vote_select
execute if score #game_status hw matches 6 if entity @p[distance=..3,tag=clicker,tag=warewolf] run function hw:private/menu/click/warewolf_select
execute if score #game_status hw matches 6 if entity @p[distance=..3,tag=clicker,tag=prophet] run function hw:private/menu/click/prophet_select
execute if score #game_status hw matches 20 if entity @p[distance=..3,tag=clicker,tag=witch] run function hw:private/menu/witch_click/s2_use

playsound block.copper_bulb.turn_on player @p[distance=..3,tag=clicker] ~ ~ ~ 1
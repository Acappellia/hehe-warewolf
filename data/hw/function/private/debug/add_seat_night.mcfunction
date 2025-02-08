kill @n[type=item_display,tag=night_seat,distance=..3]
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {Tags:["night_seat","new_seat"]}
scoreboard players add #current_seat_2 hw 1
scoreboard players operation @n[type=item_display,tag=new_seat] hw.seat_no = #current_seat_2 hw
tag @n[type=item_display,tag=new_seat] remove new_seat

forceload add ~ ~ ~ ~
execute at @n[type=item_display,distance=..2,tag=prophet_seat] positioned ^ ^0.4 ^0.8 run summon item_display ~ ~ ~ {Tags:["hw_menu","hw_menu_center","new_center"]}
execute as @n[type=item_display,tag=new_center,distance=..3] at @s rotated as @n[distance=..2,tag=prophet_seat] rotated ~ 45 run tp @s ~ ~ ~ ~ ~

execute at @n[type=item_display,tag=new_center,distance=..3] run function hw:private/menu/summon_menu

tag @n[type=item_display,tag=new_center,distance=..3] remove new_center
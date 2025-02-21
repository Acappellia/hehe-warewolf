advancement revoke @s only hw:click_icon

execute if entity @s[tag=clicked] run return -1
tag @s add clicked

tag @s add clicker
execute at @n[type=item_display,tag=hw_menu_center] as @e[type=interaction,distance=..1,tag=hw_menu_click] if data entity @s interaction run function hw:private/menu/click/check_select
tag @s remove clicker
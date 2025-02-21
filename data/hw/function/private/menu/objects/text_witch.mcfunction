data merge entity @s {background:0,transformation:[-8,0,0,0, 0,8,0,0, 0,0,-8,0, 0,0,0,40],view_range:0.03,Tags:["hw_menu","hw_menu_name"]}
$data modify entity @s text set from storage hw:players names.$(id)
execute rotated as @n[type=item_display,tag=new_center,distance=..3] run tp @s ~ ~ ~ ~ ~
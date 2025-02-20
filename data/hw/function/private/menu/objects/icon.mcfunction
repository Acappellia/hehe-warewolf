data merge entity @s {item:{id:"skeleton_skull",count:1},Tags:["hw_menu","hw_menu_icon"],transformation:[20,0,0,0, 0,20,0,0, 0,0,1,0, 0,0,0,100],view_range:0.03}
$execute if entity @a[scores={hw.player_id=$(id)},gamemode=!spectator] run data modify entity @s item set from block 0 -64 0 Items[{Slot:$(id)b}]
execute rotated as @n[type=item_display,tag=new_center,distance=..3] run tp @s ~ ~ ~ ~ ~
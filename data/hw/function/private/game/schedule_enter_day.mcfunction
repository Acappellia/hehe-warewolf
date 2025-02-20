#title @a times 5 30 5
#title @a subtitle [{"text": "即将召开集体会议","color": "white"}]
#title @a title [{"text": "晨会即将结束","color": "blue"}]

execute as @a at @s run playsound block.bell.use player @s ~ ~ ~

execute as @a[gamemode=!spectator] run function hw:private/game/show_blackscreen_short

schedule function hw:private/game/enter_daytime 12t replace
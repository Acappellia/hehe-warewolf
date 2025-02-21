scoreboard players set #game_status hw 5

tag @a remove voted

title @a times 0 35 5
title @a title [{"text": "投票结果","color": "blue"}]

execute as @a at @s run playsound block.bell.resonate player @s ~ ~ ~

scoreboard players reset #max_vote_player hw
scoreboard players set #max_vote hw 0

function hw:private/menu/close_all_menu
tag @a remove clicked

execute as @a[gamemode=!spectator] run function hw:private/game/vote_calc

schedule function hw:private/game/vote_reveal 30t
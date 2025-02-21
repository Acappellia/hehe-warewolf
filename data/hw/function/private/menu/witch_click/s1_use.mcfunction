advancement revoke @s only hw:click_witch_confirm

title @s times 5 40 5
title @s subtitle [{"selector": "@a[tag=voted_out]"},{"text": " 被救下了","color": "white"}]
title @s title [{"text": "解药已使用","color": "dark_purple"}]

tag @a remove voted_out
scoreboard players set #witch_has_antidode hw 0

function hw:private/game/night_final_execute
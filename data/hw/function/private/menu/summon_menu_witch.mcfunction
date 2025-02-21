playsound item.armor.equip_chain player @s ~ ~ ~ 1 1
#particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0 10

execute summon item_display run function hw:private/menu/objects/bg
execute positioned ^ ^0.18 ^ summon text_display run function hw:private/menu/objects/text_title

execute as @a[tag=voted_out] store result storage hw:tmp witch_vote.id int 1 run scoreboard players get @s hw.player_id

execute positioned ^ ^0.05 ^ summon item_display run function hw:private/menu/objects/icon_witch with storage hw:tmp witch_vote
execute positioned ^ ^-0.1 ^ summon text_display run function hw:private/menu/objects/text_witch with storage hw:tmp witch_vote
execute positioned ^0.4 ^0.05 ^ summon interaction run function hw:private/menu/objects/interaction_witch with storage hw:tmp witch_vote

execute positioned ^-0.4 ^-0.2 ^ summon text_display run function hw:private/menu/objects/text_skip
execute positioned ^-0.4 ^-0.1 ^ summon interaction run function hw:private/menu/objects/interaction_skip
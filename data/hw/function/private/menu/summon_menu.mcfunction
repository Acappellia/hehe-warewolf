playsound item.armor.equip_chain player @s ~ ~ ~ 1 1
#particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0 10

execute summon item_display run function hw:private/menu/objects/bg
execute positioned ^ ^0.18 ^ summon text_display run function hw:private/menu/objects/text_title

execute if entity @a[scores={hw.player_id=1}] positioned ^0.4 ^0.1 ^ summon item_display run function hw:private/menu/objects/icon {id:1}
execute if entity @a[scores={hw.player_id=2}] positioned ^0.24 ^0.1 ^ summon item_display run function hw:private/menu/objects/icon {id:2}
execute if entity @a[scores={hw.player_id=3}] positioned ^0.08 ^0.1 ^ summon item_display run function hw:private/menu/objects/icon {id:3}
execute if entity @a[scores={hw.player_id=4}] positioned ^-0.08 ^0.1 ^ summon item_display run function hw:private/menu/objects/icon {id:4}
execute if entity @a[scores={hw.player_id=5}] positioned ^-0.24 ^0.1 ^ summon item_display run function hw:private/menu/objects/icon {id:5}
execute if entity @a[scores={hw.player_id=6}] positioned ^-0.4 ^0.1 ^ summon item_display run function hw:private/menu/objects/icon {id:6}
execute if entity @a[scores={hw.player_id=7}] positioned ^0.4 ^-0.1 ^ summon item_display run function hw:private/menu/objects/icon {id:7}
execute if entity @a[scores={hw.player_id=8}] positioned ^0.24 ^-0.1 ^ summon item_display run function hw:private/menu/objects/icon {id:8}
execute if entity @a[scores={hw.player_id=9}] positioned ^0.08 ^-0.1 ^ summon item_display run function hw:private/menu/objects/icon {id:9}
execute if entity @a[scores={hw.player_id=10}] positioned ^-0.08 ^-0.1 ^ summon item_display run function hw:private/menu/objects/icon {id:10}
execute if entity @a[scores={hw.player_id=11}] positioned ^-0.24 ^-0.1 ^ summon item_display run function hw:private/menu/objects/icon {id:11}
#execute if entity @a[scores={hw.player_id=12}] positioned ^-0.4 ^-0.1 ^ summon item_display run function hw:private/menu/objects/icon {id:12}

execute if entity @a[scores={hw.player_id=1}] positioned ^0.4 ^-0.05 ^ summon text_display run function hw:private/menu/objects/text {id:1}
execute if entity @a[scores={hw.player_id=2}] positioned ^0.24 ^-0.05 ^ summon text_display run function hw:private/menu/objects/text {id:2}
execute if entity @a[scores={hw.player_id=3}] positioned ^0.08 ^-0.05 ^ summon text_display run function hw:private/menu/objects/text {id:3}
execute if entity @a[scores={hw.player_id=4}] positioned ^-0.08 ^-0.05 ^ summon text_display run function hw:private/menu/objects/text {id:4}
execute if entity @a[scores={hw.player_id=5}] positioned ^-0.24 ^-0.05 ^ summon text_display run function hw:private/menu/objects/text {id:5}
execute if entity @a[scores={hw.player_id=6}] positioned ^-0.4 ^-0.05 ^ summon text_display run function hw:private/menu/objects/text {id:6}
execute if entity @a[scores={hw.player_id=7}] positioned ^0.4 ^-0.25 ^ summon text_display run function hw:private/menu/objects/text {id:7}
execute if entity @a[scores={hw.player_id=8}] positioned ^0.24 ^-0.25 ^ summon text_display run function hw:private/menu/objects/text {id:8}
execute if entity @a[scores={hw.player_id=9}] positioned ^0.08 ^-0.25 ^ summon text_display run function hw:private/menu/objects/text {id:9}
execute if entity @a[scores={hw.player_id=10}] positioned ^-0.08 ^-0.25 ^ summon text_display run function hw:private/menu/objects/text {id:10}
execute if entity @a[scores={hw.player_id=11}] positioned ^-0.24 ^-0.25 ^ summon text_display run function hw:private/menu/objects/text {id:11}
#execute if entity @a[scores={hw.player_id=12}] positioned ^-0.4 ^-0.25 ^ summon text_display run function hw:private/menu/objects/text {id:12}

execute if entity @a[scores={hw.player_id=1},gamemode=!spectator] positioned ^0.4 ^0.1 ^ summon interaction run function hw:private/menu/objects/interaction {id:1}
execute if entity @a[scores={hw.player_id=2},gamemode=!spectator] positioned ^0.24 ^0.1 ^ summon interaction run function hw:private/menu/objects/interaction {id:2}
execute if entity @a[scores={hw.player_id=3},gamemode=!spectator] positioned ^0.08 ^0.1 ^ summon interaction run function hw:private/menu/objects/interaction {id:3}
execute if entity @a[scores={hw.player_id=4},gamemode=!spectator] positioned ^-0.08 ^0.1 ^ summon interaction run function hw:private/menu/objects/interaction {id:4}
execute if entity @a[scores={hw.player_id=5},gamemode=!spectator] positioned ^-0.24 ^0.1 ^ summon interaction run function hw:private/menu/objects/interaction {id:5}
execute if entity @a[scores={hw.player_id=6},gamemode=!spectator] positioned ^-0.4 ^0.1 ^ summon interaction run function hw:private/menu/objects/interaction {id:6}
execute if entity @a[scores={hw.player_id=7},gamemode=!spectator] positioned ^0.4 ^-0.1 ^ summon interaction run function hw:private/menu/objects/interaction {id:7}
execute if entity @a[scores={hw.player_id=8},gamemode=!spectator] positioned ^0.24 ^-0.1 ^ summon interaction run function hw:private/menu/objects/interaction {id:8}
execute if entity @a[scores={hw.player_id=9},gamemode=!spectator] positioned ^0.08 ^-0.1 ^ summon interaction run function hw:private/menu/objects/interaction {id:9}
execute if entity @a[scores={hw.player_id=10},gamemode=!spectator] positioned ^-0.08 ^-0.1 ^ summon interaction run function hw:private/menu/objects/interaction {id:10}
execute if entity @a[scores={hw.player_id=11},gamemode=!spectator] positioned ^-0.24 ^-0.1 ^ summon interaction run function hw:private/menu/objects/interaction {id:11}
#execute if entity @a[scores={hw.player_id=12},gamemode=!spectator] positioned ^-0.4 ^-0.1 ^ summon interaction run function hw:private/menu/objects/interaction {id:12}


execute positioned ^-0.4 ^-0.2 ^ summon text_display run function hw:private/menu/objects/text_skip
execute positioned ^-0.4 ^-0.1 ^ summon interaction run function hw:private/menu/objects/interaction_skip

advancement revoke @s only hw:gun_shot

execute anchored eyes positioned ^-0.3 ^-0.1 ^0.5 run particle large_smoke ~ ~ ~ 0 0 0 0.05 2

tag @s add firing
execute anchored eyes positioned ^-0.3 ^-0.1 ^0.5 run function hw:private/gun/ray
tag @s remove hit
tag @s remove firing
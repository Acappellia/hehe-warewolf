particle ash ~ ~ ~ 0 0 0 0 1
execute as @a[gamemode=!spectator,distance=..2,tag=!firing] run function hw:private/gun/gun_hit
execute if entity @s[distance=..18,tag=!hit] positioned ^ ^ ^0.5 run function hw:private/gun/ray
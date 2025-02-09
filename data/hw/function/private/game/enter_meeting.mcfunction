#change status
scoreboard players set #game_status hw 3

scoreboard players set #meeting_counter hw 90
bossbar set meeting_counter max 90
bossbar set meeting_counter value 90
bossbar set meeting_counter name "- 狼人会议 - 剩余 1:30"

bossbar set day_counter visible false
bossbar set meeting_counter visible true
bossbar set night_indicator visible false
bossbar set vote_indicator visible false

#give effect
effect give @a weakness infinite 9 true
execute as @a run attribute @s block_interaction_range base set 0

execute as @a[gamemode=!spectator,tag=!warewolf] at @s run execute as @e[type=item_display,tag=night_seat] if score @s hw.seat_no = @p[distance=..1] hw.player_id run tp @p[distance=..1] @s
execute as @a[gamemode=!spectator,tag=warewolf] at @s run execute as @e[type=item_display,tag=meeting_seat] if score @s hw.seat_no = @p[distance=..1] hw.wolf_id run tp @p[distance=..1] @s

effect give @a[tag=warewolf,gamemode=!spectator] darkness infinite 0 true

tp @a[gamemode=spectator] @n[type=item_display,tag=meeting_table]

#sound
execute as @a at @s run playsound item.armor.equip_generic player @s
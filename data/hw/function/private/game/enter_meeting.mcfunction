#change status
scoreboard players set #game_status hw 3

scoreboard players set #meeting_counter hw 180
bossbar set meeting_counter max 180
bossbar set meeting_counter value 180
bossbar set meeting_counter name "- 会议 - 剩余 3:00"

bossbar set day_counter visible false
bossbar set meeting_counter visible true
bossbar set night_indicator visible false
bossbar set vote_indicator visible false

#give effect
effect give @a weakness infinite 9 true
execute as @a run attribute @s block_interaction_range base set 0

execute as @a[gamemode=!spectator] at @s run execute as @e[type=item_display,tag=meeting_seat] if score @s hw.seat_no = @p[distance=..1] hw.player_id run tp @p[distance=..1] @s
execute as @a[gamemode=!spectator] at @s facing entity @n[type=item_display,tag=meeting_table] eyes run tp @s ~ ~ ~ ~ ~

tp @a[gamemode=spectator] @n[type=item_display,tag=meeting_table]

#sound
execute as @a at @s run playsound item.armor.equip_generic player @s
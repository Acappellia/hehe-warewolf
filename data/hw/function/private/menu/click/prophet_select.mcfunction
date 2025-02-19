tag @p[distance=..3,tag=clicker] add night_executed

playsound block.bell.resonate player @p[distance=..3,tag=clicker] ~ ~ ~ 1 1
scoreboard players operation #vote_target_player hw = @s hw.player_id
execute as @a[gamemode=!spectator] if score @s hw.player_id = #vote_target_player hw run function hw:private/menu/click/prophet_show
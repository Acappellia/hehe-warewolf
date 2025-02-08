scoreboard players operation #vote_target_player hw = @s hw.player_id
execute as @a[gamemode=!spectator] if score @s hw.player_id = #vote_target_player hw run scoreboard players add @s hw.player_vote_get 1

tag @p[distance=..3,tag=clicker] add voted
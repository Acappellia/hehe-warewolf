execute unless score @s hw.player_vote_get > #max_vote hw run return -1

scoreboard players operation #max_vote hw = @s hw.player_vote_get
scoreboard players operation #max_vote_player hw = @s hw.player_id
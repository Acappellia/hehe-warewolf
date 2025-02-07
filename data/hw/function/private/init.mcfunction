gamerule commandBlockOutput false
#gamerule sendCommandFeedback false
gamerule keepInventory true
gamerule doImmediateRespawn false
gamerule showDeathMessages false

scoreboard objectives add hw dummy
execute unless score #game_status hw matches 0.. run scoreboard players set #game_status hw 0

#game status

#0 character unassigned
#1 character assigned, game not start
#2 game daytime
#3 game meeting time
#4 game vote time
#5 game vote kill time
#6 night time for warewolves
#7 night time for prophet
#10 game ending time

scoreboard objectives add hw.seat_no dummy
scoreboard objectives add hw.player_id dummy

schedule function hw:private/slow_tick 20t append
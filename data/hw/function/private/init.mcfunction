gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule keepInventory true
gamerule doImmediateRespawn false
gamerule showDeathMessages false
gamerule doInsomnia false
gamerule doMobSpawning false
gamerule doWeatherCycle false

scoreboard objectives add hw dummy
scoreboard players set #60 hw 60
execute unless score #game_status hw matches 0.. run scoreboard players set #game_status hw 0


execute unless score #current_seat hw matches 0.. run scoreboard players set #current_seat hw 0
execute unless score #current_seat_2 hw matches 0.. run scoreboard players set #current_seat_2 hw 0

#game status

#0 character unassigned
#1 character assigned, game not start

#10 game preparing time

#99 dummy

#2 game daytime
#3 game meeting time
#4 game vote time
#5 game vote kill time
#6 night time
#7 night time execute
#8 dawn
#9 morning meeting

#20 witch night

scoreboard objectives add hw.seat_no dummy
scoreboard objectives add hw.player_id dummy
scoreboard objectives add hw.wolf_id dummy
scoreboard objectives add hw.player_vote_get dummy
scoreboard objectives add hw.player_die deathCount

#force load
forceload add 0 0

schedule function hw:private/slow_tick 20t append

#init bossbar

bossbar add lighthouse "灯塔修复中……"
bossbar set lighthouse color white
bossbar set lighthouse style progress
execute if score #game_status hw matches 0..1 run bossbar set lighthouse visible false

bossbar add morning_meeting_counter "- 晨会 - 剩余 1:00"
bossbar set morning_meeting_counter color green
bossbar set morning_meeting_counter style progress
execute if score #game_status hw matches 0..1 run bossbar set morning_meeting_counter visible false

bossbar add day_counter "- 白天 - 剩余 2:00"
bossbar set day_counter color yellow
bossbar set day_counter style progress
execute if score #game_status hw matches 0..1 run bossbar set day_counter visible false

bossbar add meeting_counter "- 晚会 - 剩余 5:00"
bossbar set meeting_counter color blue
bossbar set meeting_counter style progress
execute if score #game_status hw matches 0..1 run bossbar set meeting_counter visible false

bossbar add vote_indicator "- 投票 -"
bossbar set vote_indicator color purple
bossbar set vote_indicator style progress
bossbar set vote_indicator max 180
bossbar set vote_indicator value 0
execute if score #game_status hw matches 0..1 run bossbar set vote_indicator visible false

bossbar add night_indicator "- 夜晚 -"
bossbar set night_indicator color red
bossbar set night_indicator style progress
bossbar set night_indicator max 180
bossbar set night_indicator value 0
execute if score #game_status hw matches 0..1 run bossbar set night_indicator visible false
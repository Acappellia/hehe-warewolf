#update bossbar timer
execute store result bossbar meeting_counter value run scoreboard players get #meeting_counter hw

scoreboard players operation #timer_min hw = #meeting_counter hw
scoreboard players operation #timer_sec hw = #meeting_counter hw

scoreboard players operation #timer_min hw /= #60 hw
scoreboard players operation #timer_sec hw %= #60 hw

execute store result storage hw:tmp timer.min int 1 run scoreboard players get #timer_min hw
execute store result storage hw:tmp timer.sec int 1 run scoreboard players get #timer_sec hw

function hw:private/game/daytime_update_timer with storage hw:tmp timer

#update timer
scoreboard players remove #meeting_counter hw 1
execute if score #meeting_counter hw matches ..0 run function hw:private/game/enter_voting
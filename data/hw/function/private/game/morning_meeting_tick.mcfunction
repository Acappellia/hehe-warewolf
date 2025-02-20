#update bossbar timer
execute store result bossbar morning_meeting_counter value run scoreboard players get #morning_meeting_counter hw

scoreboard players operation #timer_min hw = #morning_meeting_counter hw
scoreboard players operation #timer_sec hw = #morning_meeting_counter hw

scoreboard players operation #timer_min hw /= #60 hw
scoreboard players operation #timer_sec hw %= #60 hw

execute store result storage hw:tmp timer.min int 1 run scoreboard players get #timer_min hw
execute store result storage hw:tmp timer.sec int 1 run scoreboard players get #timer_sec hw

function hw:private/game/morning_meeting_tick_timer with storage hw:tmp timer

execute if score #morning_meeting_counter hw matches ..0 run return -1

#update timer
scoreboard players remove #morning_meeting_counter hw 1
execute if score #morning_meeting_counter hw matches ..0 run function hw:private/game/schedule_enter_day
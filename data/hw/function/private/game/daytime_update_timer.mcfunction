execute if score #timer_sec hw matches ..9 run bossbar set day_counter name "- 白天 - 剩余 $(min):0$(sec)"
execute if score #timer_sec hw matches 10.. run bossbar set day_counter name "- 白天 - 剩余 $(min):$(sec)"
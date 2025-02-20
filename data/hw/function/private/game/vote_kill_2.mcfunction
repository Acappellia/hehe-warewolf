setblock -3 45 -21 spruce_trapdoor[facing=east,half=top,open=true]
kill @a[tag=voted_out]

schedule function hw:private/game/schedule_enter_night 60t replace
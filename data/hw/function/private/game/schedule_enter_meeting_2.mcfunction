execute as @a[gamemode=!spectator] run function hw:private/game/show_blackscreen_short

execute as @a[gamemode=!spectator] at @s summon marker run function hw:private/game/record_location

schedule function hw:private/game/enter_meeting 12t replace
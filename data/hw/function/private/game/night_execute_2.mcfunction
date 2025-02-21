function hw:private/menu/close_all_menu

execute as @a[tag=warewolf,gamemode=!spectator] run function hw:private/game/show_blackscreen_init
execute as @a[tag=prophet,gamemode=!spectator] run function hw:private/game/show_blackscreen_init

schedule function hw:private/game/enter_witch_night 12t replace
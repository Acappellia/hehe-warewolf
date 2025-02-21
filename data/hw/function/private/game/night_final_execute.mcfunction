scoreboard players set #game_status hw 21

function hw:private/menu/close_all_menu
tag @a remove clicked
scoreboard players reset #vote_skip_counts hw

schedule function hw:private/game/night_final_execute_2 40t replace
scoreboard players set #game_status hw 21

function hw:private/menu/close_all_menu
scoreboard players reset #vote_skip_counts hw

schedule function hw:private/game/night_final_execute_2 80t replace
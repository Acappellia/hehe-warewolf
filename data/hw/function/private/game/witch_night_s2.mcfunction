function hw:private/menu/close_all_menu

scoreboard players set #witch_night_status hw 1

execute if score #witch_has_poison hw matches 1 run return run function hw:private/menu/open_vote_menu_witch

function hw:private/game/night_final_execute
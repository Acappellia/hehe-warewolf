function hw:private/menu/close_all_menu
tag @a remove clicked

scoreboard players set #witch_night_status hw 1

execute if entity @a[tag=witch,gamemode=!spectator] if score #witch_has_poison hw matches 1 as @a[tag=witch] at @s run return run function hw:private/menu/open_vote_menu_witch

function hw:private/game/night_final_execute
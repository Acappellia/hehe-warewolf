scoreboard players set #witch_night_status hw 0

execute if entity @a[tag=witch,gamemode=!spectator] if score #witch_has_antidode hw matches 1 as @a[tag=witch] at @s run return run function hw:private/menu/open_witch_s1_menu

function hw:private/game/witch_night_s2
scoreboard players set #max_gods hw 3
scoreboard players set #max_warewolves hw 4

execute store result score #max_civilians hw if entity @a[gamemode=!spectator]
scoreboard players remove #max_civilians hw 7

function hw:private/ch_assign/assign_all
execute unless score #god_counts hw >= #max_gods hw run return run function hw:private/ch_assign/god
execute unless score #warewolf_counts hw >= #max_warewolves hw run return run function hw:private/ch_assign/warewolf
execute unless score #civilian_counts hw >= #max_civilians hw run return run function hw:private/ch_assign/civilian

tellraw @a "ERROR PLAYER OVERFLOW"
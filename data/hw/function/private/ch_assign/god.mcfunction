execute store result score #current_god hw run data get storage hw:tmp god_list[0]

execute if score #current_god hw matches 0 run tellraw @a "ERROR GOD OVERFLOW"
execute if score #current_god hw matches 1 run function hw:private/ch_assign/witch
execute if score #current_god hw matches 2 run function hw:private/ch_assign/prophet
execute if score #current_god hw matches 3 run function hw:private/ch_assign/redman

data remove storage hw:tmp god_list[0]
execute unless entity @a[tag=hunter] if predicate hw:50_chance run return run function hw:private/ch_assign/hunter
execute unless entity @a[tag=prophet] run return run function hw:private/ch_assign/prophet

tellraw @a "ERROR GOD OVERFLOW"
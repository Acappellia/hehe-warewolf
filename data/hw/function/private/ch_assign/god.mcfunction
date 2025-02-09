execute unless entity @a[tag=witch] if predicate hw:50_chance run return run function hw:private/ch_assign/witch
execute unless entity @a[tag=prophet] run return run function hw:private/ch_assign/prophet
execute unless entity @a[tag=witch] run return run function hw:private/ch_assign/witch

tellraw @a "ERROR GOD OVERFLOW"
execute unless predicate hw:holding_item run return run title @s actionbar ""

execute if entity @s[tag=prophet] run title @s actionbar [{"text": "你的职业：","color": "white"},{"text": "预言家","color": "blue"}]
execute if entity @s[tag=witch] run title @s actionbar [{"text": "你的职业：","color": "white"},{"text": "女巫","color": "light_purple"}]
execute if entity @s[tag=redman] run title @s actionbar [{"text": "你的职业：","color": "white"},{"text": "红人","color": "yellow"}]
execute if entity @s[tag=civilian] run title @s actionbar [{"text": "你的职业：","color": "white"},{"text": "村民","color": "gray"}]
execute at @s if entity @s[tag=warewolf] run title @s actionbar [{"text": "你的职业：","color": "white"},{"text": "狼人","color": "red"},{"text": " 你的队友：","color": "white"},{"selector": "@a[tag=warewolf,distance=0.1..]","color": "red","separator": " "}]
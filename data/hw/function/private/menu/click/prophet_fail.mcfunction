title @s times 10 50 10
title @s subtitle "水晶球的表面暗淡无光……"
title @s title [{"text": "[ ","color": "dark_gray"},{"text": "无法预知","color": "gray"},{"text": " ]","color": "dark_gray"}]
title @a[tag=prophet] subtitle "水晶球为你揭示出真相"
execute if entity @s[tag=warewolf] run title @a[tag=prophet] title [{"text": "[ ","color": "dark_red"},{"text": "祂是 狼人","color": "red"},{"text": " ]","color": "dark_red"}]
execute if entity @s[tag=!warewolf] run title @a[tag=prophet] title [{"text": "[ ","color": "gold"},{"text": "他是 好人","color": "yellow"},{"text": " ]","color": "gold"}]
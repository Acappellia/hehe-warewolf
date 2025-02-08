execute positioned ~ ~-0.8 ~ unless predicate hw:hitbox_check run return -1

particle block{block_state:{Name:"nether_wart_block"}} ~ ~ ~ 0 0 0 0.1 20
tag @a[distance=..30,tag=firing] add hit

kill @s
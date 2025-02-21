tp @a @n[type=item_display,tag=meeting_table]
gamemode adventure @a

#reset blocks

setblock -27 65 -63 air
setblock -27 65 -63 furnace[facing=west]
setblock -27 65 -64 air
setblock -27 65 -64 furnace[facing=west]

setblock -29 72 -23 air
setblock -29 72 -23 furnace[facing=north]
setblock -31 72 -23 air
setblock -31 72 -23 furnace[facing=north]

setblock -118 69 112 air
setblock -118 69 112 blast_furnace[facing=south]
setblock -118 69 116 air
setblock -118 69 116 blast_furnace[facing=north]

place template hw:ship -132 65 113
place template hw:mine_1 -47 64 49
place template hw:mine_2 47 67 -33
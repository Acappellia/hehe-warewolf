execute if score #coal_required hw matches ..0 run return run title @a[distance=..3] actionbar [{"text": "燃料准备就绪！","color": "dark_green","bold": true}]

title @a[distance=..3] actionbar [{"text": "还需要 ","color": "blue","bold": true},{"score": {"name": "#coal_required","objective": "hw"},"color": "gold","bold": true},{"text": " 个煤炭块","color": "blue","bold": true}]

particle ash ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1

execute unless block ~ ~ ~ coal_block run return -1

setblock ~ ~ ~ air
playsound entity.blaze.shoot block @a ~ ~ ~ 1 0.7
particle flame ~ ~0.5 ~ 0 0 0 0.05 10
scoreboard players remove #coal_required hw 1
execute unless block ~ ~ ~ #vehicles:not_collision run scoreboard players set result int 1
execute if block ~ ~ ~ minecraft:birch_trapdoor run function vehicles:collision/sloop_test
execute if block ~ ~ ~ #minecraft:slabs[type=bottom] run function vehicles:collision/slab_test
execute as @e[distance=..64.0,limit=1,sort=nearest,type=marker,tag=surface_entity] run function vehicles:gravity/sfe
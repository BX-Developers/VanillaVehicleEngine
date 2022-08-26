execute if block ~ ~ ~ #vehicles:road_1 run scoreboard players set road_test int 1
execute if block ~ ~ ~ #vehicles:road_2 run scoreboard players set road_test int 2
execute if block ~ ~ ~ #vehicles:road_3 run scoreboard players set road_test int 3
execute if block ~ ~ ~ #vehicles:road_4 run scoreboard players set road_test int 4

execute unless block ~ ~ ~ #vehicles:not_collision unless block ~ ~ ~ #minecraft:slabs[type=bottom] run scoreboard players set result int 1
execute if block ~ ~ ~ minecraft:birch_trapdoor run function vehicles:collision/sloop_test
execute if block ~ ~ ~ #minecraft:slabs[type=bottom] run function vehicles:collision/slab_test
execute as @e[distance=..64.0,limit=1,sort=nearest,type=marker,tag=surface_entity] run function vehicles:gravity/sfe
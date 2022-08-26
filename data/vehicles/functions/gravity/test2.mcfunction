scoreboard players set result int 0
execute positioned ~ ~-0.05 ~ run function vehicles:gravity/test4
execute if score result int matches 0 run function vehicles:gravity/nog

scoreboard players set temp_re int 0
execute positioned ~ ~0.28 ~ if block ~ ~1.0 ~ #vehicles:not_collision run function vehicles:gravity/test3
execute if score temp_re int matches 0 if block ~ ~1.0 ~ #vehicles:not_collision run function vehicles:gravity/test3
execute if score result int matches 0 if score temp_re int matches 0 if score tempsp int < lower_testsp int positioned ~ ~-0.28 ~ run function vehicles:gravity/test3
execute as @e[distance=..64.0,limit=1,sort=nearest,type=marker,tag=surface_entity] run function vehicles:gravity/sfe

execute if score temp_gt int matches 1 run data modify storage math:io g_point0 set from entity @s Pos
execute if score temp_gt int matches 10 run data modify storage math:io g_point1 set from entity @s Pos
execute if score temp_gt int matches 100 run data modify storage math:io g_point2 set from entity @s Pos
execute if score temp_gt int matches 1000 run data modify storage math:io g_point3 set from entity @s Pos

scoreboard players operation temp_gt int *= 10 int
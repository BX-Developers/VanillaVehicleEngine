tp @s ~ ~ ~
scoreboard players set temp_re int 1
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=south] run function vehicles:gravity/sloop_test0
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=north] run function vehicles:gravity/sloop_test1
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=east] run function vehicles:gravity/sloop_test2
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=west] run function vehicles:gravity/sloop_test3
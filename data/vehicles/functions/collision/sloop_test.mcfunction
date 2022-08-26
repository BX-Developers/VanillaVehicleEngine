tp @s ~ ~ ~
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=south] run function vehicles:collision/sloop_test0
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=north] run function vehicles:collision/sloop_test1
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=east] run function vehicles:collision/sloop_test2
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=west] run function vehicles:collision/sloop_test3
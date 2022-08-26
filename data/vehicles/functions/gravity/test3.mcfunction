tp @s ~ ~ ~
execute unless block ~ ~ ~ #vehicles:not_collision unless block ~ ~ ~ #minecraft:slabs[type=bottom] run function vehicles:gravity/ncb
execute if block ~ ~ ~ birch_trapdoor run function vehicles:gravity/btb
execute if block ~ ~ ~ #minecraft:slabs[type=bottom] run function vehicles:gravity/slb
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get cos int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get sin int
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 run tp @s ~ ~ ~ ~ ~
execute store result score result int run data get entity @s Rotation[0] -10000
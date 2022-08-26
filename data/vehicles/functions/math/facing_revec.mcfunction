execute store result entity @s Pos[0] double 0.0001 run scoreboard players get u0 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get u1 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get u2 int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score u0 int run data get entity @s Pos[0] 10000
execute store result score u1 int run data get entity @s Pos[1] 10000
execute store result score u2 int run data get entity @s Pos[2] 10000

execute store result entity @s Pos[0] double 0.0001 run scoreboard players get v0 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get v1 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get v2 int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score v0 int run data get entity @s Pos[0] 10000
execute store result score v1 int run data get entity @s Pos[1] 10000
execute store result score v2 int run data get entity @s Pos[2] 10000

execute store result entity @s Pos[0] double 0.0001 run scoreboard players get w0 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get w1 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get w2 int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score w0 int run data get entity @s Pos[0] 10000
execute store result score w1 int run data get entity @s Pos[1] 10000
execute store result score w2 int run data get entity @s Pos[2] 10000
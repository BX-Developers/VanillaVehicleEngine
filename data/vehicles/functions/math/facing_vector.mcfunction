tp @s ^ ^ ^1.0
execute store result score n0 int store result score v0 int run data get entity @s Pos[0] -10000
execute store result score n1 int store result score v1 int run data get entity @s Pos[2] 10000
execute store result score n2 int store result score v2 int run data get entity @s Pos[1] 10000
tp @s ^-1.0 ^ ^
execute store result score u0 int run data get entity @s Pos[0] -10000
execute store result score u1 int run data get entity @s Pos[2] 10000
execute store result score u2 int run data get entity @s Pos[1] 10000
tp @s ^ ^1.0 ^
execute store result score w0 int run data get entity @s Pos[0] -10000
execute store result score w1 int run data get entity @s Pos[2] 10000
execute store result score w2 int run data get entity @s Pos[1] 10000
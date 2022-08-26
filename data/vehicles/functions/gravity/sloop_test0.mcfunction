execute store result score temp_gty1 int run data get entity @s Pos[1] 10000
execute store result score temp_gtz1 int run data get entity @s Pos[2] 10000
execute align xyz run tp @s ~ ~ ~1.0
execute store result score temp_gty0 int run data get entity @s Pos[1] 10000
execute store result score temp_gtz0 int run data get entity @s Pos[2] 10000
tp @s ~ ~ ~

scoreboard players operation temp_gty1 int -= temp_gty0 int
scoreboard players operation temp_gtz0 int -= temp_gtz1 int
scoreboard players set surface int 1
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation temp_gty0 int += temp_gtz0 int
execute store result score temp_gtx1 int run data get entity @s Pos[0] 10000
execute store result score temp_gty1 int run data get entity @s Pos[1] 10000
execute align xyz run tp @s ~ ~ ~
execute store result score temp_gtx0 int run data get entity @s Pos[0] 10000
execute store result score temp_gty0 int run data get entity @s Pos[1] 10000
tp @s ~ ~ ~

scoreboard players operation temp_gty1 int -= temp_gty0 int
scoreboard players operation temp_gtx1 int -= temp_gtx0 int
scoreboard players set surface int 1
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation temp_gty0 int += temp_gtx1 int
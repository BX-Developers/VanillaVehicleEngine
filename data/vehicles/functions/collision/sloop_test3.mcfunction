execute store result score temp_gtx1 int run data get entity @s Pos[0] 1000
execute store result score temp_gty1 int run data get entity @s Pos[1] 1000
execute align xyz run tp @s ~ ~ ~
execute store result score temp_gtx0 int run data get entity @s Pos[0] 1000
execute store result score temp_gty0 int run data get entity @s Pos[1] 1000

scoreboard players operation temp_gty1 int -= temp_gty0 int
scoreboard players operation temp_gtx1 int -= temp_gtx0 int
execute if score temp_gty1 int < temp_gtx1 int run scoreboard players set result int 1
#get_tr
data modify entity @s Pos[1] set value 0.0d
execute store result entity @s Rotation[0] float -0.0001 run scoreboard players get theta int
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score cos_theta int run data get entity @s Pos[2] 10000
execute store result score sin_theta int run data get entity @s Pos[0] 10000

scoreboard players operation stemp int = sin_theta int
scoreboard players operation stemp int *= temp_n0 int
scoreboard players operation stemp1 int = cos_theta int
scoreboard players operation stemp1 int *= temp_n2 int
execute store result entity @s Pos[2] double 0.000001 run scoreboard players operation stemp int -= stemp1 int
execute store result entity @s Pos[0] double 0.01 run scoreboard players get temp_n1 int
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~-90.0 0.0 run tp @s ^ ^ ^1.0 ~ ~
execute store result score alpha int run data get entity @s Rotation[0] -10000
execute store result score cos_alpha int run data get entity @s Pos[2] 10000
execute store result score sin_alpha int run data get entity @s Pos[0] 10000

scoreboard players operation stemp int = cos_theta int
scoreboard players operation stemp int *= temp_n0 int
scoreboard players operation stemp1 int = sin_theta int
scoreboard players operation stemp1 int *= temp_n2 int
execute store result entity @s Pos[2] double 0.000001 run scoreboard players operation stemp int += stemp1 int
scoreboard players operation stemp int = cos_alpha int
scoreboard players operation stemp int *= temp_n1 int
scoreboard players operation stemp1 int = cos_theta int
scoreboard players operation stemp1 int *= sin_alpha int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp1 int *= temp_n2 int
scoreboard players operation stemp int += stemp1 int
scoreboard players operation stemp1 int = sin_theta int
scoreboard players operation stemp1 int *= sin_alpha int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp1 int *= temp_n0 int
execute store result entity @s Pos[0] double 0.000001 run scoreboard players operation stemp int -= stemp1 int

execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~-90.0 0.0 run tp @s ^ ^ ^1.0 ~ ~
execute store result score phi int run data get entity @s Rotation[0] -10000
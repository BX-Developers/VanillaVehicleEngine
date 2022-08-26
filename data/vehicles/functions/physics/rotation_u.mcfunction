scoreboard players set may_collision int 1
execute store result score tempr1 int run data get entity @s Rotation[1] 10000
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players operation tempr1 int += @s rotation_u
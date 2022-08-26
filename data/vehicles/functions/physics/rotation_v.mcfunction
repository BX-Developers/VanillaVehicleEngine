scoreboard players set may_collision int 1
execute store result score tempr0 int run data get entity @s Rotation[0] 10000
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players operation tempr0 int -= @s rotation_v
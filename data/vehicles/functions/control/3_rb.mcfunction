scoreboard players set @s rotation_u 0
execute store result score temp_r1 int run data get entity @s Rotation[1] 1000
scoreboard players operation @s rotation_u -= temp_r1 int
scoreboard players operation @s rotation_u *= 3 int
scoreboard players operation @s rotation_u /= @s vehicle_m
execute if score 0 int > temp_r1 int run scoreboard players operation @s rotation_u > 1 int
execute if score 0 int < temp_r1 int run scoreboard players operation @s rotation_u < -1 int
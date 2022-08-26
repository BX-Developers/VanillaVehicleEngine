scoreboard players operation @s rotation_u *= @s vehicle_friction
scoreboard players operation @s rotation_u /= 1000 int

scoreboard players operation @s rotation_w *= @s vehicle_friction
scoreboard players operation @s rotation_w /= 1000 int

execute if score @s rotation_u matches -200..200 run scoreboard players set @s rotation_u 0
execute if score @s rotation_w matches -200..200 run scoreboard players set @s rotation_w 0
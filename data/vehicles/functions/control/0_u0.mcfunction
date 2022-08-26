scoreboard players set @s vehicle_acing 1
execute store result score temp_r1 int run data get entity @s Rotation[1] 10000

scoreboard players operation temp int = @s vehicle_um
scoreboard players operation temp int -= temp_r1 int
scoreboard players operation temp int *= 3 int
scoreboard players operation temp int /= @s vehicle_m
execute if score temp_r1 int < @s vehicle_um run scoreboard players operation temp int > 1 int

scoreboard players operation @s rotation_u = temp int
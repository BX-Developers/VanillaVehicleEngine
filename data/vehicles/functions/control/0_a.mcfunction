scoreboard players set @s vehicle_tning 1
scoreboard players operation temp int = @s vehicle_rm
scoreboard players operation temp int -= @s rotation_v
scoreboard players operation temp int *= 5 int
scoreboard players operation temp int /= @s vehicle_m
execute if score @s rotation_v < @s vehicle_rm run scoreboard players operation temp int > 1 int
scoreboard players operation @s rotation_v += temp int
scoreboard players set @s vehicle_tning 1
scoreboard players operation @s rotation_rm *= -1 int
scoreboard players operation temp int = @s rotation_rm
scoreboard players operation temp int -= temp_roll int
scoreboard players operation temp int *= 3 int
scoreboard players operation temp int /= @s vehicle_m
execute if score temp_roll int > @s rotation_rm run scoreboard players operation temp int < -1 int
scoreboard players operation @s rotation_rm *= -1 int

scoreboard players operation @s rotation_w = temp int
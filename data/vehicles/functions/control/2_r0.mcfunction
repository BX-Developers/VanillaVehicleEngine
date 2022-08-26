scoreboard players operation temp int = @s vehicle_sp
scoreboard players operation temp int *= 1000 int
scoreboard players operation temp int /= @s vehicle_vm
scoreboard players operation @s rotation_v = @s vehicle_rm
scoreboard players operation @s rotation_v *= temp int
scoreboard players operation @s rotation_v /= 1000 int
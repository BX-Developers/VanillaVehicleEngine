scoreboard players operation @s rotation_um = @s vehicle_flyu
scoreboard players operation @s rotation_um *= -1 int
scoreboard players operation temp int = @s vehicle_flyu
scoreboard players operation temp int *= -1 int
scoreboard players operation temp0 int = temp int

scoreboard players operation temp int -= @s vehicle_vr1
scoreboard players operation temp int *= 3 int
scoreboard players operation temp int /= @s vehicle_m
execute if score @s vehicle_vr1 < temp0 int run scoreboard players operation temp int > 1 int
execute if score @s vehicle_vr1 > temp0 int run scoreboard players operation temp int < -1 int
scoreboard players operation @s vehicle_vr1 += temp int

tp @s ~ ~0.1 ~
tag @s add vehicle_UP
scoreboard players set @s vehicle_acing 1

scoreboard players operation temp int = @s vehicle_vm
scoreboard players operation temp int -= @s vehicle_sp
scoreboard players operation temp int /= @s vehicle_m
scoreboard players operation temp int /= 3 int
execute if score @s vehicle_sp < @s vehicle_vm run scoreboard players operation temp int > 1 int
scoreboard players operation @s vehicle_sp += temp int

scoreboard players operation temp int = @s vehicle_flyu
execute if entity @s[tag=vehicle_UP] run scoreboard players operation temp int *= -1 int
scoreboard players operation temp0 int = temp int
scoreboard players operation temp int -= @s rotation_um
scoreboard players operation temp int *= 3 int
scoreboard players operation temp int /= @s vehicle_m
execute if score @s rotation_um < temp0 int run scoreboard players operation temp int > 1 int
execute if score @s rotation_um > temp0 int run scoreboard players operation temp int < -1 int
scoreboard players operation @s rotation_um += temp int
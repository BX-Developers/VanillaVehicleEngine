scoreboard players set @s vehicle_acing 1

scoreboard players operation temp int = @s vehicle_vm
scoreboard players operation temp int -= @s vehicle_sp
scoreboard players operation temp int *= 3 int
scoreboard players operation temp int /= @s vehicle_m
execute if score @s vehicle_sp < @s vehicle_vm run scoreboard players operation temp int > 1 int
scoreboard players operation @s vehicle_sp += temp int

execute store result score @s vehicle_vr0 run data get entity @s Rotation[0] 1000
execute store result score @s vehicle_vr1 run data get entity @s Rotation[1] 1000
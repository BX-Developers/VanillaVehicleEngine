scoreboard players set @s vehicle_acing -2
execute store result score @s vehicle_vr0 run data get entity @s Rotation[0] 1000
execute store result score @s vehicle_vr1 run data get entity @s Rotation[1] 1000
scoreboard players add @s vehicle_vr1 180000
scoreboard players operation @s vehicle_sp = @s vehicle_back
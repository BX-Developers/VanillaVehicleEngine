data modify entity @s Pos set from storage math:io debug.pos
data modify entity @s Rotation set from storage math:io debug.rotation
execute store result score @s roll run data get storage math:io debug.roll
execute store result score @s vehicle_vr0 run data get storage math:io debug.vehicle_vr0
execute store result score @s vehicle_vr1 run data get storage math:io debug.vehicle_vr1
execute store result score @s vehicle_sp run data get storage math:io debug.vehicle_sp
execute store result score @s rotation_u run data get storage math:io debug.rotation_u
execute store result score @s rotation_v run data get storage math:io debug.rotation_v
execute store result score @s rotation_w run data get storage math:io debug.rotation_w
execute store result score @s vehicle_cfo run data get storage math:io debug.vehicle_cfo
execute store result score @s vehicle_cwi run data get storage math:io debug.vehicle_cwi

scoreboard players set @s vehicle_state 1
execute at @s run function vehicles:main
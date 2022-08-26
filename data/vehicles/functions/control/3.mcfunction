execute if score @s vehicle_cfo matches 1 run function vehicles:control/2_f
execute if score @s vehicle_cfo matches -1 run function vehicles:control/2_b

scoreboard players operation @s rotation_v = @s vehicle_rm
execute if score @s vehicle_cwi matches -1 run scoreboard players operation @s rotation_v *= -1 int
execute if score @s vehicle_cwi matches 0 run scoreboard players set @s rotation_v 0

scoreboard players operation @s rotation_u = @s vehicle_um
execute if score @s vehicle_cud matches 1 run scoreboard players operation @s rotation_u *= -1 int
execute if score @s vehicle_cud matches 0 if score @s vehicle_sp matches 0 run scoreboard players set @s rotation_u 0
execute if score @s vehicle_cud matches 0 if score @s vehicle_sp matches 1.. run function vehicles:control/3_rb
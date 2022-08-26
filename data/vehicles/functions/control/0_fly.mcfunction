scoreboard players set @s rotation_u 0
scoreboard players set @s rotation_w 0

execute if score @s vehicle_cfo matches 1 run function vehicles:control/0_u0
execute if score @s vehicle_cfo matches -1 run function vehicles:control/0_u1

execute if score @s vehicle_cwi matches 1 run function vehicles:control/0_r0
execute if score @s vehicle_cwi matches -1 run function vehicles:control/0_r1
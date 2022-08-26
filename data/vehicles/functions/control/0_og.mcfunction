execute if score @s vehicle_cfo matches 1 run function vehicles:control/0_f
execute if score @s vehicle_cfo matches -1 run function vehicles:control/0_b

execute if score @s vehicle_cwi matches 0 run function vehicles:control/0_rer
execute if score @s vehicle_cwi matches 1 run function vehicles:control/0_a
execute if score @s vehicle_cwi matches -1 run function vehicles:control/0_d
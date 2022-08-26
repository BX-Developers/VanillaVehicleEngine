execute if score @s vehicle_sp < @s vehicle_flyv run tag @s remove vehicle_UP
execute if score @s vehicle_cfo matches 1 run function vehicles:control/1_f
execute if score @s vehicle_cfo matches -1 run function vehicles:control/0_b

execute if score @s vehicle_cwi matches 0 run function vehicles:control/0_rer
execute if score @s vehicle_cwi matches 1 run function vehicles:control/0_a
execute if score @s vehicle_cwi matches -1 run function vehicles:control/0_d
scoreboard players set @s vehicle_flyt 0

execute unless entity @s[tag=not_vehicle_ST] run function vehicles:control/1_nst
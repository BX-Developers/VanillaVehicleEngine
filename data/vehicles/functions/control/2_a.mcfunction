scoreboard players set @s vehicle_tning 1

execute if score @s vehicle_acing matches 0.. run function vehicles:control/2_r0
execute if score @s vehicle_acing matches ..-1 run function vehicles:control/2_r1
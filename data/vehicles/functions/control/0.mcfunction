scoreboard players set @s vehicle_acing 0
scoreboard players set @s vehicle_tning 0
execute if score vehicle_OG int matches 1.. run function vehicles:control/0_og
execute if score vehicle_OG int matches 0 run function vehicles:control/0_fly
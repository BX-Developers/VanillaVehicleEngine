scoreboard players set @s vehicle_acing 0
scoreboard players set @s vehicle_tning 0
execute if score vehicle_OG int matches 3.. run function vehicles:control/1_og
execute if score vehicle_OG int matches ..2 run function vehicles:control/1_fly
scoreboard players operation @s vehicle_acing = @s vehicle_cfo
scoreboard players operation @s vehicle_tning = @s vehicle_cwi
execute if score vehicle_OG int matches 3.. run function vehicles:control/5_og
execute if score vehicle_OG int matches ..2 run function vehicles:control/5_fly
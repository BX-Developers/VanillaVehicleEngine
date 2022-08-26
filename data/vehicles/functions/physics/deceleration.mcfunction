scoreboard players set temp_f int 1000
execute if score @s vehicle_acing matches -1 if score @s vehicle_braking matches 900.. run scoreboard players operation temp_f int = @s vehicle_braking

scoreboard players operation @s vehicle_sp *= @s vehicle_friction
scoreboard players operation @s vehicle_sp /= temp_f int

execute if score @s vehicle_acing matches -1 if score @s vehicle_sp <= @s vehicle_back run scoreboard players set @s vehicle_sp 0

scoreboard players operation @s rotation_v *= @s vehicle_friction
scoreboard players operation @s rotation_v /= temp_f int

execute if score @s vehicle_acing matches -2 run scoreboard players set @s vehicle_sp 0
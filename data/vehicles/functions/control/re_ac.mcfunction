tag @s remove engine_run
tag @s remove not_engine_run
tag @s remove speed_up
tag @s remove not_speed_up
tag @s remove back_up
tag @s remove not_back_up

execute if score @s vehicle_acing matches 0 run tag @s add not_engine_run
execute unless score @s vehicle_acing matches 0 run tag @s add engine_run

execute if score @s vehicle_acing matches 1 run tag @s add speed_up
execute unless score @s vehicle_acing matches 1 run tag @s add not_speed_up

execute if score @s vehicle_acing matches ..-1 run tag @s add back_up
execute unless score @s vehicle_acing matches ..-1 run tag @s add not_back_up
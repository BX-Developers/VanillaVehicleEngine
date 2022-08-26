tag @s add not_vehicle_MC
tag @s remove vehicle_MC
tag @s add not_hit_on_block
tag @s remove hit_on_block
execute if score @s vehicle_state matches 0 run function vehicles:cubes/lead_test

tp @e[tag=math_marker,limit=1] 0 0 0
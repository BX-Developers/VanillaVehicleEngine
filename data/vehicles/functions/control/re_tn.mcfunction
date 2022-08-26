tag @s remove turning
tag @s remove not_turning
tag @s remove turn_left
tag @s remove not_turn_left
tag @s remove turn_right
tag @s remove not_turn_right

execute unless score @s vehicle_tning matches 0 run tag @s add turning
execute if score @s vehicle_tning matches 0 run tag @s add not_turning

execute unless score @s vehicle_tning matches 1 run tag @s add not_turn_left
execute if score @s vehicle_tning matches 1 run tag @s add turn_left

execute unless score @s vehicle_tning matches -1 run tag @s add not_turn_right
execute if score @s vehicle_tning matches -1 run tag @s add turn_right
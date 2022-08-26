execute store result score stempv int run data get storage math:io temp_actions[0].actions[0].value_conditions.velocity[0] 1000
execute store result score stempu int run data get storage math:io temp_actions[0].actions[0].value_conditions.velocity[1] 1000

execute if score @s vehicle_sp < stempv int run scoreboard players set temp_re int 0
execute if score @s vehicle_sp > stempu int run scoreboard players set temp_re int 0
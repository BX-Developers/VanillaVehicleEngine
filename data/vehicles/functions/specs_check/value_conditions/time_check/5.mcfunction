execute store result score stempv int run data get storage math:io temp_actions[0].actions[0].value_conditions.time_check.5[0]
execute store result score stempu int run data get storage math:io temp_actions[0].actions[0].value_conditions.time_check.5[1]

execute if score @s vehicle_time5 < stempv int run scoreboard players set temp_re int 0
execute if score @s vehicle_time5 > stempu int run scoreboard players set temp_re int 0
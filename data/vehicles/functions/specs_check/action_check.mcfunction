scoreboard players set temp_re int 1

scoreboard players operation stempt int = @s vehicle_time
execute store result score temp_T int run data get storage math:io temp_actions[0].actions[0].T
execute store result score temp_t int run data get storage math:io temp_actions[0].actions[0].t
scoreboard players operation temp_T int > 1 int
scoreboard players operation stempt int %= temp_T int
execute unless score stempt int = temp_t int run scoreboard players set temp_re int 0

data modify storage math:io temp_tags set from entity @s Tags
execute store result score stemp0 int run data get entity @s Tags
scoreboard players set stemp2 int 0
execute if data storage math:io temp_actions[0].actions[0].condition run scoreboard players set stemp2 int 1
execute if data storage math:io temp_actions[0].actions[0].conditions run scoreboard players set stemp2 int 1
execute if score stemp2 int matches 1 run function vehicles:specs_check/action_check0
execute if data storage math:io temp_actions[0].actions[0].not_condition run function vehicles:specs_check/action_check1
execute if data storage math:io temp_actions[0].actions[0].not_conditions run function vehicles:specs_check/action_check2

execute if data storage math:io temp_actions[0].actions[0].value_conditions run function vehicles:specs_check/value_conditions

execute if score temp_re int matches 1 run data modify storage math:io temp_actions[0].list append from storage math:io temp_actions[0].actions[0]
data remove storage math:io temp_actions[0].actions[0]
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function vehicles:specs_check/action_check
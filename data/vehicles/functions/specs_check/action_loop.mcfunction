data modify storage math:io temp_actions[0].list set value []
execute store result score sloop int run data get storage math:io temp_actions[0].actions
execute if score sloop int matches 1.. run function vehicles:specs_check/action_check

data modify storage math:io temp append from storage math:io temp_actions[0]
data remove storage math:io temp_actions[0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vehicles:specs_check/action_loop
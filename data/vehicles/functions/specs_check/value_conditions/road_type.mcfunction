execute store result score stempv int run data get storage math:io temp_actions[0].actions[0].value_conditions.road_type

scoreboard players set stempw int 0

scoreboard players operation stempu int = stempv int
scoreboard players operation stempu int %= 10 int
execute if score stempu int = road_test int run scoreboard players set stempw int 1
scoreboard players operation stempv int /= 10 int

scoreboard players operation stempu int = stempv int
scoreboard players operation stempu int %= 10 int
execute if score stempv int matches 1.. if score stempu int = road_test int run scoreboard players set stempw int 1
scoreboard players operation stempv int /= 10 int

scoreboard players operation stempu int = stempv int
scoreboard players operation stempu int %= 10 int
execute if score stempv int matches 1.. if score stempu int = road_test int run scoreboard players set stempw int 1
scoreboard players operation stempv int /= 10 int

execute if score stempv int matches 1.. if score stempv int = road_test int run scoreboard players set stempw int 1

execute if score stempw int matches 0 run scoreboard players set temp_re int 0
execute store result score stempv int run data get storage math:io temp_list[0].phiv_to[0] 10000
execute store result score stempu int run data get storage math:io temp_list[0].phiv_to[1]

scoreboard players operation stempw int = stempv int
scoreboard players operation stempw int -= @s rotation_w
scoreboard players operation stempw int /= stempu int

execute if score @s rotation_w < stempv int run scoreboard players operation stempw int > 1 int
execute if score @s rotation_w > stempv int run scoreboard players operation stempw int < -1 int

scoreboard players operation @s rotation_w += stempw int

tag @s add vehicle_phiv
execute if score @s rotation_w matches 0 run tag @s remove vehicle_phiv
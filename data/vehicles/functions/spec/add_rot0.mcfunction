scoreboard players set may_collision int 1
execute store result score stempv int run data get storage math:io temp_list[0].add_rot0 1000
scoreboard players operation @s vehicle_r0 += stempv int
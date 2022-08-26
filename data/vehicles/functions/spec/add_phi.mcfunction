scoreboard players set may_collision int 1
execute store result score stempv int run data get storage math:io temp_list[0].add_phi 10000
scoreboard players operation @s roll += stempv int
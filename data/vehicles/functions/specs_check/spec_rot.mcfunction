execute store result score stempr0 int run data get storage math:io temp_list[0].particle.rot[0] 1000
execute store result score stempr1 int run data get storage math:io temp_list[0].particle.rot[1] 1000
execute as @e[tag=math_marker,limit=1] run function vehicles:cubes/store_rot
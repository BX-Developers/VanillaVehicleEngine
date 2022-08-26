execute if data storage math:io temp_list[0].particle.rot run function vehicles:specs_check/spec_rot

execute store result score tempu int run data get storage math:io temp_list[0].particle.uvw[0] 1000
execute store result score tempv int run data get storage math:io temp_list[0].particle.uvw[1] 1000
execute store result score tempw int run data get storage math:io temp_list[0].particle.uvw[2] 1000
execute as @e[tag=math_marker,limit=1] run function vehicles:specs_check/tp_uvw

execute store result score stempv int run data get storage math:io temp_list[0].particle.id
data modify storage math:io temp_s set from storage math:io temp_list[0].particle.id

execute if score stempv int matches 1 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_1
execute if score stempv int matches 2 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_2
execute if score stempv int matches 3 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_3
execute if score stempv int matches 4 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_4
execute if score stempv int matches 5 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_5
execute if score stempv int matches 6 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_6
execute if score stempv int matches 7 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_7
execute if score stempv int matches 8 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_8
execute if score stempv int matches 9 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_9
execute if score stempv int matches 10 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_10
execute if score stempv int matches 11 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_11
execute if score stempv int matches 12 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_12
execute if score stempv int matches 13 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_13
execute if score stempv int matches 14 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_14
execute if score stempv int matches 15 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_15
execute if score stempv int matches 16 at @e[tag=math_marker,limit=1] run function #vehicles:spec/particles/length_16
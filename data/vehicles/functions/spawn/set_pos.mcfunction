tp @e[tag=math_marker,limit=1] ~ ~ ~
data modify storage math:io input.pos set from entity @e[tag=math_marker,limit=1] Pos
execute store result score stemp0 int run data get storage math:io input.pos[1] 1000
execute store result score stemp1 int run data get storage math:io input.gravity_point[1] 1000
scoreboard players operation stemp0 int -= stemp1 int
execute store result score stemp1 int run data get storage math:io input.gravity_vector[1] 1000
execute store result storage math:io input.pos[1] double 0.001 run scoreboard players operation stemp0 int -= stemp1 int
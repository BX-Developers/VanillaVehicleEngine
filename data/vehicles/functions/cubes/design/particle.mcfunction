execute store result score tempx0 int run data get entity @s Pos[0] 1000
execute store result score tempy0 int run data get entity @s Pos[1] 1000
execute store result score tempz0 int run data get entity @s Pos[2] 1000
execute at @s positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run function vehicles:math/get_ijk

scoreboard players operation tempu0 int = @s vehicle_gu
scoreboard players operation tempv0 int = @s vehicle_gv
scoreboard players operation tempw0 int = @s vehicle_gw
scoreboard players operation tempu1 int = @s vehicle_gpu
scoreboard players operation tempv1 int = @s vehicle_gpv
scoreboard players operation tempw1 int = @s vehicle_gpw
execute if score @s vehicle_g matches 1.. as @e[tag=math_marker,limit=1] run function vehicles:cubes/design/g_test

data modify storage math:io temp set from entity @s data.collision_points
scoreboard players operation loop int = @s vehicle_cpc
execute if score loop int matches 1.. as @e[tag=math_marker,limit=1] run function vehicles:cubes/design/c_test

execute if entity @s[tag=float_vehicle] run function vehicles:cubes/design/b_test
scoreboard players set result int 0
data modify storage math:io temp set from entity @s data.collision_points
scoreboard players operation loop int = @s vehicle_cpc
execute if score loop int matches 1.. as @e[tag=math_marker,limit=1] run function vehicles:collision/test
execute if score result int matches 1 run function vehicles:collision/hit
execute if score result int matches 0 if entity @s[tag=hit_on_block] run function vehicles:collision/not_hit

execute if score vehicle_OG int matches 3.. unless score @s vehicle_acing matches 1 run function vehicles:physics/deceleration
execute if score vehicle_OG int matches 1.. run function vehicles:physics/derotation

scoreboard players operation temp_roll int = @s roll
execute store result score tempx0 int run data get entity @s Pos[0] 1000
execute store result score tempy0 int run data get entity @s Pos[1] 1000
execute store result score tempz0 int run data get entity @s Pos[2] 1000
execute at @s positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run function vehicles:math/get_ijk
execute store result score tempr0 int run data get entity @s Rotation[0] 1000
execute store result score tempr1 int run data get entity @s Rotation[1] 1000
scoreboard players operation temp int = @s vehicle_id
execute as @e[tag=vehicle_cube] if score @s int = temp int run function vehicles:cubes/upd_uvw
execute at @s as @e[tag=vehicle_dsp] if score @s int = temp int run function vehicles:cubes/upd_rot

tag @s remove not_vehicle_MC
tag @s add vehicle_MC

tp @e[tag=math_marker,limit=1] 0 0 0
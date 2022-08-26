scoreboard players operation sstemp_sp int = @s vehicle_sp

scoreboard players set @s vehicle_sp 9853
function vehicles:physics/motion

execute store result score tempx0 int run data get entity @s Pos[0] 1000
execute store result score tempy0 int run data get entity @s Pos[1] 1000
execute store result score tempz0 int run data get entity @s Pos[2] 1000
scoreboard players operation temp_roll int = @s roll
execute at @s positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run function vehicles:math/get_ijk

scoreboard players operation tempsp int = @s vehicle_sp
scoreboard players operation tempu0 int = @s vehicle_gu
scoreboard players operation tempv0 int = @s vehicle_gv
scoreboard players operation tempw0 int = @s vehicle_gw
scoreboard players operation tempu1 int = @s vehicle_gpu
scoreboard players operation tempv1 int = @s vehicle_gpv
scoreboard players operation tempw1 int = @s vehicle_gpw

execute as @e[tag=math_marker,limit=1] run function vehicles:gravity/test
execute if score vehicle_OG int matches 3.. unless entity @s[tag=vehicle_OG] run function vehicles:physics/og
execute if score vehicle_OG int matches ..2 if entity @s[tag=vehicle_OG] run function vehicles:physics/not_og
execute if score surface int matches 1 run function vehicles:physics/surface

scoreboard players operation @s vehicle_sp = sstemp_sp int
scoreboard players remove @s vehicle_sp 9853
function vehicles:physics/motion

scoreboard players operation @s vehicle_sp = sstemp_sp int
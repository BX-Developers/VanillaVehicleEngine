data modify storage math:io temp set value []
scoreboard players operation temp0 int = vehicle_og int

scoreboard players operation temp3 int = temp0 int
scoreboard players operation temp3 int /= 1000 int
scoreboard players operation temp0 int %= 1000 int
scoreboard players operation temp2 int = temp0 int
scoreboard players operation temp2 int /= 100 int
scoreboard players operation temp0 int %= 100 int
scoreboard players operation temp1 int = temp0 int
scoreboard players operation temp1 int /= 10 int
scoreboard players operation temp0 int %= 10 int

execute if score temp0 int matches 1 run data modify storage math:io temp append from storage math:io g_point0
execute if score temp1 int matches 1 run data modify storage math:io temp append from storage math:io g_point1
execute if score temp2 int matches 1 run data modify storage math:io temp append from storage math:io g_point2
execute if score temp3 int matches 1 run data modify storage math:io temp append from storage math:io g_point3

execute if score temp0 int matches 0 run data modify storage math:io temp append from storage math:io g_point0
execute if score temp1 int matches 0 run data modify storage math:io temp append from storage math:io g_point1
execute if score temp2 int matches 0 run data modify storage math:io temp append from storage math:io g_point2
execute if score temp3 int matches 0 run data modify storage math:io temp append from storage math:io g_point3

scoreboard players set may_collision int 1

execute store result score temp_a0 int run data get storage math:io temp[0][0] 1000
execute store result score temp_a1 int run data get storage math:io temp[0][1] 1000
execute store result score temp_a2 int run data get storage math:io temp[0][2] 1000

execute store result score temp_b0 int run data get storage math:io temp[1][0] 1000
execute store result score temp_b1 int run data get storage math:io temp[1][1] 1000
execute store result score temp_b2 int run data get storage math:io temp[1][2] 1000

execute store result score temp_c0 int run data get storage math:io temp[2][0] 1000
execute store result score temp_c1 int run data get storage math:io temp[2][1] 1000
execute store result score temp_c2 int run data get storage math:io temp[2][2] 1000

scoreboard players operation temp_x0 int = temp_b0 int
scoreboard players operation temp_y0 int = temp_b1 int
scoreboard players operation temp_z0 int = temp_b2 int
scoreboard players operation temp_x1 int = temp_c0 int
scoreboard players operation temp_y1 int = temp_c1 int
scoreboard players operation temp_z1 int = temp_c2 int
scoreboard players operation temp_x0 int -= temp_a0 int
scoreboard players operation temp_y0 int -= temp_a1 int
scoreboard players operation temp_z0 int -= temp_a2 int
scoreboard players operation temp_x1 int -= temp_a0 int
scoreboard players operation temp_y1 int -= temp_a1 int
scoreboard players operation temp_z1 int -= temp_a2 int

execute as @e[tag=math_marker,limit=1] run function vehicles:gravity/delta_n
data modify entity @e[tag=math_marker,limit=1] Pos set from entity @s data.uvec
execute at @e[tag=math_marker,limit=1] as @e[tag=tmp,limit=1,sort=nearest] run function vehicles:gravity/delta_vec
kill @e[tag=tmp]

execute store result score theta int run data get entity @s Rotation[0] 10000
execute as @e[tag=math_marker,limit=1] run function vehicles:physics/get_tr
scoreboard players operation @s rotation_eu = alpha int
scoreboard players operation @s rotation_er = phi int

execute store result score temp_r1 int run data get entity @s Rotation[1] 10000
execute if score temp_r1 int matches 1.. run function vehicles:physics/get_tr_s1
execute if score temp_r1 int matches ..0 run function vehicles:physics/get_tr_s0
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players get @s rotation_eu
scoreboard players operation @s roll = @s rotation_er

scoreboard players operation temp_roll1 int = temp_roll int
scoreboard players operation temp_roll int = @s roll
execute at @s positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run function vehicles:math/get_ijk
scoreboard players operation temp_roll int = temp_roll1 int

execute store result score tempx0 int run data get entity @s Pos[0] 1000
execute store result score tempy0 int run data get entity @s Pos[1] 1000
execute store result score tempz0 int run data get entity @s Pos[2] 1000

scoreboard players operation tempu0 int = @s vehicle_gu
scoreboard players operation tempv0 int = @s vehicle_gv
scoreboard players operation tempw0 int = @s vehicle_gw
scoreboard players operation tempu1 int = @s vehicle_gpu
scoreboard players operation tempv1 int = @s vehicle_gpv
scoreboard players operation tempw1 int = @s vehicle_gpw

scoreboard players operation tempu int = tempu0 int
scoreboard players operation tempu int += tempu1 int
scoreboard players operation tempv int = tempv0 int
scoreboard players operation tempv int += tempv1 int
scoreboard players operation tempw int = tempw0 int
scoreboard players operation tempw int += tempw1 int

scoreboard players operation tempx int = tempx0 int
scoreboard players operation tempy int = tempy0 int
scoreboard players operation tempz int = tempz0 int

scoreboard players operation temp1 int = tempi0 int
scoreboard players operation temp1 int *= tempu int
scoreboard players operation temp1 int /= 1000 int
scoreboard players operation tempx int += temp1 int

scoreboard players operation temp1 int = tempj0 int
scoreboard players operation temp1 int *= tempv int
scoreboard players operation temp1 int /= 1000 int
scoreboard players operation tempx int += temp1 int

scoreboard players operation temp1 int = tempk0 int
scoreboard players operation temp1 int *= tempw int
scoreboard players operation temp1 int /= 1000 int
scoreboard players operation tempx int += temp1 int

scoreboard players operation temp1 int = tempi1 int
scoreboard players operation temp1 int *= tempu int
scoreboard players operation temp1 int /= 1000 int
scoreboard players operation tempy int += temp1 int

scoreboard players operation temp1 int = tempj1 int
scoreboard players operation temp1 int *= tempv int
scoreboard players operation temp1 int /= 1000 int
scoreboard players operation tempy int += temp1 int

scoreboard players operation temp1 int = tempk1 int
scoreboard players operation temp1 int *= tempw int
scoreboard players operation temp1 int /= 1000 int
scoreboard players operation tempy int += temp1 int

scoreboard players operation temp1 int = tempi2 int
scoreboard players operation temp1 int *= tempu int
scoreboard players operation temp1 int /= 1000 int
scoreboard players operation tempz int += temp1 int

scoreboard players operation temp1 int = tempj2 int
scoreboard players operation temp1 int *= tempv int
scoreboard players operation temp1 int /= 1000 int
scoreboard players operation tempz int += temp1 int

scoreboard players operation temp1 int = tempk2 int
scoreboard players operation temp1 int *= tempw int
scoreboard players operation temp1 int /= 1000 int
scoreboard players operation tempz int += temp1 int

scoreboard players operation tempx int -= temp_a0 int
scoreboard players operation tempx int *= temp_n0 int
scoreboard players operation tempz int -= temp_a2 int
scoreboard players operation tempz int *= temp_n2 int
scoreboard players operation tempx int += tempz int
scoreboard players operation tempx int /= temp_n1 int
scoreboard players operation tempy int -= temp_a1 int
scoreboard players operation tempy0 int -= tempy int
scoreboard players operation tempy0 int -= tempx int
execute store result entity @s Pos[1] double 0.001 run scoreboard players add tempy0 int 8

execute if score vehicle_OG int matches 3.. run function vehicles:gravity/resp
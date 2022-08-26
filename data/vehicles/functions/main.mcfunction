scoreboard players set may_collision int 0

#获取uvw坐标系原点和基向量ijk
execute store result score tempx0 int run data get entity @s Pos[0] 1000
execute store result score tempy0 int run data get entity @s Pos[1] 1000
execute store result score tempz0 int run data get entity @s Pos[2] 1000
scoreboard players operation temp_roll int = @s roll
execute at @s positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run function vehicles:math/get_ijk

#低速探测
scoreboard players operation tempsp int = @s vehicle_sp
scoreboard players operation lower_testsp int = @s vehicle_lowsp
execute unless entity @s[tag=vehicle_LS] if score tempsp int < lower_testsp int run function vehicles:gravity/ls
execute if entity @s[tag=vehicle_LS] if score tempsp int >= lower_testsp int run function vehicles:gravity/not_ls

#重力点探测
scoreboard players operation tempu0 int = @s vehicle_gu
scoreboard players operation tempv0 int = @s vehicle_gv
scoreboard players operation tempw0 int = @s vehicle_gw
scoreboard players operation tempu1 int = @s vehicle_gpu
scoreboard players operation tempv1 int = @s vehicle_gpv
scoreboard players operation tempw1 int = @s vehicle_gpw
execute as @e[tag=math_marker,limit=1] run function vehicles:gravity/test
execute if score vehicle_OG int matches 3.. unless entity @s[tag=vehicle_OG] run function vehicles:physics/og
execute if score vehicle_OG int matches ..2 if entity @s[tag=vehicle_OG] run function vehicles:physics/not_og

#浮力
execute if entity @s[tag=float_vehicle] if score vehicle_OG int matches 0 run function vehicles:physics/float

#接收玩家操作信号，接收更新信号
execute if score @s vehicle_state matches 1.. run function vehicles:recieve
execute if score @s upd_dsp matches 1.. run function vehicles:upd_dsp

#物理计算：着陆,重力,速度,角速度
execute if score surface int matches 1 run function vehicles:physics/surface
execute if score vehicle_OG int matches ..2 if score @s vehicle_g matches 1.. run function vehicles:physics/gravity
execute if score @s vehicle_sp matches 1..9853 run function vehicles:physics/motion
execute if score @s vehicle_sp matches 9854..19706 run function vehicles:physics/motion1
execute if score @s vehicle_sp matches 19707.. run function vehicles:physics/motion2
execute unless score @s rotation_u matches 0 run function vehicles:physics/rotation_u
execute unless score @s rotation_v matches 0 run function vehicles:physics/rotation_v
execute unless score @s rotation_w matches 0 run function vehicles:physics/rotation_w

#spec系统，碰撞，静止
execute if score @s vehicle_specs matches 1.. run function vehicles:specs
execute if score may_collision int matches 1 run function vehicles:may_collision
execute if score may_collision int matches 0 run function vehicles:static

#记分板更新
scoreboard players set @s vehicle_cfo 0
scoreboard players set @s vehicle_cwi 0
scoreboard players set @s vehicle_cr0 0
scoreboard players set @s vehicle_cr1 0
scoreboard players set @s vehicle_cud 0
scoreboard players add @s vehicle_time 1
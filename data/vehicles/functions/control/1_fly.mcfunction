scoreboard players add @s vehicle_flyt 1
scoreboard players set @s rotation_u 0
scoreboard players set @s rotation_v 0

execute if score @s vehicle_cfo matches 0 run scoreboard players set @s rotation_um 0
execute if score @s vehicle_cfo matches 1 run function vehicles:control/1_u0
execute if score @s vehicle_cfo matches -1 run function vehicles:control/1_u1

scoreboard players set temp int 0
execute if score @s vehicle_cwi matches 1 run function vehicles:control/1_r0
execute if score @s vehicle_cwi matches -1 run function vehicles:control/1_r1

scoreboard players operation temp0 int = temp int
scoreboard players operation temp int -= temp_roll int
scoreboard players operation temp int *= 3 int
scoreboard players operation temp int /= @s vehicle_m
execute if score temp_roll int < temp0 int run scoreboard players operation temp int > 1 int
execute if score temp_roll int > temp0 int run scoreboard players operation temp int < -1 int
scoreboard players operation @s rotation_w = temp int
scoreboard players operation temp int += @s roll
scoreboard players operation temp int /= 80 int
scoreboard players operation @s vehicle_vr0 += temp int

execute if score @s vehicle_flyt matches 100 run tag @s remove vehicle_UP

scoreboard players operation temp int = @s rotation_um
execute store result score temp_r1 int run data get entity @s Rotation[1] 1000
scoreboard players operation temp int -= temp_r1 int
scoreboard players operation temp int /= @s vehicle_m
scoreboard players operation temp int /= 3 int
execute if score @s rotation_um > temp_r1 int run scoreboard players operation temp int > 1 int
execute if score @s rotation_um < temp_r1 int run scoreboard players operation temp int < -1 int
execute store result entity @s Rotation[1] float 0.001 run scoreboard players operation temp_r1 int += temp int
scoreboard players operation temp int = @s vehicle_flyv
scoreboard players operation temp int /= 2 int
execute if score @s vehicle_sp < temp int unless entity @s[tag=vehicle_ST] run function vehicles:control/1_st
execute if score @s vehicle_sp > @s vehicle_flyv if entity @s[tag=vehicle_ST] run function vehicles:control/1_nst

execute unless entity @s[tag=vehicle_ST] run scoreboard players operation @s vehicle_vr1 = temp_r1 int

scoreboard players operation @s vehicle_sp < @s vehicle_vm

execute store result entity @s Rotation[0] float 0.001 run scoreboard players get @s vehicle_vr0
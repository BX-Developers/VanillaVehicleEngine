scoreboard players set @s vehicle_cpid 0
scoreboard players set @s vehicle_acing 0
scoreboard players set @s vehicle_tning 0

scoreboard players set @s vehicle_time0 0
scoreboard players set @s vehicle_time1 0
scoreboard players set @s vehicle_time2 0
scoreboard players set @s vehicle_time3 0
scoreboard players set @s vehicle_time4 0
scoreboard players set @s vehicle_time5 0
scoreboard players set @s vehicle_time6 0
scoreboard players set @s vehicle_time7 0
scoreboard players set @s vehicle_time8 0
scoreboard players set @s vehicle_time9 0

execute store result score @s ctrl_type run data get storage math:io input.ctrl_type
data modify entity @s data.collision_points set from storage math:io input.collision_points
execute store result score @s vehicle_cpc run data get storage math:io input.collision_points

execute store result score @s vehicle_gpu run data get storage math:io input.gravity_point[0] 1000
execute store result score @s vehicle_gpv run data get storage math:io input.gravity_point[1] 1000
execute store result score @s vehicle_gpw run data get storage math:io input.gravity_point[2] 1000
execute store result score @s vehicle_gu run data get storage math:io input.gravity_vector[0] 1000
execute store result score @s vehicle_gv run data get storage math:io input.gravity_vector[1] 1000
execute store result score @s vehicle_gw run data get storage math:io input.gravity_vector[2] 1000

execute if data storage math:io input.buoyancy_point run function vehicles:spawn/set_byc

execute store result score @s vehicle_m run data get storage math:io input.mass 10
execute store result score @s vehicle_g run data get storage math:io input.gravity 100
execute store result score @s vehicle_rm run data get storage math:io input.r_max 1000
execute store result score @s vehicle_um run data get storage math:io input.u_max 1000
execute store result score @s vehicle_vm run data get storage math:io input.v_max 1000
execute store result score @s vehicle_flyv run data get storage math:io input.fly_v 1000
execute store result score @s vehicle_flyu run data get storage math:io input.fly_u 1000
execute store result score @s vehicle_back run data get storage math:io input.back 1000
execute store result score @s vehicle_lowsp run data get storage math:io input.low_sp 1000
execute unless score @s vehicle_lowsp matches 1.. run scoreboard players set @s vehicle_lowsp 6500
execute store result score @s vehicle_bounce run data get storage math:io input.bounce 1000
execute store result score @s vehicle_friction run data get storage math:io input.friction 1000
execute store result score @s vehicle_braking run data get storage math:io input.braking 1000

execute store result score @s rotation_um run data get storage math:io input.rot_um 10000
execute store result score @s rotation_rm run data get storage math:io input.rot_rm 10000

execute store result score @s vehicle_vr0 run data get storage math:io input.rotation[0] 1000
execute store result score @s vehicle_vr1 run data get storage math:io input.rotation[1] 1000
data modify entity @s Rotation set from storage math:io input.rotation
data modify entity @s Pos set from storage math:io input.pos
execute store result score @s vehicle_id run scoreboard players add vehicle_id int 1
scoreboard players set @s vehicle_state 0
scoreboard players operation @e[tag=stmp] int = @s vehicle_id

setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'[{"text":"§7vehicle_"},{"color":"gray","italic":false,"score":{"name":"vehicle_id","objective":"int"}}]'}
data modify entity @s data.name set from block 0 11 0 Text1
execute if data storage math:io input.name run data modify entity @s data.name set from storage math:io input.name

execute if data storage math:io input.get_in_text run data modify entity @s data.get_in_text set from storage math:io input.get_in_text

scoreboard players set @s rotation_u 0
scoreboard players set @s rotation_v 0
scoreboard players set @s rotation_w 0

scoreboard players set @s vehicle_select 1
tag @s add stmp
tag @s add vehicle_cube
data modify storage math:io temp_primes set from storage math:class primes
data modify storage math:io temp set from storage math:io input.specs
execute store result score sloop int run data get storage math:io input.specs
execute store result score @s vehicle_specs run scoreboard players operation sloop int < 9 int
execute if score sloop int matches 1.. run function vehicles:spawn/set_loop
tag @s remove vehicle_cube
tag @s remove stmp

data modify entity @s data.specs set from storage math:io input.specs

data modify entity @s data.uvec set value [0.0d,-1.0d,0.0d]

tag @s add not_vehicle_T0
tag @s add not_vehicle_T1
tag @s add not_vehicle_T2
tag @s add not_vehicle_T3
tag @s add not_vehicle_T4
tag @s add not_vehicle_T5
tag @s add not_vehicle_T6
tag @s add not_vehicle_T7
tag @s add not_vehicle_T8
tag @s add not_vehicle_T9


tag @s add not_vehicle_MC
tag @s add not_vehicle_OG
tag @s add not_vehicle_UP
tag @s add not_vehicle_ST
tag @s add not_vehicle_LS
tag @s add not_vehicle_TS
tag @s add not_vehicle_OW
tag @s add not_engine_run
tag @s add not_speed_up
tag @s add not_back_up
tag @s add not_turning
tag @s add not_turn_left
tag @s add not_turn_right
tag @s add not_hit_on_block

tag @s remove vehicle
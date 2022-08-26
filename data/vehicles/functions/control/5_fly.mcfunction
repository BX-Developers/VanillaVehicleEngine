scoreboard players operation temp int = @s vehicle_g
scoreboard players operation temp int /= 2 int

scoreboard players operation impulse int = @s vehicle_g
execute if score @s vehicle_state matches 1..2 if score @s vehicle_cfo matches 1 run scoreboard players operation impulse int += temp int
execute if score @s vehicle_state matches 1..2 if score @s vehicle_cfo matches -1 run scoreboard players operation impulse int -= temp int
execute rotated 0.0 -90.0 run function vehicles:_impulse

scoreboard players set @s rotation_um 0
execute if score @s vehicle_state matches 3..4 unless score @s vehicle_cfo matches 0 run function vehicles:control/5_u

scoreboard players set temp1 int 0
scoreboard players set temp2 int 0
scoreboard players operation temp0 int = @s vehicle_state
scoreboard players operation temp0 int %= 2 int
execute if score temp0 int matches 0 unless score @s vehicle_cwi matches 0 run function vehicles:control/5_v
execute if score temp0 int matches 1 unless score @s vehicle_cwi matches 0 run function vehicles:control/5_w

scoreboard players operation temp0 int = temp1 int
scoreboard players operation temp1 int -= temp_roll int
scoreboard players operation temp1 int *= 3 int
scoreboard players operation temp1 int /= @s vehicle_m
execute if score temp_roll int < temp0 int run scoreboard players operation temp1 int > 1 int
execute if score temp_roll int > temp0 int run scoreboard players operation temp1 int < -1 int
scoreboard players operation @s rotation_w = temp1 int

scoreboard players operation temp0 int = temp2 int
scoreboard players operation temp2 int -= @s rotation_v
scoreboard players operation temp2 int /= @s vehicle_m
execute if score @s rotation_v < temp0 int run scoreboard players operation temp2 int > 1 int
execute if score @s rotation_v > temp0 int run scoreboard players operation temp2 int < -1 int
scoreboard players operation @s rotation_v += temp2 int

scoreboard players operation temp int = @s rotation_um
execute store result score temp_r1 int run data get entity @s Rotation[1] 1000
scoreboard players operation temp int -= temp_r1 int
scoreboard players operation temp int /= @s vehicle_m
scoreboard players operation temp int /= 3 int
execute if score @s rotation_um > temp_r1 int run scoreboard players operation temp int > 1 int
execute if score @s rotation_um < temp_r1 int run scoreboard players operation temp int < -1 int
execute store result entity @s Rotation[1] float 0.001 run scoreboard players operation temp_r1 int += temp int

scoreboard players operation @s vehicle_sp < @s vehicle_vm

scoreboard players operation @s vehicle_sp *= @s vehicle_friction
scoreboard players operation @s vehicle_sp /= 1000 int
scoreboard players operation @s rotation_u *= @s vehicle_friction
scoreboard players operation @s rotation_u /= 1000 int
scoreboard players operation @s rotation_v *= @s vehicle_friction
scoreboard players operation @s rotation_v /= 1000 int
scoreboard players operation @s rotation_w *= @s vehicle_friction
scoreboard players operation @s rotation_w /= 1000 int
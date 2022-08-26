scoreboard players operation temp int = @s vehicle_id
execute as @e[tag=vehicle,scores={vehicle_state=1..}] if score @s int = temp int run tag @s add tmp

data modify entity @e[tag=math_marker,limit=1] Pos set from entity @s Motion
data modify entity @e[tag=math_marker,limit=1] Pos[1] set value 0.0d
execute at @s rotated ~ 0.0 as @e[tag=math_marker,limit=1] positioned 0.0 0.0 0.0 if entity @s[distance=0.01..] run function vehicles:player_ctrl/wasd_test
execute store result score tempr0 int run data get entity @s Rotation[0] 1000
execute store result score tempr1 int run data get entity @s Rotation[1] 1000
execute as @e[tag=tmp,limit=1] run function vehicles:player_ctrl/rot_test

execute unless data entity @s RootVehicle.Entity run function vehicles:player_ctrl/out

tag @e remove tmp
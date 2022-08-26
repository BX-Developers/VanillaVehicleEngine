execute positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run function vehicles:math/get_k
scoreboard players operation stempk0 int *= impulse int
scoreboard players operation stempk1 int *= impulse int
scoreboard players operation stempk2 int *= impulse int

scoreboard players operation tempr0 int = @s vehicle_vr0
scoreboard players operation tempr1 int = @s vehicle_vr1
scoreboard players operation tempsp int = @s vehicle_sp
execute as @e[tag=math_marker,limit=1] run function vehicles:physics/get_speed
scoreboard players operation @s vehicle_vr0 = tempr0 int
scoreboard players operation @s vehicle_vr1 = tempr1 int
scoreboard players operation @s vehicle_sp = tempsp int
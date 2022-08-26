scoreboard players operation tempv0 int = @s vehicle_vr0
scoreboard players operation tempv1 int = @s vehicle_vr1
scoreboard players operation tempv2 int = @s vehicle_sp
execute as @e[tag=math_marker,limit=1] run function vehicles:gravity/resp_cal
scoreboard players operation @s vehicle_vr0 = tempr0 int
scoreboard players operation @s vehicle_vr1 = tempr1 int
scoreboard players operation @s vehicle_sp = tempsp int
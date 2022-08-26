scoreboard players set may_collision int 1

execute store result score tempx0 int run data get entity @s Pos[0] 1000
execute store result score tempy0 int run data get entity @s Pos[1] 1000
execute store result score tempz0 int run data get entity @s Pos[2] 1000

scoreboard players operation tempr0 int = @s vehicle_vr0
scoreboard players operation tempr1 int = @s vehicle_vr1
scoreboard players operation tempsp int = @s vehicle_sp
execute as @e[tag=math_marker,limit=1] run function vehicles:physics/speed

execute store result entity @s Pos[0] double 0.001 run scoreboard players operation tempx0 int += tempx1 int
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation tempy0 int += tempy1 int
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation tempz0 int += tempz1 int
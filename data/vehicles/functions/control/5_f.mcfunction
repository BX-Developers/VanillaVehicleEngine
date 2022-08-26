scoreboard players set @s vehicle_acing 1

scoreboard players operation stemp2 int = @s vehicle_flyv
scoreboard players operation stemp2 int *= 10 int
scoreboard players set stemp0 int 0
scoreboard players operation stemp1 int = @s vehicle_id
execute as @e[tag=vehicle_cube,tag=main_fan] if score @s int = stemp1 int run scoreboard players operation stemp1 int = @s vehicle_cpid
execute as @e[tag=vehicle_dsp] if score @s vehicle_cpid = stemp1 int run scoreboard players operation stemp1 int = @s rotation_w
execute if score stemp1 int matches ..-1 run scoreboard players operation stemp1 int *= -1 int
execute if score stemp1 int > stemp2 int run scoreboard players set stemp0 int 1
execute if score stemp0 int matches 1 at @s run tp @s ~ ~0.3 ~
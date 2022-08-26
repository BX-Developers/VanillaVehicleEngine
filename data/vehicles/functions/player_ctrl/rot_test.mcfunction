execute store result score @s vehicle_cr0 run data get entity @s Rotation[0] 1000
scoreboard players operation @s vehicle_cr0 -= tempr0 int
scoreboard players add @s vehicle_cr0 180000
scoreboard players operation @s vehicle_cr0 %= 360000 int
scoreboard players remove @s vehicle_cr0 180000

execute store result score @s vehicle_cr1 run data get entity @s Rotation[1] 1000
scoreboard players operation @s vehicle_cr1 -= tempr1 int
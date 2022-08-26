execute store result entity @s Rotation[0] float -0.001 run scoreboard players get stempr0 int
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score cos int run data get entity @s Pos[2] 10000
execute store result score sin int run data get entity @s Pos[0] 10000

execute store result entity @s Rotation[0] float -0.001 run scoreboard players get stempr1 int
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score tempw int run data get entity @s Pos[2] 10000
execute store result score tempv int run data get entity @s Pos[0] 10000

scoreboard players operation tempu int = tempw int
scoreboard players operation tempu int *= sin int
scoreboard players operation tempu int /= 10000 int

scoreboard players operation tempw int *= cos int
scoreboard players operation tempw int /= 10000 int

scoreboard players operation tempx int = tempu int
scoreboard players operation tempx int *= tempi0 int
scoreboard players operation temp1 int = tempv int
scoreboard players operation temp1 int *= tempj0 int
scoreboard players operation tempx int += temp1 int
scoreboard players operation temp1 int = tempw int
scoreboard players operation temp1 int *= tempk0 int
execute store result entity @s Pos[0] double 0.0000001 run scoreboard players operation tempx int += temp1 int

scoreboard players operation tempy int = tempu int
scoreboard players operation tempy int *= tempi1 int
scoreboard players operation temp1 int = tempv int
scoreboard players operation temp1 int *= tempj1 int
scoreboard players operation tempy int += temp1 int
scoreboard players operation temp1 int = tempw int
scoreboard players operation temp1 int *= tempk1 int
execute store result entity @s Pos[1] double 0.0000001 run scoreboard players operation tempy int += temp1 int

scoreboard players operation tempu int *= tempi2 int
scoreboard players operation tempv int *= tempj2 int
scoreboard players operation tempw int *= tempk2 int
scoreboard players operation tempu int += tempv int
execute store result entity @s Pos[2] double 0.0000001 run scoreboard players operation tempu int += tempw int

execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
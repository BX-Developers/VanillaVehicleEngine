tp @s ^1.0 ^ ^
execute store result score tempi0s int store result score tempi0 int run data get entity @s Pos[0] 1000
execute store result score tempi1s int store result score tempi1 int run data get entity @s Pos[1] 1000
execute store result score tempi2s int store result score tempi2 int run data get entity @s Pos[2] 1000

tp @s ^ ^1.0 ^
execute store result score tempj0s int store result score tempj0 int run data get entity @s Pos[0] 1000
execute store result score tempj1s int store result score tempj1 int run data get entity @s Pos[1] 1000
execute store result score tempj2s int store result score tempj2 int run data get entity @s Pos[2] 1000

tp @s ^ ^ ^1.0
execute store result score tempk0 int run data get entity @s Pos[0] 1000
execute store result score tempk1 int run data get entity @s Pos[1] 1000
execute store result score tempk2 int run data get entity @s Pos[2] 1000

execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get temp_roll int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score cos int run data get entity @s Pos[2] 10000
execute store result score sin int run data get entity @s Pos[0] 10000

scoreboard players operation tempi0 int *= cos int
scoreboard players operation tempi1 int *= cos int
scoreboard players operation tempi2 int *= cos int
scoreboard players operation tempi0s int *= sin int
scoreboard players operation tempi1s int *= sin int
scoreboard players operation tempi2s int *= sin int

scoreboard players operation tempj0 int *= cos int
scoreboard players operation tempj1 int *= cos int
scoreboard players operation tempj2 int *= cos int
scoreboard players operation tempj0s int *= sin int
scoreboard players operation tempj1s int *= sin int
scoreboard players operation tempj2s int *= sin int

scoreboard players operation tempi0 int -= tempj0s int
scoreboard players operation tempi1 int -= tempj1s int
scoreboard players operation tempi2 int -= tempj2s int

scoreboard players operation tempj0 int += tempi0s int
scoreboard players operation tempj1 int += tempi1s int
scoreboard players operation tempj2 int += tempi2s int

scoreboard players operation tempi0 int /= 10000 int
scoreboard players operation tempi1 int /= 10000 int
scoreboard players operation tempi2 int /= 10000 int
scoreboard players operation tempj0 int /= 10000 int
scoreboard players operation tempj1 int /= 10000 int
scoreboard players operation tempj2 int /= 10000 int
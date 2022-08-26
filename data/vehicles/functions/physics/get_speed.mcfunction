execute store result entity @s Rotation[0] float 0.001 run scoreboard players get tempr0 int
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get tempr1 int
execute at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score tempsp0 int run data get entity @s Pos[0] 1000
execute store result score tempsp1 int run data get entity @s Pos[1] 1000
execute store result score tempsp2 int run data get entity @s Pos[2] 1000
scoreboard players operation tempsp0 int *= tempsp int
scoreboard players operation tempsp1 int *= tempsp int
scoreboard players operation tempsp2 int *= tempsp int

execute store result entity @s Pos[0] double 0.0000005 run scoreboard players operation tempsp0 int += stempk0 int
execute store result entity @s Pos[1] double 0.0000005 run scoreboard players operation tempsp1 int += stempk1 int
execute store result entity @s Pos[2] double 0.0000005 run scoreboard players operation tempsp2 int += stempk2 int
scoreboard players operation tempsp int = tempsp0 int
execute positioned 0.0 0.0 0.0 run function vehicles:math/3get-length
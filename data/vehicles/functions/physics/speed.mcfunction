execute store result entity @s Rotation[0] float 0.001 run scoreboard players get tempr0 int
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get tempr1 int
execute at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score tempx1 int run data get entity @s Pos[0] 10000
execute store result score tempy1 int run data get entity @s Pos[1] 10000
execute store result score tempz1 int run data get entity @s Pos[2] 10000
scoreboard players operation tempx1 int *= tempsp int
scoreboard players operation tempy1 int *= tempsp int
scoreboard players operation tempz1 int *= tempsp int
scoreboard players operation tempx1 int /= 100000 int
scoreboard players operation tempy1 int /= 100000 int
scoreboard players operation tempz1 int /= 100000 int
execute if score tempx1 int matches ..-1 run scoreboard players add tempx1 int 1
execute if score tempy1 int matches ..-1 run scoreboard players add tempy1 int 1
execute if score tempz1 int matches ..-1 run scoreboard players add tempz1 int 1
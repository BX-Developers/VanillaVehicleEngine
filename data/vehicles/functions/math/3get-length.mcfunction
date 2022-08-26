execute facing entity @s feet run tp @s ^ ^ ^1.0 ~ ~
execute store result score stempi int run data get entity @s Pos[0] 1000
execute store result score stempj int run data get entity @s Pos[1] 1000
execute store result score stempk int run data get entity @s Pos[2] 1000
execute if score tempsp int matches ..-1 run scoreboard players operation tempsp int *= -1 int
execute if score tempsp1 int matches ..-1 run scoreboard players operation tempsp1 int *= -1 int
execute if score tempsp2 int matches ..-1 run scoreboard players operation tempsp2 int *= -1 int
execute if score stempi int matches ..-1 run scoreboard players operation stempi int *= -1 int
execute if score stempj int matches ..-1 run scoreboard players operation stempj int *= -1 int
execute if score stempk int matches ..-1 run scoreboard players operation stempk int *= -1 int
scoreboard players operation tempsp int += tempsp1 int
scoreboard players operation tempsp int += tempsp2 int
scoreboard players operation stempi int += stempj int
scoreboard players operation stempi int += stempk int
scoreboard players operation tempsp int /= stempi int

execute store result score tempr0 int run data get entity @s Rotation[0] 1000
execute store result score tempr1 int run data get entity @s Rotation[1] 1000
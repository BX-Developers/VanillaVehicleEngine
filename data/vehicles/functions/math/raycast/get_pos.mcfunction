execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score stempi int run data get entity @s Pos[0] 1000
execute store result score stempj int run data get entity @s Pos[1] 1000
execute store result score stempk int run data get entity @s Pos[2] 1000
tp @s ~ ~ ~
execute store result score stempx0 int run data get entity @s Pos[0] 1000
execute store result score stempy0 int run data get entity @s Pos[1] 1000
execute store result score stempz0 int run data get entity @s Pos[2] 1000
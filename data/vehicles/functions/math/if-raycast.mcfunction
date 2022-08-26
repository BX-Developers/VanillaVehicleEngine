execute as @e[tag=math_marker,limit=1] run function vehicles:math/raycast/get_pos
execute store result score stempx int run data get entity @s Pos[0] 1000
execute store result score stempy int run data get entity @s Pos[1] 1000
execute store result score stempz int run data get entity @s Pos[2] 1000
scoreboard players operation stempx int -= stempx0 int
scoreboard players operation stempy int -= stempy0 int
scoreboard players operation stempz int -= stempz0 int

scoreboard players operation stempx int *= 100 int
scoreboard players operation stempy int *= 100 int
scoreboard players operation stempz int *= 100 int

execute store result score stempn0 int run scoreboard players operation stempm0 int = stempx int
scoreboard players operation stempm0 int -= @s vehicle_d
scoreboard players operation stempn0 int += @s vehicle_d
scoreboard players operation stempm0 int /= stempi int
scoreboard players operation stempn0 int /= stempi int
execute if score stempm0 int > stempn0 int run scoreboard players operation stempm0 int >< stempn0 int
execute if score stempi int matches 0 run function vehicles:math/raycast/test0

execute store result score stempn1 int run scoreboard players operation stempm1 int = stempy int
scoreboard players operation stempn1 int += @s vehicle_h
scoreboard players operation stempm1 int /= stempj int
scoreboard players operation stempn1 int /= stempj int
execute if score stempm1 int > stempn1 int run scoreboard players operation stempm1 int >< stempn1 int
execute if score stempj int matches 0 run function vehicles:math/raycast/test1

execute store result score stempn2 int run scoreboard players operation stempm2 int = stempz int
scoreboard players operation stempm2 int -= @s vehicle_l
scoreboard players operation stempn2 int += @s vehicle_l
scoreboard players operation stempm2 int /= stempk int
scoreboard players operation stempn2 int /= stempk int
execute if score stempm2 int > stempn2 int run scoreboard players operation stempm2 int >< stempn2 int
execute if score stempk int matches 0 run function vehicles:math/raycast/test2

scoreboard players operation stempm0 int > stempm1 int
scoreboard players operation stempm0 int > stempm2 int
scoreboard players operation stempm0 int > 0 int
scoreboard players operation stempn0 int < stempn1 int
scoreboard players operation stempn0 int < stempn2 int

execute if score stempn0 int >= stempm0 int run tag @s add tmp
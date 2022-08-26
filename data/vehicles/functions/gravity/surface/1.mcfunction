data modify storage math:io temp set from entity @s Pos

execute store result score stempx0 int run data get storage math:io temp[0] 100
execute store result score stempy0 int run data get storage math:io temp[1] 100
execute store result score stempz0 int run data get storage math:io temp[2] 100
tp @s ~ ~ ~
execute store result score stempx1 int run data get entity @s Pos[0] 100
execute store result score stempy1 int run data get entity @s Pos[1] 100
execute store result score stempz1 int run data get entity @s Pos[2] 100

scoreboard players operation stempx1 int -= stempx0 int
scoreboard players operation stempz1 int -= stempz0 int
scoreboard players operation stempx1 int *= stempx1 int
scoreboard players operation stempz1 int *= stempz1 int
scoreboard players operation stempx1 int += stempz1 int
scoreboard players set sqrt int 163840000
scoreboard players operation sqrt int -= stempx1 int
function vehicles:math/sqrt
scoreboard players operation stempy0 int += sqrt int
execute store result entity @s Pos[1] double 0.01 run scoreboard players remove stempy0 int 11085
scoreboard players operation stempy1 int -= stempy0 int

execute if score stempy1 int matches -300..0 run scoreboard players set result int 1
execute if score stempy1 int matches -300..0 run scoreboard players set surface int 1
execute if score stempy1 int matches -300..80 at @s run tp @e[tag=math_marker,limit=1] ~ ~ ~

data modify entity @s Pos set from storage math:io temp
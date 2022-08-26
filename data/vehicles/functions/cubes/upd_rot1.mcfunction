scoreboard players operation stempr0 int = @s vehicle_r0
scoreboard players operation stempr1 int = @s vehicle_r1
execute as @e[tag=math_marker,limit=1] run function vehicles:cubes/store_rot

execute if entity @s[type=horse] at @s rotated as @e[tag=math_marker,limit=1] run tp @s ~ ~ ~ ~ ~
execute if entity @s[type=armor_stand] at @e[tag=math_marker,limit=1] run function vehicles:math/facing
tp @e[tag=math_marker,limit=1] ~ ~ ~ ~ ~
data modify entity @s Rotation set from entity @e[tag=math_marker,limit=1] Rotation
scoreboard players operation @s roll = temp_roll int
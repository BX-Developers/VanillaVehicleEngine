data modify storage math:io temp_tags set from entity @s Tags
execute store result score stemp0 int run data get entity @s Tags
data modify entity @s Tags append from storage math:io temp[0].cube
execute store result score stemp1 int run data get entity @s Tags
data modify entity @s Tags set from storage math:io temp_tags
execute if score stemp0 int = stemp1 int run scoreboard players operation @s vehicle_select *= temp_p int
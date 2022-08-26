scoreboard players operation @s roll = temp_roll int

execute if entity @s[type=!armor_stand] rotated ~ ~ positioned as @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[type=armor_stand] run function vehicles:math/facing
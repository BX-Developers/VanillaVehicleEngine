data modify entity @s Rotation[1] set value 0.0f
scoreboard players set @s roll 0
execute if score result int matches 1 at @s run tp @s ~ ~0.05 ~
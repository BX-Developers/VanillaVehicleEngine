tp @s ~ ~ ~
execute store result score temp_gty1 int run data get entity @s Pos[1] 10000
execute align y run tp @s ~ ~ ~
execute store result score temp_gty0 int run data get entity @s Pos[1] 10000
scoreboard players operation temp_gty1 int -= temp_gty0 int
tp @s ~ ~ ~

execute if score temp_gty1 int matches ..5000 run scoreboard players set surface int 1
execute if score temp_gty1 int matches ..5000 align y positioned ~ ~0.5 ~ run tp @s ~ ~ ~
scoreboard players set temp_re int 1
#resp_cal
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get tempv0 int
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get tempv1 int
execute at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score tempsp0 int run data get entity @s Pos[0] 1000
execute store result score tempsp1 int run data get entity @s Pos[1] 1000
execute store result score tempsp2 int run data get entity @s Pos[2] 1000
execute store result score tempv0 int run scoreboard players operation tempsp0 int *= tempv2 int
execute store result score tempv1 int run scoreboard players operation tempsp1 int *= tempv2 int
execute store result score tempv2 int run scoreboard players operation tempsp2 int *= tempv2 int
scoreboard players operation tempsp0 int /= 1000 int
scoreboard players operation tempsp1 int /= 1000 int
scoreboard players operation tempsp2 int /= 1000 int

scoreboard players operation temp0 int = temp_n0 int
scoreboard players operation temp0 int *= tempsp0 int
scoreboard players operation temp1 int = temp_n1 int
scoreboard players operation temp1 int *= tempsp1 int
scoreboard players operation temp0 int += temp1 int
scoreboard players operation temp1 int = temp_n2 int
scoreboard players operation temp1 int *= tempsp2 int
scoreboard players operation temp0 int += temp1 int
scoreboard players operation temp0 int /= 1000 int

scoreboard players operation tempsp0 int = temp_n0 int
scoreboard players operation tempsp0 int *= temp0 int
execute store result entity @s Pos[0] double 0.0000005 run scoreboard players operation tempv0 int -= tempsp0 int
scoreboard players operation tempsp1 int = temp_n1 int
scoreboard players operation tempsp1 int *= temp0 int
execute store result entity @s Pos[1] double 0.0000005 run scoreboard players operation tempv1 int -= tempsp1 int
scoreboard players operation tempsp2 int = temp_n2 int
scoreboard players operation tempsp2 int *= temp0 int
execute store result entity @s Pos[2] double 0.0000005 run scoreboard players operation tempv2 int -= tempsp2 int
scoreboard players operation tempsp int = tempv0 int
scoreboard players operation tempsp1 int = tempv1 int
scoreboard players operation tempsp2 int = tempv2 int

execute positioned 0.0 0.0 0.0 run function vehicles:math/3get-length
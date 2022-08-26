scoreboard players operation temp_n2 int = temp_x0 int
scoreboard players operation temp_n2 int *= temp_y1 int
scoreboard players operation temp_n1 int = temp_y0 int
scoreboard players operation temp_n1 int *= temp_x1 int
execute store result entity @s Pos[2] double 0.000001 run scoreboard players operation temp_n2 int -= temp_n1 int

scoreboard players operation temp_n0 int = temp_y0 int
scoreboard players operation temp_n0 int *= temp_z1 int
scoreboard players operation temp_n1 int = temp_z0 int
scoreboard players operation temp_n1 int *= temp_y1 int
execute store result entity @s Pos[0] double 0.000001 run scoreboard players operation temp_n0 int -= temp_n1 int

scoreboard players operation temp_n1 int = temp_z0 int
scoreboard players operation temp_n1 int *= temp_x1 int
scoreboard players operation temp_x0 int *= temp_z1 int
execute store result entity @s Pos[1] double 0.000001 run scoreboard players operation temp_n1 int -= temp_x0 int
execute positioned 0.0 0.0 0.0 facing entity @s feet run function vehicles:gravity/delta_entity
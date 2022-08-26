scoreboard players operation temp1 int = tempx0 int

scoreboard players operation temp2 int = tempi0 int
scoreboard players operation temp2 int *= @s vehicle_u
scoreboard players operation temp2 int /= 1000 int
scoreboard players operation temp1 int += temp2 int

scoreboard players operation temp2 int = tempj0 int
scoreboard players operation temp2 int *= @s vehicle_v
scoreboard players operation temp2 int /= 1000 int
scoreboard players operation temp1 int += temp2 int

scoreboard players operation temp2 int = tempk0 int
scoreboard players operation temp2 int *= @s vehicle_w
scoreboard players operation temp2 int /= 1000 int
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation temp1 int += temp2 int

scoreboard players operation temp1 int = tempy0 int

scoreboard players operation temp2 int = tempi1 int
scoreboard players operation temp2 int *= @s vehicle_u
scoreboard players operation temp2 int /= 1000 int
scoreboard players operation temp1 int += temp2 int

scoreboard players operation temp2 int = tempj1 int
scoreboard players operation temp2 int *= @s vehicle_v
scoreboard players operation temp2 int /= 1000 int
scoreboard players operation temp1 int += temp2 int

scoreboard players operation temp2 int = tempk1 int
scoreboard players operation temp2 int *= @s vehicle_w
scoreboard players operation temp2 int /= 1000 int
scoreboard players operation temp1 int += temp2 int
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation temp1 int -= @s vehicle_height

scoreboard players operation temp1 int = tempz0 int

scoreboard players operation temp2 int = tempi2 int
scoreboard players operation temp2 int *= @s vehicle_u
scoreboard players operation temp2 int /= 1000 int
scoreboard players operation temp1 int += temp2 int

scoreboard players operation temp2 int = tempj2 int
scoreboard players operation temp2 int *= @s vehicle_v
scoreboard players operation temp2 int /= 1000 int
scoreboard players operation temp1 int += temp2 int

scoreboard players operation temp2 int = tempk2 int
scoreboard players operation temp2 int *= @s vehicle_w
scoreboard players operation temp2 int /= 1000 int
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation temp1 int += temp2 int
scoreboard players operation tempu int = tempu0 int
scoreboard players operation tempu int += tempu1 int
scoreboard players operation tempv int = tempv0 int
scoreboard players operation tempv int += tempv1 int
scoreboard players operation tempw int = tempw0 int
scoreboard players operation tempw int += tempw1 int

scoreboard players operation tempx int = tempx0 int
scoreboard players operation tempy int = tempy0 int
scoreboard players operation tempz int = tempz0 int

scoreboard players operation temp1 int = tempi0 int
scoreboard players operation temp1 int *= tempu int
scoreboard players operation temp1 int /= 1000 int
scoreboard players operation tempx int += temp1 int

scoreboard players operation temp1 int = tempj0 int
scoreboard players operation temp1 int *= tempv int
scoreboard players operation temp1 int /= 1000 int
scoreboard players operation tempx int += temp1 int

scoreboard players operation temp1 int = tempk0 int
scoreboard players operation temp1 int *= tempw int
scoreboard players operation temp1 int /= 1000 int
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation tempx int += temp1 int

scoreboard players operation temp1 int = tempi1 int
scoreboard players operation temp1 int *= tempu int
scoreboard players operation temp1 int /= 1000 int
scoreboard players operation tempy int += temp1 int

scoreboard players operation temp1 int = tempj1 int
scoreboard players operation temp1 int *= tempv int
scoreboard players operation temp1 int /= 1000 int
scoreboard players operation tempy int += temp1 int

scoreboard players operation temp1 int = tempk1 int
scoreboard players operation temp1 int *= tempw int
scoreboard players operation temp1 int /= 1000 int
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation tempy int += temp1 int

scoreboard players operation temp1 int = tempi2 int
scoreboard players operation temp1 int *= tempu int
scoreboard players operation temp1 int /= 1000 int
scoreboard players operation tempz int += temp1 int

scoreboard players operation temp1 int = tempj2 int
scoreboard players operation temp1 int *= tempv int
scoreboard players operation temp1 int /= 1000 int
scoreboard players operation tempz int += temp1 int

scoreboard players operation temp1 int = tempk2 int
scoreboard players operation temp1 int *= tempw int
scoreboard players operation temp1 int /= 1000 int
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation tempz int += temp1 int
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @a
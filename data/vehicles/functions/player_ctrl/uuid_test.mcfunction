execute store result score -uuid0 int run data get entity @s UUID[0]
execute store result score -uuid1 int run data get entity @s UUID[1]
execute store result score -uuid2 int run data get entity @s UUID[2]
execute store result score -uuid3 int run data get entity @s UUID[3]
execute if score -uuid0 int = uuid0 int if score -uuid1 int = uuid1 int if score -uuid2 int = uuid2 int if score -uuid3 int = uuid3 int run tag @s add tmp
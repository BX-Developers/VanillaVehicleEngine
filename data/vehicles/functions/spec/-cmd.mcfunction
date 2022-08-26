execute store result score stempu int run data get entity @s ArmorItems[3].tag.CustomModelData
execute store result score stempv int run data get storage math:io temp_list[0].-cmd[0]
execute store result score stempw int run data get storage math:io temp_list[0].-cmd[1]
scoreboard players operation stempw int -= stempv int
scoreboard players operation stempu int -= stempv int
scoreboard players add stempw int 1
scoreboard players remove stempu int 1
scoreboard players operation stempu int %= stempw int
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players operation stempu int += stempv int
execute store result score stempv int run data get entity @s ArmorItems[3].tag.CustomModelData
execute store result score stempw int run data get storage math:io temp_list[0].add_cmd
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players operation stempv int += stempw int
data modify storage math:io temp_tags set from entity @s Tags
data modify entity @s Tags set value []
execute store result score loop int run data get storage math:io temp_tags
execute if score loop int matches 1.. run function vehicles:cubes/villager/tag_loop
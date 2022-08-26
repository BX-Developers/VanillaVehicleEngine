data modify storage math:io temp_cmp set from storage math:io temp_tags[0]
execute store success score temp0 int run data modify storage math:io temp_cmp set from storage math:io temp_s
data modify storage math:io temp_cmp set from storage math:io temp_tags[0]
execute store success score temp1 int run data modify storage math:io temp_cmp set from storage math:io temp
execute if score temp0 int matches 1 if score temp1 int matches 1 run data modify entity @s Tags append from storage math:io temp_tags[0]

data remove storage math:io temp_tags[0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vehicles:cubes/villager/tag_loop
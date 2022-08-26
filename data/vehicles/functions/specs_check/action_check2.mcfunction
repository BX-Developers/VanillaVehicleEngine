data modify entity @s Tags append from storage math:io temp_actions[0].actions[0].not_conditions[]
execute store result score stemp1 int run data get entity @s Tags
execute if score stemp0 int = stemp1 int run scoreboard players set temp_re int 0
data modify entity @s Tags set from storage math:io temp_tags
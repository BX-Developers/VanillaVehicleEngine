data modify storage math:io temp set from entity @s ArmorItems[3].tag.lc_tag
scoreboard players operation temp int = @s int
execute as @e[tag=vehicle] if score @s vehicle_id = temp int run data modify entity @s Tags append from storage math:io temp
tag @s add vehicle_vtged
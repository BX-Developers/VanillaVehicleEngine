data modify storage math:io temp set value ""
data modify storage math:io temp_s set value ""
data modify storage math:io temp set from entity @s ArmorItems[3].tag.rc_tag
data modify storage math:io temp_s set from entity @s ArmorItems[3].tag.lc_tag

scoreboard players operation temp int = @s int
execute as @e[tag=vehicle] if score @s vehicle_id = temp int run function vehicles:cubes/villager/tag_remove

tag @s remove vehicle_vtged

data modify entity @s Health set value 1024.0d
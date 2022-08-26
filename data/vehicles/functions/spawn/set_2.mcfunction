scoreboard players operation @s vehicle_cpid = #cpid vehicle_cpid

data modify entity @s ArmorItems[3].tag.CustomModelData set from storage math:io temp[0].cmd
data modify entity @s Tags append from storage math:io temp[0].dsp_tags[]
execute if data storage math:io temp[0].rot run function vehicles:spawn/get_rot
execute if score stempt int matches 5 run function vehicles:cubes/villager/get_tag

tag @s remove stmp2
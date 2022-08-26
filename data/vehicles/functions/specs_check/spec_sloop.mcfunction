execute if data storage math:io temp_list[0].set_pos run function vehicles:spec/set_pos
execute as @e[tag=stmp,limit=1] at @s positioned ~ ~1.775 ~ run function vehicles:specs_check/spec_stmp
execute as @e[tag=tmp,limit=1] at @s run function vehicles:specs_check/spec_tmp

data remove storage math:io temp_list[0]
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function vehicles:specs_check/spec_sloop
scoreboard players operation stempi int = @s vehicle_cpid
execute as @e[tag=vehicle_dsp] if score @s vehicle_cpid = stempi int run tag @s add stmp
data modify storage math:io temp_list set from storage math:io temp[0].list
scoreboard players operation sloop int = stempl int
function vehicles:specs_check/spec_sloop
tag @e[tag=vehicle_dsp] remove stmp
execute unless data storage math:io input.pos run function vehicles:spawn/set_pos
execute unless data storage math:io input.rotation run function vehicles:spawn/set_rot
tag @e remove result

summon marker 0 11 0 {Tags:["vehicle","result","vehicle_entity","vehicle_nsp"]}
execute store result score sloop int run data get storage math:io input.cubes
data modify storage math:io temp set from storage math:io input.cubes
execute if score sloop int matches 1.. run function vehicles:spawn/summon_loop

execute as @e[tag=result,limit=1] run function vehicles:spawn/set
tag @e remove stmp

schedule function vehicles:spawn/upd_all 2t replace
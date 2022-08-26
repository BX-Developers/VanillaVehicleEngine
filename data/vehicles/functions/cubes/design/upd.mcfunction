execute as @e[tag=design_vehicle] run function vehicles:_die
data modify storage math:io input set from storage math:io design
function vehicles:_spawn
tag @e[tag=result,limit=1] add design_vehicle
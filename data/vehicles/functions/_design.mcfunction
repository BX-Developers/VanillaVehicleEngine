execute store success score temp int run data modify storage math:io _design set from storage math:io design
execute if score temp int matches 1 run function vehicles:cubes/design/upd
execute as @e[tag=design_vehicle,limit=1] run function vehicles:cubes/design/particle
execute as @e[tag=vehicle] run function vehicles:_die

function vehicles:_class

#data modify storage math:io input set from storage math:class vehicles[{id:"test_car"}]
#data modify storage math:io input set from storage math:class vehicles[{id:"first_plane"}]
#data modify storage math:io input set from storage math:class vehicles[{id:"first_car"}]
#data modify storage math:io input set from storage math:class vehicles[{id:"first_rocket"}]
#data modify storage math:io input set from storage math:class vehicles[{id:"first_hc"}]
data modify storage math:io input set from storage math:class vehicles[{id:"bamboo_fly"}]
#data modify storage math:io input set from storage math:class vehicles[{id:"first_boat"}]
function vehicles:_spawn
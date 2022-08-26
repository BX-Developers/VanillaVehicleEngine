data modify storage math:io temp_primes set from storage math:class primes
data modify storage math:io temp_actions set from entity @s data.specs
data modify storage math:io temp set value []

scoreboard players operation loop int = @s vehicle_specs
execute if score loop int matches 1.. run function vehicles:specs_check/action_loop

scoreboard players operation temp0 int = @s int
scoreboard players operation temp int = @s vehicle_id
scoreboard players operation @s int = temp int
tag @s add vehicle_cube
tag @s add vehicle_dsp
tag @s add tmp
scoreboard players operation loop int = @s vehicle_specs
execute if score loop int matches 1.. run function vehicles:specs_check/spec_loop
tag @s remove tmp
tag @s remove vehicle_dsp
tag @s remove vehicle_cube
scoreboard players operation @s int = temp0 int
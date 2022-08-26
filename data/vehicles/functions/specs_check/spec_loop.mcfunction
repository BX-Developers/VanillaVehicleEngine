execute store result score temp_p int run data get storage math:io temp_primes[0]

execute store result score stempl int run data get storage math:io temp[0].list
execute if score stempl int matches 1.. as @e[tag=vehicle_cube] if score @s int = temp int run function vehicles:specs_check/spec_check

data remove storage math:io temp[0]
data remove storage math:io temp_primes[0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vehicles:specs_check/spec_loop
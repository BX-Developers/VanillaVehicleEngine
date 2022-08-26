execute store result score temp_p int run data get storage math:io temp_primes[0]

execute as @e[tag=stmp,tag=vehicle_cube] run function vehicles:spawn/tag_check

data remove storage math:io temp[0]
data remove storage math:io temp_primes[0]
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function vehicles:spawn/set_loop
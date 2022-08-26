tag @s remove not_hit_on_block
tag @s add hit_on_block

scoreboard players operation @s rotation_v *= -1 int
scoreboard players set temp_re int 1
execute if score @s vehicle_g matches 1.. if score vehicle_OG int matches 0 if score @s vehicle_sp matches ..800 run scoreboard players set temp_re int 0
execute if score temp_re int matches 1 run function vehicles:collision/re_sp

scoreboard players set temp_re int 1
execute if score @s vehicle_g matches 1.. unless entity @s[tag=vehicle_OG] run scoreboard players set temp_re int 0
execute if score temp_re int matches 1 run function vehicles:collision/re_rotate
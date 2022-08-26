scoreboard players operation @s vehicle_acing = @s vehicle_cfo
scoreboard players operation @s vehicle_tning = @s vehicle_cwi

scoreboard players operation tempv int = @s vehicle_vm
execute if entity @s[tag=vehicle_OG] run scoreboard players set tempv int 1000

execute if score @s vehicle_cwi matches 0 run function vehicles:control/0_rer
execute if score @s vehicle_cwi matches 1 run function vehicles:control/0_a
execute if score @s vehicle_cwi matches -1 run function vehicles:control/0_d

scoreboard players set tempu int 1
execute unless entity @s[tag=vehicle_OG] unless entity @s[tag=vehicle_OW] run scoreboard players set tempu int 0
execute store result score @s vehicle_vr0 run data get entity @s Rotation[0] 1000
execute if score tempu int matches 1 store result score @s vehicle_vr1 run data get entity @s Rotation[1] 1000

execute if score tempu int matches 1 if score @s vehicle_cfo matches 1 run function vehicles:control/0_f
execute if score tempu int matches 1 if score @s vehicle_cfo matches -1 run function vehicles:control/0_b

scoreboard players operation @s vehicle_sp < tempv int
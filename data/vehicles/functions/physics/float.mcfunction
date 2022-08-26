scoreboard players operation tempu int = @s vehicle_bu
scoreboard players operation tempv int = @s vehicle_bv
scoreboard players operation tempw int = @s vehicle_bw
execute as @e[tag=math_marker,limit=1] run function vehicles:physics/float/test1
execute if entity @s[tag=vehicle_OW] if score result int matches 0 run function vehicles:physics/not_ow
execute unless entity @s[tag=vehicle_OW] if score result int matches 1.. run function vehicles:physics/ow

execute if score result int matches 1.. run function vehicles:physics/float/up
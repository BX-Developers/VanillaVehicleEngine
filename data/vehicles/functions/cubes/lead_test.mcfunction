scoreboard players operation temp int = @s vehicle_id
execute as @e[tag=vehicle_lead] if score @s int = temp int run tag @s add tmp
execute unless entity @e[tag=tmp] run function vehicles:cubes/lead
tag @e remove tmp
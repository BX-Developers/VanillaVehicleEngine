summon minecraft:area_effect_cloud 0 11 0 {CustomNameVisible:1b,CustomName:'{"text":"right click to get in"}',Duration:50,Tags:["vehicle_entity","vehicle_lead","tmp","upd_aec"]}
execute if data entity @s data.get_in_text run data modify entity @e[tag=tmp,limit=1] CustomName set from entity @s data.get_in_text

scoreboard players operation temp6 int = @s vehicle_id
execute as @e[tag=vehicle_seat,sort=random] if score @s int = temp6 int at @s run function vehicles:cubes/lead_tp

scoreboard players operation @e[tag=tmp,limit=1] int = @s vehicle_id
tag @e remove tmp
scoreboard players operation @a[tag=tmp1,limit=1] ctrl_vehicle = @s vehicle_id
scoreboard players operation @s int = @a[tag=tmp1,limit=1] vehicle_id

scoreboard players set @s vehicle_state 1
scoreboard players set @s vehicle_cfo 0
scoreboard players set @s vehicle_cwi 0
scoreboard players set @s vehicle_cr0 0
scoreboard players set @s vehicle_cr1 0

scoreboard players operation temp7 int = @s vehicle_id
execute as @e[tag=vehicle_lead] if score @s int = temp7 int run kill @s

tag @s remove not_vehicle_on
tag @s add vehicle_on
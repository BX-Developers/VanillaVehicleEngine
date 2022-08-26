scoreboard players operation @s vehicle_cpid = #cpid vehicle_cpid
scoreboard players set @s vehicle_select 1

data modify entity @s Tags append from storage math:io temp[0].tags[]
execute if data storage math:io temp[0].uvw run function vehicles:spawn/get_uvw
execute if data storage math:io temp[0].ctrl_seat run function vehicles:spawn/ctrl_seat

execute if score stempt int matches 0 run scoreboard players set @s vehicle_height 1775
execute if score stempt int matches 1 run scoreboard players set @s vehicle_height 2075
execute if score stempt int matches 2.. run scoreboard players set @s vehicle_height 1075

tag @s remove stmp1
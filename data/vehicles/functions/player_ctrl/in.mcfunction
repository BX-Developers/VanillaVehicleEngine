scoreboard players set @s vehicle_state 1
execute unless score @s vehicle_id matches 1.. store result score @s vehicle_id run scoreboard players add vehicle_id int 1

execute store result score uuid0 int run data get entity @s RootVehicle.Entity.UUID[0]
execute store result score uuid1 int run data get entity @s RootVehicle.Entity.UUID[1]
execute store result score uuid2 int run data get entity @s RootVehicle.Entity.UUID[2]
execute store result score uuid3 int run data get entity @s RootVehicle.Entity.UUID[3]
execute at @s as @e[tag=vehicle_cube,distance=..20] run function vehicles:player_ctrl/uuid_test
execute if score @s ctrl_gui matches 1.. run function vehicles:guis/out
scoreboard players operation @s ctrl_gui = @e[tag=tmp,limit=1] ctrl_gui
execute if score @s ctrl_gui matches 1.. run function vehicles:guis/enter
scoreboard players operation temp int = @e[tag=tmp,limit=1] int
tag @s add tmp1
execute as @e[tag=vehicle] if score @s vehicle_id = temp int run function vehicles:player_ctrl/on
tag @s remove tmp1
tag @e remove tmp
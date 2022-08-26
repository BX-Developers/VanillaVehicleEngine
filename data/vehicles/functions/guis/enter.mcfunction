scoreboard players set @s vehicle_rc 0
scoreboard players set @s ctrl_ws 0
scoreboard players set @s ctrl_ad 0
execute at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.8
function vehicles:guis/drop_hotbar
function vehicles:guis/items
tag @s add vehicle_GUI

scoreboard players operation temp_id int = @s ctrl_vehicle
execute as @e[tag=vehicle] if score @s vehicle_id = temp_id int run function vehicles:guis/add_tag
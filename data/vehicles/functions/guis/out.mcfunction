execute at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.8
function vehicles:guis/clear_hotbar
scoreboard players reset @s ctrl_gui
tag @s remove vehicle_GUI
scoreboard players operation temp_id int = @s ctrl_vehicle
execute as @e[tag=vehicle] if score @s vehicle_id = temp_id int run scoreboard players set @s vehicle_state 0

scoreboard players operation temp_id int = @s ctrl_vehicle
execute as @e[tag=vehicle] if score @s vehicle_id = temp_id int run function vehicles:guis/remove_tag
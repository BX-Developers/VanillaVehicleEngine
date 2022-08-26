scoreboard players operation temp_id int = @s ctrl_vehicle
execute as @e[tag=vehicle] if score @s vehicle_id = temp_id int run tag @s add tmp
scoreboard players set temp_re int 1

title @s actionbar {"text":"与载具失去信号！","color":"red"}
execute if entity @e[tag=tmp,limit=1] run title @s actionbar [{"text":"已连接到","color":"green"},{"nbt":"data.name","entity":"@e[tag=tmp,limit=1]","interpret":true}]
scoreboard players set @e[tag=tmp,limit=1] vehicle_state 1

scoreboard players set temp_button int 0
execute if score @s vehicle_rc matches 1.. if data entity @s SelectedItem.tag{ctrl_ws:0b} run scoreboard players set temp_button int 1
execute if data entity @s Inventory[{Slot:-106b,tag:{ctrl_ws:0b}}] run scoreboard players set temp_button int 1
execute if score temp_button int matches 1 run function vehicles:guis/actions/press_w

scoreboard players set temp_button int 0
execute if score @s vehicle_rc matches 1.. if data entity @s SelectedItem.tag{ctrl_ws:1b} run scoreboard players set temp_button int 1
execute if data entity @s Inventory[{Slot:-106b,tag:{ctrl_ws:1b}}] run scoreboard players set temp_button int 1
execute if score temp_button int matches 1 run function vehicles:guis/actions/press_s

scoreboard players set temp_button int 0
execute if score @s vehicle_rc matches 1.. if data entity @s SelectedItem.tag{ctrl_a:1b} run scoreboard players set temp_button int 1
execute if data entity @s Inventory[{Slot:-106b,tag:{ctrl_a:1b}}] run scoreboard players set temp_button int 1
execute if score temp_button int matches 1 run function vehicles:guis/actions/press_a

scoreboard players set temp_button int 0
execute if score @s vehicle_rc matches 1.. if data entity @s SelectedItem.tag{ctrl_d:1b} run scoreboard players set temp_button int 1
execute if data entity @s Inventory[{Slot:-106b,tag:{ctrl_d:1b}}] run scoreboard players set temp_button int 1
execute if score temp_button int matches 1 run function vehicles:guis/actions/press_d


execute unless data entity @s Inventory[{Slot:8b,tag:{close_ui:1b}}] run scoreboard players set temp_re int 0
execute unless data entity @s Inventory[{Slot:4b}].tag.ctrl_ws unless data entity @s Inventory[{Slot:-106b}].tag.ctrl_ws run function vehicles:guis/actions/switch_ws
execute unless data entity @s Inventory[{Slot:3b,tag:{ctrl_a:1b}}] unless data entity @s Inventory[{Slot:-106b,tag:{ctrl_a:1b}}] run scoreboard players set temp_re int 0
execute unless data entity @s Inventory[{Slot:5b,tag:{ctrl_d:1b}}] unless data entity @s Inventory[{Slot:-106b,tag:{ctrl_d:1b}}] run scoreboard players set temp_re int 0

execute if score temp_re int matches 0 run function vehicles:guis/items/1

tag @e remove tmp

execute if score @s vehicle_rc matches 1.. if data entity @s SelectedItem.tag{close_ui:1b} run function vehicles:guis/out
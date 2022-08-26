scoreboard players set @s vehicle_state 0
execute as @e[tag=tmp,limit=1] run function vehicles:player_ctrl/off
execute if score @s ctrl_gui matches 1.. run function vehicles:guis/out
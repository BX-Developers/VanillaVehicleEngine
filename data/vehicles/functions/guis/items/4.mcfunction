clear @s #vehicles:all{vehicle_ui:1b}
function vehicles:guis/drop_hotbar
item replace entity @s hotbar.8 with carrot_on_a_stick{close_ui:1b,vehicle_ui:1b,CustomModelData:1003000,display:{Name:'{"text":"§c断开连接"}',Lore:['{"text":"§7右键使用"}']}}
execute if score @s ctrl_ws matches 0 run item replace entity @s hotbar.4 with carrot_on_a_stick{ctrl_ws:0b,vehicle_ui:1b,CustomModelData:1003002,display:{Name:'{"text":"§c按ws升降"}',Lore:['{"text":"§7按Q切换"}']}}
execute if score @s ctrl_ws matches 1 run item replace entity @s hotbar.4 with carrot_on_a_stick{ctrl_ws:1b,vehicle_ui:1b,CustomModelData:1003002,display:{Name:'{"text":"§c按ws俯冲/后退"}',Lore:['{"text":"§7按Q切换"}']}}
execute if score @s ctrl_ad matches 0 run item replace entity @s hotbar.5 with carrot_on_a_stick{ctrl_ad:0b,vehicle_ui:1b,CustomModelData:1003003,display:{Name:'{"text":"§c按ad横滚"}',Lore:['{"text":"§7按Q切换"}']}}
execute if score @s ctrl_ad matches 1 run item replace entity @s hotbar.5 with carrot_on_a_stick{ctrl_ad:1b,vehicle_ui:1b,CustomModelData:1003003,display:{Name:'{"text":"§c按ad偏航"}',Lore:['{"text":"§7按Q切换"}']}}

execute if score @s ctrl_ws matches 0 if score @s ctrl_ad matches 0 run scoreboard players set @e[tag=tmp,limit=1] vehicle_state 1
execute if score @s ctrl_ws matches 0 if score @s ctrl_ad matches 1 run scoreboard players set @e[tag=tmp,limit=1] vehicle_state 2
execute if score @s ctrl_ws matches 1 if score @s ctrl_ad matches 0 run scoreboard players set @e[tag=tmp,limit=1] vehicle_state 3
execute if score @s ctrl_ws matches 1 if score @s ctrl_ad matches 1 run scoreboard players set @e[tag=tmp,limit=1] vehicle_state 4
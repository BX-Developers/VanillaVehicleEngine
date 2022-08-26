clear @s #vehicles:all{vehicle_ui:1b}
function vehicles:guis/drop_hotbar
item replace entity @s hotbar.8 with carrot_on_a_stick{close_ui:1b,vehicle_ui:1b,CustomModelData:1003000,display:{Name:'{"text":"§c断开连接"}',Lore:['{"text":"§7右键使用"}']}}
execute if score @s ctrl_ws matches 0 run item replace entity @s hotbar.4 with carrot_on_a_stick{ctrl_ws:0b,vehicle_ui:1b,CustomModelData:1003002,display:{Name:'{"text":"§cforw"}',Lore:['{"text":"§7按F或右键使用"}','{"text":"§7按Q切换"}']}}
execute if score @s ctrl_ws matches 1 run item replace entity @s hotbar.4 with carrot_on_a_stick{ctrl_ws:1b,vehicle_ui:1b,CustomModelData:1003002,display:{Name:'{"text":"§cback"}',Lore:['{"text":"§7按F或右键使用"}','{"text":"§7按Q切换"}']}}
item replace entity @s hotbar.3 with carrot_on_a_stick{ctrl_a:1b,vehicle_ui:1b,CustomModelData:1003001,display:{Name:'{"text":"§cleft"}',Lore:['{"text":"§7按F或右键使用"}']}}
item replace entity @s hotbar.5 with carrot_on_a_stick{ctrl_d:1b,vehicle_ui:1b,CustomModelData:1003001,display:{Name:'{"text":"§cright"}',Lore:['{"text":"§7按F或右键使用"}']}}
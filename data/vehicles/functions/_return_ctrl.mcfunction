execute at @s positioned ~ ~1.0 ~ run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.04 20 force @a
execute at @s run summon item ~ ~1.0 ~ {Tags:["tmp"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1003002,vehicle_ctrl:1b,ctrl_vehicle:0,display:{Name:'{"text":"§f遥控器"}',Lore:['{"text":""}']}}},Motion:[0.0d,0.2d,0.0d]}
data modify entity @e[tag=tmp,limit=1] Item.tag.display.Lore[0] set from entity @s data.name
execute store result entity @e[tag=tmp,limit=1] Item.tag.ctrl_vehicle int 1 run scoreboard players get @s vehicle_id
execute store result entity @e[tag=tmp,limit=1] Item.tag.ctrl_gui int 1 run scoreboard players get input int
tag @e remove tmp
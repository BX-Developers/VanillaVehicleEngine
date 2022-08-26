summon item ~ ~ ~ {Tags:["stmp"],Item:{id:"minecraft:glass",Count:1b}}
data modify entity @e[tag=stmp,limit=1] Item set from entity @s Inventory[{Slot:6b}]
tag @e remove stmp
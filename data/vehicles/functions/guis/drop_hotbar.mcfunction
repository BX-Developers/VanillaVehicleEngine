data modify storage math:io temp_slots set value []
execute unless data entity @s Inventory[{Slot:9b}] run data modify storage math:io temp_slots append value 9
execute unless data entity @s Inventory[{Slot:10b}] run data modify storage math:io temp_slots append value 10
execute unless data entity @s Inventory[{Slot:11b}] run data modify storage math:io temp_slots append value 11
execute unless data entity @s Inventory[{Slot:12b}] run data modify storage math:io temp_slots append value 12
execute unless data entity @s Inventory[{Slot:13b}] run data modify storage math:io temp_slots append value 13
execute unless data entity @s Inventory[{Slot:14b}] run data modify storage math:io temp_slots append value 14
execute unless data entity @s Inventory[{Slot:15b}] run data modify storage math:io temp_slots append value 15
execute unless data entity @s Inventory[{Slot:16b}] run data modify storage math:io temp_slots append value 16
execute unless data entity @s Inventory[{Slot:17b}] run data modify storage math:io temp_slots append value 17
execute unless data entity @s Inventory[{Slot:18b}] run data modify storage math:io temp_slots append value 18
execute unless data entity @s Inventory[{Slot:19b}] run data modify storage math:io temp_slots append value 19
execute unless data entity @s Inventory[{Slot:20b}] run data modify storage math:io temp_slots append value 20
execute unless data entity @s Inventory[{Slot:21b}] run data modify storage math:io temp_slots append value 21
execute unless data entity @s Inventory[{Slot:22b}] run data modify storage math:io temp_slots append value 22
execute unless data entity @s Inventory[{Slot:23b}] run data modify storage math:io temp_slots append value 23
execute unless data entity @s Inventory[{Slot:24b}] run data modify storage math:io temp_slots append value 24
execute unless data entity @s Inventory[{Slot:25b}] run data modify storage math:io temp_slots append value 25
execute unless data entity @s Inventory[{Slot:26b}] run data modify storage math:io temp_slots append value 26
execute unless data entity @s Inventory[{Slot:27b}] run data modify storage math:io temp_slots append value 27
execute unless data entity @s Inventory[{Slot:28b}] run data modify storage math:io temp_slots append value 28
execute unless data entity @s Inventory[{Slot:29b}] run data modify storage math:io temp_slots append value 29
execute unless data entity @s Inventory[{Slot:30b}] run data modify storage math:io temp_slots append value 30
execute unless data entity @s Inventory[{Slot:31b}] run data modify storage math:io temp_slots append value 31
execute unless data entity @s Inventory[{Slot:32b}] run data modify storage math:io temp_slots append value 32
execute unless data entity @s Inventory[{Slot:33b}] run data modify storage math:io temp_slots append value 33
execute unless data entity @s Inventory[{Slot:34b}] run data modify storage math:io temp_slots append value 34
execute unless data entity @s Inventory[{Slot:35b}] run data modify storage math:io temp_slots append value 35

summon armor_stand 0 11 0 {Tags:["stmp"]}
execute if data entity @s Inventory[{Slot:0b}] if data storage math:io temp_slots[0] run function vehicles:guis/trans/0
execute if data entity @s Inventory[{Slot:1b}] if data storage math:io temp_slots[0] run function vehicles:guis/trans/1
execute if data entity @s Inventory[{Slot:2b}] if data storage math:io temp_slots[0] run function vehicles:guis/trans/2
execute if data entity @s Inventory[{Slot:3b}] if data storage math:io temp_slots[0] run function vehicles:guis/trans/3
execute if data entity @s Inventory[{Slot:4b}] if data storage math:io temp_slots[0] run function vehicles:guis/trans/4
execute if data entity @s Inventory[{Slot:5b}] if data storage math:io temp_slots[0] run function vehicles:guis/trans/5
execute if data entity @s Inventory[{Slot:6b}] if data storage math:io temp_slots[0] run function vehicles:guis/trans/6
execute if data entity @s Inventory[{Slot:7b}] if data storage math:io temp_slots[0] run function vehicles:guis/trans/7
execute if data entity @s Inventory[{Slot:8b}] if data storage math:io temp_slots[0] run function vehicles:guis/trans/8
execute if data entity @s Inventory[{Slot:-106b}] if data storage math:io temp_slots[0] run function vehicles:guis/trans/-106
kill @e[tag=stmp,limit=1]

execute if data entity @s Inventory[{Slot:0b}] run function vehicles:guis/drop/0
execute if data entity @s Inventory[{Slot:1b}] run function vehicles:guis/drop/1
execute if data entity @s Inventory[{Slot:2b}] run function vehicles:guis/drop/2
execute if data entity @s Inventory[{Slot:3b}] run function vehicles:guis/drop/3
execute if data entity @s Inventory[{Slot:4b}] run function vehicles:guis/drop/4
execute if data entity @s Inventory[{Slot:5b}] run function vehicles:guis/drop/5
execute if data entity @s Inventory[{Slot:6b}] run function vehicles:guis/drop/6
execute if data entity @s Inventory[{Slot:7b}] run function vehicles:guis/drop/7
execute if data entity @s Inventory[{Slot:8b}] run function vehicles:guis/drop/8
execute if data entity @s Inventory[{Slot:-106b}] run function vehicles:guis/drop/-106

function vehicles:guis/clear_hotbar
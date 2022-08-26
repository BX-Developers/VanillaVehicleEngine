execute store result score temp_slot int run data get storage math:io temp_slots[0]

execute if score temp_slot int matches 9..17 run function vehicles:guis/trans_s/9-17
execute if score temp_slot int matches 18..26 run function vehicles:guis/trans_s/18-26
execute if score temp_slot int matches 27..35 run function vehicles:guis/trans_s/27-35

data remove storage math:io temp_slots[0]
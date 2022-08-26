execute at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.8
scoreboard players add @s ctrl_ad 1
scoreboard players operation @s ctrl_ad %= 2 int
scoreboard players set temp_re int 0
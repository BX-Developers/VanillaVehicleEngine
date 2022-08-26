scoreboard players set temp_min int -1800000
scoreboard players operation temp_max int = temp_r1 int
scoreboard players remove temp_max int 1800000
execute if score @s rotation_eu >= temp_min int if score @s rotation_eu <= temp_max int run scoreboard players add rotation_eu int 3600000
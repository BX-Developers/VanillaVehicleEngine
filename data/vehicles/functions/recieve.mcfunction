scoreboard players operation temp int = @s int
execute as @a if score @s vehicle_id = temp int run tag @s add tmp
scoreboard players operation temp_ac int = @s vehicle_acing
scoreboard players operation temp_tn int = @s vehicle_tning

execute if score @s ctrl_type matches 0..3 run function vehicles:control/0_3
execute if score @s ctrl_type matches 4..7 run function vehicles:control/4_7
execute if score @s ctrl_type matches 8..11 run function vehicles:control/8_11
execute if score @s ctrl_type matches 12.. run function vehicles:control/12_


execute unless score @s vehicle_acing = temp_ac int run function vehicles:control/re_ac
execute unless score @s vehicle_tning = temp_tn int run function vehicles:control/re_tn
tag @a remove tmp

scoreboard players set temp_re int 1
execute store result score tempr0 int run data get entity @s Rotation[0] 1000
execute if score @s vehicle_sp matches 1.. unless score @s vehicle_vr0 = tempr0 int run scoreboard players set temp_re int 0
execute if score temp_re int matches 0 unless entity @s[tag=vehicle_TS] run function vehicles:physics/ts
execute if score temp_re int matches 1 if entity @s[tag=vehicle_TS] run function vehicles:physics/not_ts
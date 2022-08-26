scoreboard players operation @s roll += @s rotation_w

scoreboard players operation temp int = @s int
execute as @e[tag=vehicle] if score @s vehicle_id = temp int run scoreboard players set @s upd_dsp 1
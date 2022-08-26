scoreboard players operation temp int = @s int
execute as @a if score @s vehicle_id = temp int run function vehicles:off
scoreboard players operation temp int = @s vehicle_id
execute as @e[tag=vehicle_entity] if score @s int = temp int run kill @s
kill @s
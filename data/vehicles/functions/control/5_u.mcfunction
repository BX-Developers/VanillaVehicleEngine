scoreboard players operation impulse int = @s vehicle_g
scoreboard players operation impulse int *= 3 int
scoreboard players operation impulse int /= 2 int
execute if score @s vehicle_cfo matches -1 run scoreboard players operation impulse int = temp int
execute if score @s vehicle_cfo matches 1 at @s rotated ~ 0.0 run function vehicles:_impulse
execute if score @s vehicle_cfo matches -1 at @s facing ^ ^ ^-1 run function vehicles:_impulse

scoreboard players operation @s rotation_um = @s vehicle_um
execute if score @s vehicle_cfo matches -1 run scoreboard players operation @s rotation_um *= -1 int
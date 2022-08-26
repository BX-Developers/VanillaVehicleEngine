scoreboard players operation temp1 int = @s rotation_rm
execute if score @s vehicle_cwi matches 1 run scoreboard players operation temp1 int *= -1 int

scoreboard players operation impulse int = temp int
execute if score @s vehicle_cwi matches 1 at @s facing ^1 ^ ^ run function vehicles:_impulse
execute if score @s vehicle_cwi matches -1 at @s facing ^-1 ^ ^ run function vehicles:_impulse
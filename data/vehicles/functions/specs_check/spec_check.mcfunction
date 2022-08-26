scoreboard players operation stemp int = @s vehicle_select
scoreboard players operation stemp int %= temp_p int
execute if score stemp int = 0 int at @s run function vehicles:specs_check/spec
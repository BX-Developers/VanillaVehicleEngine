scoreboard players set impulse int 500
execute if score @s vehicle_cfo matches 1 at @a[tag=tmp,limit=1] run function vehicles:_impulse
execute if score @s vehicle_cfo matches -1 at @a[tag=tmp,limit=1] facing ^ ^ ^-1 run function vehicles:_impulse

execute if score @s vehicle_cwi matches 1 at @a[tag=tmp,limit=1] facing ^1 ^ ^ run function vehicles:_impulse
execute if score @s vehicle_cwi matches -1 at @a[tag=tmp,limit=1] facing ^-1 ^ ^ run function vehicles:_impulse

scoreboard players operation @s vehicle_sp < @s vehicle_vm
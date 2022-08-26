execute facing entity @s feet rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute positioned ^ ^ ^1.0 if entity @s[distance=..0.1] as @e[tag=tmp,limit=1] run function vehicles:player_ctrl/wasd_test/w
execute positioned ^1.0 ^ ^ if entity @s[distance=..0.1] as @e[tag=tmp,limit=1] run function vehicles:player_ctrl/wasd_test/a
execute positioned ^ ^ ^-1.0 if entity @s[distance=..0.1] as @e[tag=tmp,limit=1] run function vehicles:player_ctrl/wasd_test/s
execute positioned ^-1.0 ^ ^ if entity @s[distance=..0.1] as @e[tag=tmp,limit=1] run function vehicles:player_ctrl/wasd_test/d
execute positioned ^0.7071 ^ ^0.7071 if entity @s[distance=..0.1] as @e[tag=tmp,limit=1] run function vehicles:player_ctrl/wasd_test/wa
execute positioned ^-0.7071 ^ ^0.7071 if entity @s[distance=..0.1] as @e[tag=tmp,limit=1] run function vehicles:player_ctrl/wasd_test/wd
execute positioned ^0.7071 ^ ^-0.7071 if entity @s[distance=..0.1] as @e[tag=tmp,limit=1] run function vehicles:player_ctrl/wasd_test/sa
execute positioned ^-0.7071 ^ ^-0.7071 if entity @s[distance=..0.1] as @e[tag=tmp,limit=1] run function vehicles:player_ctrl/wasd_test/sd
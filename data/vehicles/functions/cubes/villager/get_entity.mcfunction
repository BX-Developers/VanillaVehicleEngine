execute anchored eyes positioned ^ ^ ^ as @e[type=villager,distance=..8] run function vehicles:math/if-raycast
tag @e[tag=tmp,tag=!vehicle_dsp] remove tmp
execute as @e[tag=tmp,limit=1,sort=nearest] if data entity @s ArmorItems[3].tag.rc_tag run function vehicles:cubes/villager/rc_trigger
tag @e remove tmp
scoreboard players set @s vehicle_rcv 0
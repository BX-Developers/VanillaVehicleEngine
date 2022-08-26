#世界实体
execute store result score temp int if entity @e[tag=math_marker]
execute unless score temp int matches 1 run function vehicles:cubes/math_marker

#骑乘者
execute as @a if data entity @s RootVehicle.Entity{Tags:["ctrl_seat"]} unless score @s vehicle_state matches 1.. run function vehicles:player_ctrl/in

#清理ui物品
kill @e[type=item,nbt={Item:{tag:{vehicle_ui:1b}}}]

#玩家控制
execute as @a if score @s vehicle_rcv matches 1.. at @s run function vehicles:cubes/villager/get_entity
execute as @a if score @s vehicle_rc matches 1.. if data entity @s SelectedItem.tag{vehicle_ctrl:1b} run function vehicles:player_ctrl/enter_gui
execute as @a if score @s vehicle_state matches 1.. run function vehicles:player_ctrl/control
execute as @a[tag=vehicle_GUI] if score @s ctrl_gui matches 1.. run function vehicles:guis/main

#载具运动
execute as @e[tag=vehicle_phiv,type=armor_stand] run function vehicles:cubes/rotation
execute as @e[tag=vehicle,type=marker] at @s run function vehicles:main

#更新aec
scoreboard players add upd_aec int 1
execute as @e[tag=upd_aec,type=area_effect_cloud] store result entity @s Air short 1 run scoreboard players operation upd_aec int %= 10 int

#更新村民
execute as @e[tag=vehicle_vtged,type=villager] run function vehicles:cubes/villager/upd

#右键探测
scoreboard players set @a vehicle_rc 0
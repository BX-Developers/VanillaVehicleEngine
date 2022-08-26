scoreboard objectives add int dummy
scoreboard objectives add roll dummy
scoreboard objectives add vehicle_state dummy
scoreboard objectives add vehicle_cfo dummy
scoreboard objectives add vehicle_cwi dummy
scoreboard objectives add vehicle_cr0 dummy
scoreboard objectives add vehicle_cr1 dummy
scoreboard objectives add vehicle_cud dummy
scoreboard objectives add vehicle_vr0 dummy
scoreboard objectives add vehicle_vr1 dummy
scoreboard objectives add vehicle_cpc dummy
scoreboard objectives add vehicle_id dummy
scoreboard objectives add vehicle_r0 dummy
scoreboard objectives add vehicle_r1 dummy
scoreboard objectives add vehicle_sp dummy
scoreboard objectives add vehicle_d dummy
scoreboard objectives add vehicle_h dummy
scoreboard objectives add vehicle_l dummy
scoreboard objectives add vehicle_u dummy
scoreboard objectives add vehicle_v dummy
scoreboard objectives add vehicle_w dummy
scoreboard objectives add rotation_u dummy
scoreboard objectives add rotation_v dummy
scoreboard objectives add rotation_w dummy
scoreboard objectives add vehicle_g dummy
scoreboard objectives add vehicle_gu dummy
scoreboard objectives add vehicle_gv dummy
scoreboard objectives add vehicle_gw dummy
scoreboard objectives add vehicle_gpu dummy
scoreboard objectives add vehicle_gpv dummy
scoreboard objectives add vehicle_gpw dummy
scoreboard objectives add vehicle_bu dummy
scoreboard objectives add vehicle_bv dummy
scoreboard objectives add vehicle_bw dummy
scoreboard objectives add vehicle_m dummy
scoreboard objectives add vehicle_vm dummy
scoreboard objectives add vehicle_flyv dummy
scoreboard objectives add vehicle_flyu dummy
scoreboard objectives add vehicle_friction dummy
scoreboard objectives add vehicle_lowsp dummy
scoreboard objectives add vehicle_bounce dummy
scoreboard objectives add vehicle_height dummy
scoreboard objectives add vehicle_acing dummy
scoreboard objectives add vehicle_tning dummy
scoreboard objectives add vehicle_braking dummy
scoreboard objectives add vehicle_back dummy
scoreboard objectives add ctrl_gui dummy
scoreboard objectives add ctrl_type dummy
scoreboard objectives add vehicle_rm dummy
scoreboard objectives add vehicle_um dummy
scoreboard objectives add rotation_eu dummy
scoreboard objectives add rotation_er dummy
scoreboard objectives add vehicle_select dummy
scoreboard objectives add vehicle_specs dummy
scoreboard objectives add vehicle_time dummy
scoreboard objectives add vehicle_flyt dummy
scoreboard objectives add vehicle_cpid dummy
scoreboard objectives add rotation_um dummy
scoreboard objectives add rotation_rm dummy
scoreboard objectives add ctrl_vehicle dummy
scoreboard objectives add vehicle_rc minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add vehicle_rcv minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add ctrl_ws dummy
scoreboard objectives add ctrl_ad dummy
scoreboard objectives add upd_dsp dummy
scoreboard objectives add surface_id dummy
scoreboard objectives add vehicle_time0 dummy
scoreboard objectives add vehicle_time1 dummy
scoreboard objectives add vehicle_time2 dummy
scoreboard objectives add vehicle_time3 dummy
scoreboard objectives add vehicle_time4 dummy
scoreboard objectives add vehicle_time5 dummy
scoreboard objectives add vehicle_time6 dummy
scoreboard objectives add vehicle_time7 dummy
scoreboard objectives add vehicle_time8 dummy
scoreboard objectives add vehicle_time9 dummy

scoreboard players set -1 int -1
scoreboard players set 0 int 0
scoreboard players set 1 int 1
scoreboard players set 2 int 2
scoreboard players set 3 int 3
scoreboard players set 4 int 4
scoreboard players set 5 int 5
scoreboard players set 7 int 7
scoreboard players set 8 int 8
scoreboard players set 9 int 9
scoreboard players set 10 int 10
scoreboard players set 30 int 30
scoreboard players set 50 int 50
scoreboard players set 80 int 80
scoreboard players set 100 int 100
scoreboard players set 200 int 200
scoreboard players set 1000 int 1000
scoreboard players set 10000 int 10000
scoreboard players set 100000 int 100000
scoreboard players set 360000 int 360000
scoreboard players set vehicle_frm int 25000
scoreboard players set vehicle_fvm int 80000

data modify storage math:class primes set value [2,3,5,7,11,13,17,19,23]
schedule clear vehicles:cubes/invisible
schedule function vehicles:cubes/invisible 30s append
forceload add -1 -1 1 1

team add not_collision
team modify not_collision collisionRule never

kill @e[tag=math_marker]
summon marker 0 0 0 {Tags:["math_marker"]}
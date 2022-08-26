data modify storage math:class vehicles set value []

#test_car
data modify storage math:io input set value {id:"test_car",back:1.25,braking:1.25,friction:0.959,ctrl_type:0,mass:5.0,r_max:45.0,v_max:8.0,bounce:0.3d,gravity:3.0d,rot_um:30.0d,rot_rm:30.0d}
data modify storage math:io input.cubes set value [{ctrl_seat:0,seat_type:1,uvw:[0.0d,0.5d,0.0d]},{uvw:[0.5d,0.8d,1.5d],tags:["plate"],cmd:1003001},{uvw:[-0.5d,0.8d,1.5d],tags:["plate"],cmd:1003001}]
data modify storage math:io input.collision_points set value [[-1.0d,0.3d,-0.7d],[1.0d,0.3d,-0.7d],[-1.0d,0.3d,1.7d],[1.0d,0.3d,1.7d],[0.0d,0.3d,-1.0d],[0.0d,0.3d,2.0d],[-1.0d,0.3d,0.5d],[1.0d,0.3d,0.5d]]
data modify storage math:io input.gravity_point set value [0.0d,0.0d,0.5d]
data modify storage math:io input.gravity_vector set value [0.7d,-0.5d,0.9d]
data modify storage math:class vehicles append from storage math:io input

#first_plane
data modify storage math:io input set value {id:"first_plane",back:3.25,braking:1.25,friction:0.959,ctrl_type:1,mass:5.0,r_max:45.0,v_max:15.0,bounce:0.3d,gravity:3.0d,fly_v:13.5d,rot_rm:30.0d,fly_u:35.0d}
data modify storage math:io input.cubes set value [{ctrl_seat:0,seat_type:1,uvw:[0.0d,1.5d,0.5d]},{uvw:[0.0d,1.6d,1.0d],cmd:2001000},{uvw:[0.0d,0.8d,3.0d],cmd:2001001,tags:["propeller"],rot:1b}]
data modify storage math:io input.collision_points set value [[0.7d,0.4d,1.4d],[-0.7d,0.4d,1.4d],[0.7d,0.4d,-0.4d],[-0.7d,0.4d,-0.4d]]
data modify storage math:io input.gravity_point set value [0.0d,0.0d,0.5d]
data modify storage math:io input.gravity_vector set value [0.7d,-0.5d,0.9d]
data modify storage math:io input.specs set value [{cube:"propeller",actions:[{add_phi:10.0d,condition:"vehicle_on"},{add_phi:15.0d,condition:"not_vehicle_OG"},{add_phi:20.0d,condition:"engine_run"},{play_sound:"propeller_0",T:5,conditions:["vehicle_on","vehicle_OG"]},{play_sound:"propeller_1",T:5,conditions:["vehicle_on","not_vehicle_OG"]}]}]
data modify storage math:class vehicles append from storage math:io input

#first_car
data modify storage math:io input set value {id:"first_car",back:3.75,braking:2.25,friction:0.959,ctrl_type:2,mass:5.0,r_max:45.0,v_max:12.0d,bounce:0.3d,gravity:3.0d,rot_um:30.0d,rot_rm:30.0d}
#data modify storage math:io input set value {id:"first_car",back:1.5,braking:2.25,friction:0.959,ctrl_type:2,mass:5.0,r_max:60.0,v_max:3.5d,bounce:0.3d,gravity:3.0d,rot_um:30.0d,rot_rm:30.0d}
data modify storage math:io input.cubes set value [{ctrl_seat:0,seat_type:1,uvw:[0.0d,0.3d,-0.2d]},{uvw:[0.0d,0.9d,0.0d],tags:["body"],cmd:2031010},{seat_type:3,uvw:[0.0d,0.6d,-1.5d],tags:["chest"]}]
data modify storage math:io input.collision_points set value [[0.7d,0.4d,0.9d],[-0.7d,0.4d,0.9d],[0.7d,0.4d,-0.9d],[-0.7d,0.4d,-0.9d]]
data modify storage math:io input.gravity_point set value [0.0d,0.0d,0.0d]
data modify storage math:io input.gravity_vector set value [0.7d,-0.5d,0.9d]
data modify storage math:io input.specs set value [{cube:"body",actions:[{play_sound:"bca1",T:15,condition:"back_up"},{play_sound:"bca6",T:2,condition:"back_up"},{play_sound:"bca6",condition:"speed_up",value_conditions:{velocity:[0.0d,8.5d]}},{tag_rmv:0,conditions:["engine_run","vehicle_T0"]},{play_sound:"turn_0",tag_add:0,value_conditions:{velocity:[10.5d,20.0d]},conditions:["not_vehicle_T0","not_engine_run","turning","vehicle_OG","vehicle_MC"]},{play_sound:"engine_2",T:3,value_conditions:{velocity:[8.5d,20.0d]},condition:"speed_up"},{cmd:[2031010,2031017],conditions:["speed_up","not_turning"]},{-cmd:[2031010,2031017],conditions:["back_up","not_turning"]},{cmd:[2031030,2031037],conditions:["speed_up","turn_left"]},{-cmd:[2031030,2031037],conditions:["back_up","turn_left"]},{set_cmd:2031030,conditions:["not_engine_run","turn_left"]},{cmd:[2031050,2031057],conditions:["speed_up","turn_right"]},{-cmd:[2031050,2031057],conditions:["back_up","turn_right"]},{set_cmd:2031050,conditions:["not_engine_run","turn_right"]}]}]
#data modify storage math:io input.specs set value [{cube:"body",actions:[{play_sound:"bca1",T:15,condition:"back_up"},{play_sound:"bca6",T:2,condition:"back_up"},{play_sound:"bca6",condition:"speed_up"},{cmd:[2031010,2031017],conditions:["speed_up","not_turning"]},{-cmd:[2031010,2031017],T:4,conditions:["back_up","not_turning"]},{cmd:[2031030,2031037],conditions:["speed_up","turn_left"]},{-cmd:[2031030,2031037],T:4,conditions:["back_up","turn_left"]},{set_cmd:2031030,conditions:["not_engine_run","turn_left"]},{cmd:[2031050,2031057],conditions:["speed_up","turn_right"]},{-cmd:[2031050,2031057],T:4,conditions:["back_up","turn_right"]},{set_cmd:2031050,conditions:["not_engine_run","turn_right"]}]}]
data modify storage math:class vehicles append from storage math:io input

#first_rocket
data modify storage math:class vehicles append value {back:4.25d,bounce:0.3d,braking:4.25d,collision_points:[[0.4d,-0.2d,-0.5d],[-0.4d,-0.2d,-0.5d],[0.4d,-0.2d,1.5d],[-0.4d,-0.2d,1.5d],[0.0d,0.7d,2.9d],[0.5d,0.5d,0.3d],[-0.5d,0.5d,0.3d],[0.6d,0.6d,1.5d],[-0.6d,0.6d,1.5d]],ctrl_type:3,cubes:[{cmd:2032000,uvw:[0.08d,1.5d,1.5d]},{ctrl_seat:3,seat_type:1,uvw:[0.0d,1.0d,0.0d]}],id:"first_rocket",mass:5.0d,r_max:30.0d,u_max:5.0d,v_max:20.0d,specs:[{cube:"vehicle",actions:[{condition:"engine_run",particle:{id:"lava",uvw:[0.0d,0.0d,-1.5d]}},{condition:"engine_run",particle:{id:"flame",uvw:[0.0d,0.0d,-1.5d]}}]}]}

#first_hc
data modify storage math:io input set value {id:"first_hc",friction:0.959,ctrl_type:5,mass:5.0,bounce:0.3d,gravity:3.0d,v_max:10.0d,u_max:30.0d,r_max:45.0d,rot_rm:30.0d,fly_v:23.0d}
data modify storage math:io input.cubes set value [{seat_type:5,uvw:[1.2d,0.8d,0.5d],rc_tag:"rc_1"},{seat_type:5,uvw:[-1.2d,0.8d,0.5d],rc_tag:"rc_0"},{seat_type:1,uvw:[-0.5d,0.8d,2.0d]},{seat_type:1,ctrl_seat:4,uvw:[0.5d,0.8d,2.0d]},{cmd:2033000,uvw:[0.86d,1.2d,0.0d]},{cmd:2033001,uvw:[-0.86d,1.2d,0.0d]},{cmd:2033002,uvw:[0.5575d,1.2d,2.109d]},{cmd:2033003,uvw:[-0.5575d,1.2d,2.109d]},{cmd:2033008,uvw:[0.0d,1.275d,-4.875d]},{tags:["main_fan"],cmd:2033004,rot:[0.0f,-90.0f],uvw:[0.0d,2.275d,0.315d]},{tags:["main_fan"],cmd:2033005,rot:[0.0f,-90.0f],uvw:[0.0d,2.275d,0.315d]},{tags:["tail_fan"],cmd:2033009,rot:[-90.0f,0.0f],uvw:[-0.12d,2.675d,-7.375d]},{cmd:2033006,uvw:[-1.11d,1.39d,0.55d],tags:["right_door"]},{cmd:2033007,uvw:[1.11d,1.39d,0.55d],tags:["left_door"]}]
data modify storage math:io input.collision_points set value []
data modify storage math:io input.gravity_point set value [0.0d,0.0d,0.0d]
data modify storage math:io input.gravity_vector set value [0.7d,-0.8d,0.9d]
#data modify storage math:io input.specs set value [{cube:"main_fan",actions:[{T:5,phiv_to:0.0d,conditions:["not_engine_run","vehicle_OG"]},{phiv_to:25.0d,condition:"vehicle_on",not_conditions:["not_engine_run","vehicle_OG"]}]},{cube:"left_door",actions:[{set_pos:[1.11d,1.39d,0.55d],play_sound:"door_close0",tag_rmv:1,conditions:["vehicle_T1","rc_1"]},{set_pos:[1.36d,1.39d,-0.7d],play_sound:"door_open0",tag_add:1,conditions:["not_vehicle_T1","rc_1"]}]},{cube:"right_door",actions:[{set_pos:[-1.11d,1.39d,0.55d],play_sound:"door_close0",tag_rmv:0,conditions:["vehicle_T0","rc_0"]},{set_pos:[-1.36d,1.39d,-0.7d],play_sound:"door_open0",tag_add:0,conditions:["not_vehicle_T0","rc_0"]}]},{cube:"tail_fan",actions:[{add_phi:25.0d,condition:"vehicle_on"}]}]
data modify storage math:io input.specs set value [{cube:"vehicle","actions":[{value_conditions:{time_check:{1:[1,29]}},time_add:{1:1}},{time_set:{1:0},T:200,value_conditions:{time_check:{1:[30,30]}},conditions:["not_engine_run","vehicle_OG"]}]},{cube:"main_fan",actions:[{T:20,phiv_to:[0.0d,5.0d],value_conditions:{time_check:{1:[0,0]}},conditions:["not_engine_run","vehicle_OG"]},{play_sound:"bca14",T:8,value_conditions:{time_check:{1:[1,9]}}},{play_sound:"bca14",T:5,value_conditions:{time_check:{1:[10,19]}}},{play_sound:"bca14",T:3,value_conditions:{time_check:{1:[20,30]}}},{play_sound:"bca13",T:4,value_conditions:{time_check:{1:[20,30]}}},{phiv_to:[-25.0d,30.0d],value_conditions:{time_check:{1:[1,30]}}},{phiv_to:[-25.0d,30.0d],play_sound:"bca7",time_set:{1:1},value_conditions:{time_check:{1:[0,0]}},conditions:["engine_run"]}]},{cube:"left_door",actions:[{set_pos:[1.11d,1.39d,0.55d],play_sound:"door_close0",tag_rmv:1,conditions:["vehicle_T1","rc_1"]},{set_pos:[1.36d,1.39d,-0.7d],play_sound:"door_open0",tag_add:1,conditions:["not_vehicle_T1","rc_1"]}]},{cube:"right_door",actions:[{set_pos:[-1.11d,1.39d,0.55d],play_sound:"door_close0",tag_rmv:0,conditions:["vehicle_T0","rc_0"]},{set_pos:[-1.36d,1.39d,-0.7d],play_sound:"door_open0",tag_add:0,conditions:["not_vehicle_T0","rc_0"]}]},{cube:"tail_fan",actions:[{add_phi:25.0d,condition:"vehicle_on"}]}]
data modify storage math:class vehicles append from storage math:io input

#bamboo_fly
data modify storage math:io input set value {id:"bamboo_fly",ctrl_type:7,mass:0.4d,friction:0.943,bounce:0.9d,gravity:0.001d,v_max:9.5d}
data modify storage math:io input.cubes set value [{seat_type:2,ctrl_seat:0,uvw:[0.0d,0.6d,0.0d]},{cmd:2034000,uvw:[0.0d,1.6d,0.0d],rot:[0.0f,-90.0f],tags:["fan"]}]
data modify storage math:io input.collision_points set value []
data modify storage math:io input.gravity_point set value [0.0d,0.0d,0.0d]
data modify storage math:io input.gravity_vector set value [0.1d,-0.1d,0.1d]
data modify storage math:io input.specs set value [{cube:"fan",actions:[{condition:"vehicle_on",add_phi:25.0d}]}]
data modify storage math:class vehicles append from storage math:io input

#first_boat
data modify storage math:io input set value {id:"first_boat",mass:5.0d,gravity:0.5d,friction:0.953d,back:1.25d,braking:1.25d,r_max:25.0d,bounce:0.3d,ctrl_type:6,v_max:8.0d}
data modify storage math:io input.buoyancy_point set value [0.0d,-0.05d,0.0d]
data modify storage math:io input.gravity_point set value [0.0d,0.0d,0.0d]
data modify storage math:io input.gravity_vector set value [0.5d,-0.3d,0.5d]
data modify storage math:io input.collision_points set value [[0.3d,0.4d,1.8d],[-0.3d,0.4d,1.8d],[0.3d,0.4d,-1.8d],[-0.3d,0.4d,-1.8d],[1.0d,0.4d,0.4d],[-1.0d,0.4d,0.4d],[1.0d,0.4d,-0.4d],[-1.0d,0.4d,-0.4d],[1.0d,0.4d,1.2d],[-1.0d,0.4d,1.2d],[1.0d,0.4d,-1.2d],[-1.0d,0.4d,-1.2d]]
data modify storage math:io input.cubes set value [{seat_type:2,ctrl_seat:0,uvw:[0.0d,0.5d,0.6d]},{tags:["propeller"],cmd:2035001,rot:[0.0f,0.0f],uvw:[0.0d,-0.5d,-1.35d]},{cmd:2035000},{seat_type:4,uvw:[0.0d,-1.0d,0.0d]},{seat_type:4,uvw:[0.0d,-1.0d,-0.4d]},{seat_type:4,uvw:[0.0d,-1.0d,0.4d]}]
data modify storage math:io input.specs set value [{cube:"propeller",actions:[{phiv_to:[25.0d,3.0d],conditions:["speed_up"]},{phiv_to:[-25.0d,3.0d],conditions:["back_up"]},{phiv_to:[0.0d,9.0d],conditions:["not_engine_run"]},{play_sound:"bca10",T:4,conditions:["engine_run","vehicle_OW"]},{play_sound:"bca11",T:3,conditions:["not_vehicle_OW","engine_run"]}]}]
data modify storage math:class vehicles append from storage math:io input
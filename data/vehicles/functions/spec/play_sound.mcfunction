execute store result score stempv int run data get storage math:io temp_list[0].play_sound
data modify storage math:io temp_s set from storage math:io temp_list[0].play_sound

execute if score stempv int matches 1 run function #vehicles:spec/sounds/length_1
execute if score stempv int matches 2 run function #vehicles:spec/sounds/length_2
execute if score stempv int matches 3 run function #vehicles:spec/sounds/length_3
execute if score stempv int matches 4 run function #vehicles:spec/sounds/length_4
execute if score stempv int matches 5 run function #vehicles:spec/sounds/length_5
execute if score stempv int matches 6 run function #vehicles:spec/sounds/length_6
execute if score stempv int matches 7 run function #vehicles:spec/sounds/length_7
execute if score stempv int matches 8 run function #vehicles:spec/sounds/length_8
execute if score stempv int matches 9 run function #vehicles:spec/sounds/length_9
execute if score stempv int matches 10 run function #vehicles:spec/sounds/length_10
execute if score stempv int matches 11 run function #vehicles:spec/sounds/length_11
execute if score stempv int matches 12 run function #vehicles:spec/sounds/length_12
execute if score stempv int matches 13 run function #vehicles:spec/sounds/length_13
execute if score stempv int matches 14 run function #vehicles:spec/sounds/length_14
execute if score stempv int matches 15 run function #vehicles:spec/sounds/length_15
execute if score stempv int matches 16 run function #vehicles:spec/sounds/length_16
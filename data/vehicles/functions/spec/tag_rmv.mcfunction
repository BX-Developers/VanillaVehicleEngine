execute store result score stempv int run data get storage math:io temp_list[0].tag_rmv
execute if score stempv int matches 0 run function vehicles:spec/tags/not_0
execute if score stempv int matches 1 run function vehicles:spec/tags/not_1
execute if score stempv int matches 2 run function vehicles:spec/tags/not_2
execute if score stempv int matches 3 run function vehicles:spec/tags/not_3
execute if score stempv int matches 4 run function vehicles:spec/tags/not_4
execute if score stempv int matches 5 run function vehicles:spec/tags/not_5
execute if score stempv int matches 6 run function vehicles:spec/tags/not_6
execute if score stempv int matches 7 run function vehicles:spec/tags/not_7
execute if score stempv int matches 8 run function vehicles:spec/tags/not_8
execute if score stempv int matches 9 run function vehicles:spec/tags/not_9
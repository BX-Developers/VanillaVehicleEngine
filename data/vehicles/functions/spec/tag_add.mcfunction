execute store result score stempv int run data get storage math:io temp_list[0].tag_add
execute if score stempv int matches 0 run function vehicles:spec/tags/0
execute if score stempv int matches 1 run function vehicles:spec/tags/1
execute if score stempv int matches 2 run function vehicles:spec/tags/2
execute if score stempv int matches 3 run function vehicles:spec/tags/3
execute if score stempv int matches 4 run function vehicles:spec/tags/4
execute if score stempv int matches 5 run function vehicles:spec/tags/5
execute if score stempv int matches 6 run function vehicles:spec/tags/6
execute if score stempv int matches 7 run function vehicles:spec/tags/7
execute if score stempv int matches 8 run function vehicles:spec/tags/8
execute if score stempv int matches 9 run function vehicles:spec/tags/9
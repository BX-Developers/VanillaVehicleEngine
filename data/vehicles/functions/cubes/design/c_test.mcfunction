execute store result score tempu int run data get storage math:io temp[0][0] 1000
execute store result score tempv int run data get storage math:io temp[0][1] 1000
execute store result score tempw int run data get storage math:io temp[0][2] 1000
function vehicles:cubes/design/c_test1
scoreboard players remove loop int 1
data remove storage math:io temp[0]
execute if score loop int matches 1.. run function vehicles:cubes/design/c_test
scoreboard players add @s roll 0
execute unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.0f,0.001f,0.0f]
execute positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run function vehicles:math/facing_vector

execute store result entity @e[tag=math_marker,limit=1] Rotation[0] float -0.0001 run scoreboard players get @s roll
execute as @e[tag=math_marker,limit=1] at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run function vehicles:math/facing_cs

scoreboard players operation par0 int = u0 int
scoreboard players operation par0 int *= n0 int
scoreboard players operation par0 int /= 10000 int
scoreboard players operation par1 int = u1 int
scoreboard players operation par1 int *= n1 int
scoreboard players operation par1 int /= 10000 int
scoreboard players operation par2 int = u2 int
scoreboard players operation par2 int *= n2 int
scoreboard players operation par2 int /= 10000 int

scoreboard players operation par0 int += par1 int
scoreboard players operation par0 int += par2 int

scoreboard players operation par2 int = n2 int
scoreboard players operation par2 int *= par0 int
scoreboard players operation par2 int /= 10000 int
scoreboard players operation par1 int = n1 int
scoreboard players operation par1 int *= par0 int
scoreboard players operation par1 int /= 10000 int
scoreboard players operation par0 int *= n0 int
scoreboard players operation par0 int /= 10000 int
scoreboard players operation ver0 int = u0 int
scoreboard players operation ver0 int -= par0 int
scoreboard players operation ver1 int = u1 int
scoreboard players operation ver1 int -= par1 int
scoreboard players operation ver2 int = u2 int
scoreboard players operation ver2 int -= par2 int

scoreboard players operation t int = ver1 int
scoreboard players operation t int *= n2 int
scoreboard players operation t int /= 10000 int
scoreboard players operation t0 int = ver2 int
scoreboard players operation t0 int *= n1 int
scoreboard players operation t0 int /= 10000 int
scoreboard players operation t0 int -= t int
scoreboard players operation t int = ver2 int
scoreboard players operation t int *= n0 int
scoreboard players operation t int /= 10000 int
scoreboard players operation t1 int = ver0 int
scoreboard players operation t1 int *= n2 int
scoreboard players operation t1 int /= 10000 int
scoreboard players operation t1 int -= t int
scoreboard players operation t int = ver0 int
scoreboard players operation t int *= n1 int
scoreboard players operation t int /= 10000 int
scoreboard players operation t2 int = ver1 int
scoreboard players operation t2 int *= n0 int
scoreboard players operation t2 int /= 10000 int
scoreboard players operation t2 int -= t int
scoreboard players operation ver0 int *= cos int
scoreboard players operation ver0 int /= 10000 int
scoreboard players operation ver1 int *= cos int
scoreboard players operation ver1 int /= 10000 int
scoreboard players operation ver2 int *= cos int
scoreboard players operation ver2 int /= 10000 int
scoreboard players operation t0 int *= sin int
scoreboard players operation t0 int /= 10000 int
scoreboard players operation t1 int *= sin int
scoreboard players operation t1 int /= 10000 int
scoreboard players operation t2 int *= sin int
scoreboard players operation t2 int /= 10000 int
scoreboard players operation ver0 int += t0 int
execute store result score u0 int run scoreboard players operation ver0 int += par0 int
scoreboard players operation ver1 int += t1 int
execute store result score u1 int run scoreboard players operation ver1 int += par1 int
scoreboard players operation ver2 int += t2 int
execute store result score u2 int run scoreboard players operation ver2 int += par2 int


scoreboard players operation par0 int = w0 int
scoreboard players operation par0 int *= n0 int
scoreboard players operation par0 int /= 10000 int
scoreboard players operation par1 int = w1 int
scoreboard players operation par1 int *= n1 int
scoreboard players operation par1 int /= 10000 int
scoreboard players operation par2 int = w2 int
scoreboard players operation par2 int *= n2 int
scoreboard players operation par2 int /= 10000 int
scoreboard players operation par0 int += par1 int
scoreboard players operation par0 int += par2 int

scoreboard players operation par2 int = n2 int
scoreboard players operation par2 int *= par0 int
scoreboard players operation par2 int /= 10000 int
scoreboard players operation par1 int = n1 int
scoreboard players operation par1 int *= par0 int
scoreboard players operation par1 int /= 10000 int
scoreboard players operation par0 int *= n0 int
scoreboard players operation par0 int /= 10000 int

scoreboard players operation ver0 int = w0 int
scoreboard players operation ver0 int -= par0 int
scoreboard players operation ver1 int = w1 int
scoreboard players operation ver1 int -= par1 int
scoreboard players operation ver2 int = w2 int
scoreboard players operation ver2 int -= par2 int

scoreboard players operation t int = ver1 int
scoreboard players operation t int *= n2 int
scoreboard players operation t int /= 10000 int
scoreboard players operation t0 int = ver2 int
scoreboard players operation t0 int *= n1 int
scoreboard players operation t0 int /= 10000 int
scoreboard players operation t0 int -= t int
scoreboard players operation t int = ver2 int
scoreboard players operation t int *= n0 int
scoreboard players operation t int /= 10000 int
scoreboard players operation t1 int = ver0 int
scoreboard players operation t1 int *= n2 int
scoreboard players operation t1 int /= 10000 int
scoreboard players operation t1 int -= t int
scoreboard players operation t int = ver0 int
scoreboard players operation t int *= n1 int
scoreboard players operation t int /= 10000 int
scoreboard players operation t2 int = ver1 int
scoreboard players operation t2 int *= n0 int
scoreboard players operation t2 int /= 10000 int
scoreboard players operation t2 int -= t int

scoreboard players operation ver0 int *= cos int
scoreboard players operation ver0 int /= 10000 int
scoreboard players operation ver1 int *= cos int
scoreboard players operation ver1 int /= 10000 int
scoreboard players operation ver2 int *= cos int
scoreboard players operation ver2 int /= 10000 int
scoreboard players operation t0 int *= sin int
scoreboard players operation t0 int /= 10000 int
scoreboard players operation t1 int *= sin int
scoreboard players operation t1 int /= 10000 int
scoreboard players operation t2 int *= sin int
scoreboard players operation t2 int /= 10000 int
scoreboard players operation ver0 int += t0 int
execute store result score w0 int run scoreboard players operation ver0 int += par0 int
scoreboard players operation ver1 int += t1 int
execute store result score w1 int run scoreboard players operation ver1 int += par1 int
scoreboard players operation ver2 int += t2 int
execute store result score w2 int run scoreboard players operation ver2 int += par2 int

execute as @e[tag=math_marker,limit=1] run function vehicles:math/facing_revec

#phi0
scoreboard players operation cos int = w2 int
scoreboard players operation cos int -= v0 int
scoreboard players operation sin int = v2 int
scoreboard players operation sin int *= -1 int
scoreboard players operation sin int -= w0 int
execute as @e[tag=math_marker,limit=1] run function vehicles:math/4atan
scoreboard players operation phi0 int = result int
#phi1
scoreboard players operation cos int = w2 int
scoreboard players operation cos int += v0 int
scoreboard players operation sin int = w0 int
scoreboard players operation sin int -= v2 int
execute as @e[tag=math_marker,limit=1] run function vehicles:math/4atan
scoreboard players operation phi1 int = result int
#theta
scoreboard players operation theta int = phi0 int
scoreboard players operation theta int += phi1 int
execute store result entity @s Pose.Head[0] float 0.0001 run scoreboard players operation theta int /= 2 int
execute as @e[tag=math_marker,limit=1] store result entity @s Rotation[0] float -0.0001 run scoreboard players get theta int
execute as @e[tag=math_marker,limit=1] at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score c0 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute store result score s0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
#beta
scoreboard players operation beta int = phi0 int
scoreboard players operation beta int -= phi1 int
execute store result entity @s Pose.Head[2] float 0.0001 run scoreboard players operation beta int /= 2 int
#alpha
scoreboard players operation cos int = v1 int
execute if score c0 int matches ..-1 run scoreboard players operation cos int *= -1 int
execute if score s0 int matches 0.. run scoreboard players operation cos int += w1 int
execute if score s0 int matches ..-1 run scoreboard players operation cos int -= w1 int
scoreboard players operation temp7 int = c0 int
execute if score c0 int matches ..-1 run scoreboard players operation temp7 int *= -1 int
execute if score s0 int matches 0.. run scoreboard players operation temp7 int += s0 int
execute if score s0 int matches ..-1 run scoreboard players operation temp7 int -= s0 int
scoreboard players operation cos int *= 10000 int
scoreboard players operation cos int /= temp7 int
scoreboard players operation sin int = u1 int
scoreboard players operation sin int *= -1 int
execute as @e[tag=math_marker,limit=1] run function vehicles:math/4atan
execute store result entity @s Pose.Head[1] float 0.0001 run scoreboard players operation alpha int = result int
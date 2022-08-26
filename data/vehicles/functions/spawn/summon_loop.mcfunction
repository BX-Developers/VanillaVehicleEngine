execute store result score stempt int run data get storage math:io temp[0].seat_type

execute if score stempt int matches 0 run summon area_effect_cloud 0 11 0 {Duration:2147483647,Tags:["stmp1","vehicle_cube","stmp","upd_aec","vehicle_entity"],Passengers:[{Tags:["stmp2","stmp","vehicle_dsp","vehicle_entity"],DisabledSlots:16191,Marker:0b,id:"minecraft:armor_stand",Silent:1b,Invisible:1b,Team:"not_collision",ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:0}}]}]}
execute if score stempt int matches 1 run summon area_effect_cloud 0 11 0 {Duration:2147483647,Tags:["stmp1","vehicle_cube","stmp","upd_aec","vehicle_entity"],Passengers:[{Tags:["stmp","stmp2","vehicle_dsp","vehicle_seat","vehicle_entity","invisible"],NoAI:1b,Invulnerable:1b,id:"minecraft:horse",Team:"not_collision",DeathLootTable:"vehicles:air",Tame:1b,Health:1.0f,Attributes:[{Name:generic.max_health,Base:1.0}],Silent:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}]}
execute if score stempt int matches 2 run summon area_effect_cloud 0 11 0 {Duration:2147483647,Tags:["stmp1","vehicle_cube","stmp","upd_aec","vehicle_entity"],Passengers:[{Tags:["stmp","stmp2","vehicle_dsp","vehicle_seat","vehicle_entity"],NoAI:1b,Invulnerable:1b,id:"minecraft:minecart",Team:"not_collision",Silent:1b}]}
execute if score stempt int matches 3 run summon area_effect_cloud 0 11 0 {Duration:2147483647,Tags:["stmp1","vehicle_cube","stmp","upd_aec","vehicle_entity"],Passengers:[{Tags:["stmp","stmp2","vehicle_dsp","vehicle_entity"],NoAI:1b,Invulnerable:1b,id:"minecraft:chest_minecart",Team:"not_collision",Silent:1b}]}
execute if score stempt int matches 4 run summon area_effect_cloud 0 11 0 {Duration:2147483647,Tags:["stmp1","vehicle_cube","stmp","upd_aec","vehicle_entity"],Passengers:[{Tags:["stmp","stmp2","vehicle_dsp","vehicle_entity"],NoAI:1b,Invulnerable:1b,id:"minecraft:shulker",Silent:1b}]}
execute if score stempt int matches 5 run summon area_effect_cloud 0 11 0 {Duration:2147483647,Tags:["stmp1","vehicle_cube","stmp","upd_aec","vehicle_entity"],Passengers:[{Tags:["stmp","stmp2","vehicle_dsp","vehicle_entity","invisible"],NoAI:1b,Invulnerable:1b,id:"minecraft:villager",Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_helmet",Count:1b}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}],Attributes:[{Base:1024.0d,Name:"minecraft:generic.max_health"}],Health:1024.0d,Team:"not_collision"}]}

scoreboard players add #cpid vehicle_cpid 1

execute as @e[tag=stmp1,limit=1] run function vehicles:spawn/set_1
execute as @e[tag=stmp2,limit=1] run function vehicles:spawn/set_2

scoreboard players remove sloop int 1
data remove storage math:io temp[0]
execute if score sloop int matches 1.. run function vehicles:spawn/summon_loop
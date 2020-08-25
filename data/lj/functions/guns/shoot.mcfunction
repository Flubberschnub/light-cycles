##shoot

##range
scoreboard players add @s shootRange 1

##actual shooty part

##hitshot tag
execute unless block ~ ~ ~ #lj:passthrough run tag @s add hitshot
execute if entity @e[type=#lj:livingthings,distance=..1.5,tag=!matchedid] run tag @s add hitshot
execute if score @s shootRange matches 80.. run tag @s add hitshot

##particles
execute unless score @s circuitcolor matches 2.. if score @s shootRange matches 10 run function lj:guns/summonbullet
execute unless score @s circuitcolor matches 2.. if score @s shootRange matches 30 run function lj:guns/summonbullet
execute unless score @s circuitcolor matches 2.. if score @s shootRange matches 50 run function lj:guns/summonbullet
execute unless score @s circuitcolor matches 2.. if score @s shootRange matches 70 run function lj:guns/summonbullet


execute if score @s circuitcolor matches 2 if score @s shootRange matches 0..10 run particle minecraft:dust 0.20 0.50 1.00 0.10 ~ ~ ~ 0.07 .07 .07 0 40 force
execute if score @s circuitcolor matches 2 if score @s shootRange matches 20..30 run particle minecraft:dust 0.20 0.50 1.00 0.10 ~ ~ ~ 0.07 .07 .07 0 40 force
execute if score @s circuitcolor matches 2 if score @s shootRange matches 40..50 run particle minecraft:dust 0.20 0.50 1.00 0.10 ~ ~ ~ 0.07 .07 .07 0 40 force
execute if score @s circuitcolor matches 2 if score @s shootRange matches 60..70 run particle minecraft:dust 0.20 0.50 1.00 0.10 ~ ~ ~ 0.07 .07 .07 0 40 force

##recurse
execute positioned ^ ^ ^0.5 as @s[tag=!hitshot] run function lj:guns/shoot

execute as @s[tag=hitshot] run function lj:guns/hitshot

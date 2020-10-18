##tick
scoreboard players add @s rezanimate 1
execute if score @s JetType matches 4 run function lj:rez/animate/4

##color variants
execute if score @s JetType matches 5 if score @s circuitcolor matches 2 run function lj:rez/animate/color/orange/5
execute if score @s JetType matches 4 if score @s circuitcolor matches 2 run function lj:rez/animate/color/orange/4

execute if score @s JetType matches 5 if score @s circuitcolor matches 3 run function lj:rez/animate/color/green/5
execute if score @s JetType matches 4 if score @s circuitcolor matches 3 run function lj:rez/animate/color/green/4

execute if score @s rezanimate matches 31.. run tag @s remove rezzing
#execute if score @s rezanimate matches 15.. run data merge entity @s {Marker:0b,Small:1b,NoGravity:0b,Fire:-20}
execute if score @s rezanimate matches 31.. run tag @s remove airrez
execute if score @s rezanimate matches 31.. run scoreboard players reset @s rezanimate

execute as @s[tag=airrez] if score @s rezanimate matches 5.. run function lj:match/jetstand/airrez
#execute if score @s rezanimated matches 5 run function lj:match/cyclestand/animatetp

##tick
scoreboard players remove @s rezanimate 1
execute if score @s JetType matches 4 run function lj:derez/animate/4
execute if score @s JetType matches 5 run function lj:derez/animate/5

##color variants
execute if score @s JetType matches 4 if score @s circuitcolor matches 2 run function lj:derez/animate/color/orange/4
execute if score @s JetType matches 4 if score @s circuitcolor matches 3 run function lj:derez/animate/color/green/4

execute if score @s JetType matches 5 if score @s circuitcolor matches 2 run function lj:derez/animate/color/orange/5
execute if score @s JetType matches 5 if score @s circuitcolor matches 3 run function lj:derez/animate/color/green/5

execute if score @s rezanimate matches ..0 run function lj:match/jetstand/derez

##tick
scoreboard players remove @s rezanimate 1
execute if score @s JetType matches 4 run function lj:derez/animate/4

##color variants
execute if score @s JetType matches 4 if score @s circuitcolor matches 2 run function lj:derez/animate/color/orange/4

execute if score @s rezanimate matches ..0 run function lj:match/jetstand/derez

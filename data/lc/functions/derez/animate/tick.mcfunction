##tick
scoreboard players remove @s rezanimate 1
execute if score @s CycleType matches 786 run function lc:derez/animate/786
execute if score @s CycleType matches 5 run function lc:derez/animate/5
execute if score @s CycleType matches 4 run function lc:derez/animate/4
execute if score @s CycleType matches 73 run function lc:derez/animate/73

##color variants
execute if score @s CycleType matches 5 if score @s circuitcolor matches 2 run function lc:derez/animate/color/orange/5
execute if score @s CycleType matches 4 if score @s circuitcolor matches 2 run function lc:derez/animate/color/orange/4

execute if score @s CycleType matches 5 if score @s circuitcolor matches 3 run function lc:derez/animate/color/green/5
execute if score @s CycleType matches 4 if score @s circuitcolor matches 3 run function lc:derez/animate/color/green/4

execute if score @s rezanimate matches ..0 run function lc:match/cyclestand/derez

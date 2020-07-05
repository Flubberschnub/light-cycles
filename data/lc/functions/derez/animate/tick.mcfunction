##tick
scoreboard players remove @s rezanimate 1
execute if score @s CycleType matches 786 run function lc:derez/animate/786
execute if score @s rezanimate matches ..0 run function lc:match/cyclestand/derez

##tick
scoreboard players add @s rezanimate 1
execute if score @s CycleType matches 786 run function lc:rez/animate/786
execute if score @s rezanimate matches 15.. run tag @s remove rezzing
#execute if score @s rezanimate matches 15.. run data merge entity @s {Marker:0b,Small:1b,NoGravity:0b,Fire:-20}
execute if score @s rezanimate matches 15.. run scoreboard players reset @s rezanimate
#execute if score @s rezanimated matches 5 run function lc:match/cyclestand/animatetp

##rezzing
tag @s add rezzedvehicle
replaceitem entity @s weapon.mainhand air
execute if score @s CycleType matches 786 run function lc:rez/786
execute if score @s CycleType matches 5 unless score @s circuitcolor matches 2.. run function lc:rez/5
execute if score @s CycleType matches 4 unless score @s circuitcolor matches 2.. run function lc:rez/4

##color variant 2 (orange)
execute if score @s CycleType matches 5 if score @s circuitcolor matches 2 run function lc:rez/color/orange/5
execute if score @s CycleType matches 4 if score @s circuitcolor matches 2 run function lc:rez/color/orange/4

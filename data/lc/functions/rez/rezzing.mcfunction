##rezzing
tag @s add rezzedvehicle
replaceitem entity @s weapon.mainhand air
execute if score @s CycleType matches 786 run function lc:rez/786
execute if score @s CycleType matches 5 run function lc:rez/5

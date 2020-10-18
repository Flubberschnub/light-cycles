##rezzing
tag @s add rezzedvehicle
replaceitem entity @s weapon.mainhand air
execute if score @s JetType matches 4 unless score @s circuitcolor matches 2.. run function lj:rez/4

##color variant 2 (orange)
execute if score @s JetType matches 4 if score @s circuitcolor matches 2 run function lj:rez/color/orange/4
execute if score @s JetType matches 4 if score @s circuitcolor matches 3 run function lj:rez/color/green/4

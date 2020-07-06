##rezzing
tag @s add rezzedvehicle
replaceitem entity @s weapon.mainhand air
execute if score @s CycleType matches 786 at @s run function lc:rez/786
execute at @s run playsound lightcycle.rez master @a ~ ~ ~ 5 1

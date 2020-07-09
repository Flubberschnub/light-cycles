##rezzing
tag @s add rezzedvehicle
replaceitem entity @s weapon.mainhand air
execute if score @s CycleType matches 786 run function lc:rez/786
execute at @s if score @s CycleType matches 786 run playsound lightcycle.786.rez master @a ~ ~ ~ 5 1

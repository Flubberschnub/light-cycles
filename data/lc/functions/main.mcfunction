##main

##unique cycleid
execute as @a[predicate=lc:lc/holdingclosedbaton,predicate=!lc:lc/riding_cycle,tag=!rezzedvehicle] at @s run function lc:id/getuniqueid

##player cycleID
scoreboard players reset @a[tag=!rezzedvehicle] CycleID
execute as @a[predicate=lc:lc/holdingclosedbaton,tag=!rezzedvehicle] store result score @s CycleID run data get entity @s SelectedItem.tag.CycleID 1

##remove rezzedvehicle tag
execute as @a[tag=rezzedvehicle] at @s run function lc:match/player/removerezzedtag

##rez and de-rez
execute as @a[predicate=lc:lc/holdingclosedbaton,scores={clickbaton=1..},predicate=!lc:lc/riding_cycle,tag=!rezzedvehicle] at @s run function lc:rez/rezzing

##player cycleType
scoreboard players reset @a CycleType
execute as @a[predicate=lc:lc/holdingclosedbaton] store result score @s CycleType run data get entity @s SelectedItem.tag.CycleType 1

##rez animations
execute as @e[tag=rezzing,tag=cyclestand] at @s run function lc:rez/animate/tick

##rezzed cycle functions
function lc:rezzedcycle

##aec age
execute as @e[tag=cyclefacing] run data merge entity @s {Age:0}
execute as @e[tag=playerfacing] run data merge entity @s {Age:0}

##boost reset
execute as @a[scores={clickbaton=1..}] run function lc:motion/boosthold
#execute at @e[tag=cyclefacing] run particle barrier ~ ~ ~ 0 0 0 0 1
#execute at @e[tag=playerfacing] run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0 1

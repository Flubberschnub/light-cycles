##main



##player jetID
scoreboard players reset @a[tag=!rezzedvehicle,predicate=!lj:lj/holdingclosedbaton] JetID
tag @a[tag=!rezzedvehicle,predicate=!lj:lj/holdingclosedbaton] remove uniquejetid

##unique jetid
#execute as @a[predicated=!lj:lj/holdingclosedbaton,predicate=!lj:lj/riding_jet,tag=!rezzedvehicle] run tag @s remove uniquejetid
execute as @a[predicate=lj:lj/holdingclosedbaton,predicate=!lj:lj/riding_jet,tag=!rezzedvehicle,tag=!uniquejetid] run function lj:id/getuniquejetid

execute as @a[predicate=lj:lj/holdingclosedbaton,tag=!rezzedvehicle] store result score @s JetID run data get entity @s SelectedItem.tag.JetID 1



##player jetType
scoreboard players reset @a[tag=!rezzedvehicle] JetType
execute as @a[predicate=lj:lj/holdingclosedbaton,tag=!rezzedvehicle] store result score @s JetType run data get entity @s SelectedItem.tag.JetType 1

##rez animations
execute as @e[tag=rezzing,tag=jetstand] at @s run function lj:rez/animate/tick

##rezzed jet functions
function lj:rezzedjet

##aec age
execute as @e[tag=jetfacingx] run data merge entity @s {Age:0}
execute as @e[tag=playerfacingx] run data merge entity @s {Age:0}
execute as @e[tag=jetfacingy] run data merge entity @s {Age:0}
execute as @e[tag=playerfacingy] run data merge entity @s {Age:0}
execute as @e[tag=jetfacing2d] run data merge entity @s {Age:0}
execute as @e[tag=playerfacing2d] run data merge entity @s {Age:0}


#execute at @e[tag=jetfacing2d] run particle barrier ~ ~ ~ 0 0 0 0 1
#execute at @e[tag=jetstand] run particle cloud ^ ^ ^3 0 0 0 0 1
#execute at @e[tag=playerfacingx] run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0 1

##rez and de-rez
execute as @a[predicate=lj:lj/holdingclosedbaton,scores={clickbaton=1..},predicate=!lj:lj/riding_jet,tag=!rezzedvehicle] at @s rotated ~ 0 anchored feet positioned ^ ^ ^2 run function lj:rez/rezzing


##rider effects
effect give @a[predicate=lc:lc/riding_cycle] invisibility 1 0 true
effect give @a[predicate=lc:lc/riding_cycle] jump_boost 1 20 true
effect clear @a[tag=rezzedvehicle,predicate=!lc:lc/riding_cycle] invisibility
effect clear @a[tag=rezzedvehicle,predicate=!lc:lc/riding_cycle] jump_boost
#execute at @a[predicate=lc:lc/riding_cycle] run particle barrier ~ ~ ~ 0 0 0 0 1

##invisible minecart
execute as @e[type=#minecraft:minecarts,tag=!invisible_minecart] run function lc:invisicarts

##nocollide for collider
team join nocollide @e[tag=cyclecollider]

##cyclecontrols for rider
execute as @a[predicate=!lc:lc/riding_cycle] run clear @s carrot_on_a_stick{BikeControl:1}
execute as @a[predicate=!lc:lc/holdingcontrols] run clear @s carrot_on_a_stick{BikeControl:1}
execute as @a[predicate=lc:lc/riding_cycle,predicate=!lc:lc/holdingcontrols,tag=rezzedvehicle] at @s run function lc:bikecontrols/give

##motion
execute as @a at @s run function lc:match/player/move

##de-rez
execute as @e[tag=cyclecollider,nbt={HurtTime:10s}] at @s run function lc:match/cyclecollider/derez

##de-rez in water
execute as @e[tag=cyclecollider,tag=!derezzing] at @s if block ~ ~ ~ minecraft:water run function lc:match/cyclecollider/forcederez

execute as @e[tag=cyclestand,tag=derezzing] at @s run function lc:derez/animate/tick

##de-rez on get off cycle
execute as @a[predicate=lc:lc/riding_cycle,tag=derezcycle] run tag @s remove derezcycle
execute as @a[predicate=lc:lc/riding_cycle,x_rotation=60..90] run tag @s add derezcycle
execute as @a[tag=derezcycle,predicate=!lc:lc/riding_cycle] at @s run function lc:match/player/derez

##sounds
execute as @e[tag=cyclestand] at @s run function lc:sounds/cycle

##ribbon lifetimer
execute as @e[tag=lightribbon] run scoreboard players add @s ribbontimer 1
kill @e[tag=lightribbon,scores={ribbontimer=50..}]
